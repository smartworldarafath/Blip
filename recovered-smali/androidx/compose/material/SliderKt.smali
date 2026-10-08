.class public abstract Landroidx/compose/material/SliderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/Modifier;

.field public static final b:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/compose/foundation/layout/SizeKt;->o()Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 6
    .line 7
    const/high16 v2, 0x42400000    # 48.0f

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x6

    .line 19
    const/16 v3, 0x64

    .line 20
    .line 21
    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/material/SliderKt;->b:Landroidx/compose/animation/core/TweenSpec;

    .line 25
    .line 26
    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, -0x2c580438

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x4

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x2

    .line 21
    :goto_0
    or-int v1, p6, v1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move v3, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v3, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v1, v3

    .line 36
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v5, 0x100

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    move v3, v5

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x80

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v3

    .line 49
    move/from16 v8, p4

    .line 50
    .line 51
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/16 v6, 0x4000

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    move v3, v6

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/16 v3, 0x2000

    .line 62
    .line 63
    :goto_3
    or-int/2addr v1, v3

    .line 64
    and-int/lit16 v3, v1, 0x2493

    .line 65
    .line 66
    const/16 v7, 0x2492

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v11, 0x1

    .line 70
    if-eq v3, v7, :cond_4

    .line 71
    .line 72
    move v3, v11

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    move v3, v9

    .line 75
    :goto_4
    and-int/lit8 v7, v1, 0x1

    .line 76
    .line 77
    invoke-virtual {v0, v7, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_b

    .line 82
    .line 83
    and-int/lit8 v3, v1, 0x70

    .line 84
    .line 85
    if-ne v3, v4, :cond_5

    .line 86
    .line 87
    move v3, v11

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    move v3, v9

    .line 90
    :goto_5
    and-int/lit8 v4, v1, 0xe

    .line 91
    .line 92
    if-ne v4, v2, :cond_6

    .line 93
    .line 94
    move v2, v11

    .line 95
    goto :goto_6

    .line 96
    :cond_6
    move v2, v9

    .line 97
    :goto_6
    or-int/2addr v2, v3

    .line 98
    const v3, 0xe000

    .line 99
    .line 100
    .line 101
    and-int/2addr v3, v1

    .line 102
    if-ne v3, v6, :cond_7

    .line 103
    .line 104
    move v3, v11

    .line 105
    goto :goto_7

    .line 106
    :cond_7
    move v3, v9

    .line 107
    :goto_7
    or-int/2addr v2, v3

    .line 108
    and-int/lit16 v1, v1, 0x380

    .line 109
    .line 110
    if-ne v1, v5, :cond_8

    .line 111
    .line 112
    move v9, v11

    .line 113
    :cond_8
    or-int v1, v2, v9

    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-nez v1, :cond_9

    .line 120
    .line 121
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 122
    .line 123
    if-ne v2, v1, :cond_a

    .line 124
    .line 125
    :cond_9
    new-instance v5, Ltf;

    .line 126
    .line 127
    move-object v7, p0

    .line 128
    move-object v6, p1

    .line 129
    move-object v10, p2

    .line 130
    move-object v9, p3

    .line 131
    invoke-direct/range {v5 .. v10}, Ltf;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;FLandroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move-object v2, v5

    .line 138
    :cond_a
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 139
    .line 140
    invoke-static {v2, v0}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 141
    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 145
    .line 146
    .line 147
    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_c

    .line 152
    .line 153
    new-instance v5, Luf;

    .line 154
    .line 155
    move-object v6, p0

    .line 156
    move-object v7, p1

    .line 157
    move-object v8, p2

    .line 158
    move-object v9, p3

    .line 159
    move/from16 v10, p4

    .line 160
    .line 161
    move/from16 v11, p6

    .line 162
    .line 163
    invoke-direct/range {v5 .. v11}, Luf;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FI)V

    .line 164
    .line 165
    .line 166
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    :cond_c
    return-void
.end method

.method public static final b(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v7, p5

    .line 10
    .line 11
    move-object/from16 v10, p7

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x74f6dbdc

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int v0, p8, v0

    .line 31
    .line 32
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v3

    .line 44
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v3, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v3

    .line 56
    or-int/lit16 v0, v0, 0xc00

    .line 57
    .line 58
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    const/16 v3, 0x4000

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v3, 0x2000

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v3

    .line 70
    const/high16 v3, 0x30000

    .line 71
    .line 72
    or-int/2addr v0, v3

    .line 73
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    const/high16 v3, 0x100000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const/high16 v3, 0x80000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v0, v3

    .line 85
    const/high16 v3, 0xc00000

    .line 86
    .line 87
    or-int/2addr v0, v3

    .line 88
    move-object/from16 v8, p6

    .line 89
    .line 90
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    const/high16 v3, 0x4000000

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_5
    const/high16 v3, 0x2000000

    .line 100
    .line 101
    :goto_5
    or-int/2addr v0, v3

    .line 102
    const v3, 0x2492493

    .line 103
    .line 104
    .line 105
    and-int/2addr v3, v0

    .line 106
    const v5, 0x2492492

    .line 107
    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    const/4 v12, 0x1

    .line 111
    if-eq v3, v5, :cond_6

    .line 112
    .line 113
    move v3, v12

    .line 114
    goto :goto_6

    .line 115
    :cond_6
    move v3, v11

    .line 116
    :goto_6
    and-int/2addr v0, v12

    .line 117
    invoke-virtual {v10, v0, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_c

    .line 122
    .line 123
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 124
    .line 125
    .line 126
    and-int/lit8 v0, p8, 0x1

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 138
    .line 139
    .line 140
    move/from16 v3, p3

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_8
    :goto_7
    move v3, v12

    .line 144
    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 145
    .line 146
    .line 147
    const v0, -0x433420c9

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 158
    .line 159
    if-ne v0, v5, :cond_9

    .line 160
    .line 161
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_9
    move-object v13, v0

    .line 169
    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 170
    .line 171
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v7, v10}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    if-ne v6, v5, :cond_a

    .line 187
    .line 188
    sget-object v6, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 189
    .line 190
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    move-object v15, v6

    .line 194
    check-cast v15, Ljava/util/List;

    .line 195
    .line 196
    sget-object v5, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 197
    .line 198
    sget-object v5, Landroidx/compose/material/MinimumInteractiveModifier;->b:Landroidx/compose/material/MinimumInteractiveModifier;

    .line 199
    .line 200
    invoke-interface {v9, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    const/16 v20, 0x0

    .line 205
    .line 206
    const/16 v21, 0xc

    .line 207
    .line 208
    const/high16 v17, 0x41a00000    # 20.0f

    .line 209
    .line 210
    const/16 v19, 0x0

    .line 211
    .line 212
    move/from16 v18, v17

    .line 213
    .line 214
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/SizeKt;->i(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 227
    .line 228
    .line 229
    move-result-object v16

    .line 230
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    invoke-static {v1, v6, v12}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    new-instance v2, Lsf;

    .line 239
    .line 240
    move-object v12, v5

    .line 241
    move v5, v6

    .line 242
    move-object/from16 v6, p1

    .line 243
    .line 244
    invoke-direct/range {v2 .. v7}, Lsf;-><init>(ZLkotlin/ranges/ClosedFloatingPointRange;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v12, v11, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    new-instance v5, La8;

    .line 252
    .line 253
    const/4 v6, 0x1

    .line 254
    invoke-direct {v5, v1, v4, v6}, La8;-><init>(FLjava/lang/Object;I)V

    .line 255
    .line 256
    .line 257
    invoke-static {v2, v6, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v2, v3, v13}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 266
    .line 267
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 272
    .line 273
    if-ne v2, v5, :cond_b

    .line 274
    .line 275
    move v5, v6

    .line 276
    :goto_9
    move v6, v3

    .line 277
    move-object v3, v0

    .line 278
    goto :goto_a

    .line 279
    :cond_b
    move v5, v11

    .line 280
    goto :goto_9

    .line 281
    :goto_a
    new-instance v0, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;

    .line 282
    .line 283
    move-object v2, v4

    .line 284
    move v4, v1

    .line 285
    move v1, v6

    .line 286
    move-object v6, v14

    .line 287
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$slideOnKeyEvents$2;-><init>(ZLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FZLandroidx/compose/runtime/MutableState;)V

    .line 288
    .line 289
    .line 290
    move-object v8, v3

    .line 291
    move v3, v1

    .line 292
    invoke-static {v7, v0}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    new-instance v0, Landroidx/compose/material/e;

    .line 297
    .line 298
    move/from16 v2, p0

    .line 299
    .line 300
    move-object/from16 v1, p4

    .line 301
    .line 302
    move-object/from16 v4, p5

    .line 303
    .line 304
    move-object/from16 v7, p6

    .line 305
    .line 306
    move v6, v3

    .line 307
    move-object v5, v13

    .line 308
    move-object v3, v15

    .line 309
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/e;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;FLjava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLandroidx/compose/material/SliderColors;Landroidx/compose/runtime/MutableState;)V

    .line 310
    .line 311
    .line 312
    const v1, 0x7c485b8e

    .line 313
    .line 314
    .line 315
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const/16 v4, 0xc00

    .line 320
    .line 321
    const/4 v5, 0x6

    .line 322
    const/4 v1, 0x0

    .line 323
    move-object v3, v10

    .line 324
    move-object v0, v11

    .line 325
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 326
    .line 327
    .line 328
    move v4, v6

    .line 329
    goto :goto_b

    .line 330
    :cond_c
    move-object v3, v10

    .line 331
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 332
    .line 333
    .line 334
    move/from16 v4, p3

    .line 335
    .line 336
    :goto_b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    if-eqz v10, :cond_d

    .line 341
    .line 342
    new-instance v0, Lqf;

    .line 343
    .line 344
    move/from16 v1, p0

    .line 345
    .line 346
    move-object/from16 v2, p1

    .line 347
    .line 348
    move-object/from16 v5, p4

    .line 349
    .line 350
    move-object/from16 v6, p5

    .line 351
    .line 352
    move-object/from16 v7, p6

    .line 353
    .line 354
    move/from16 v8, p8

    .line 355
    .line 356
    move-object v3, v9

    .line 357
    invoke-direct/range {v0 .. v8}, Lqf;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;I)V

    .line 358
    .line 359
    .line 360
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 361
    .line 362
    :cond_d
    return-void
.end method

.method public static final c(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move/from16 v9, p4

    .line 4
    .line 5
    move-object/from16 v10, p6

    .line 6
    .line 7
    move-object/from16 v7, p7

    .line 8
    .line 9
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x641dece1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    move/from16 v1, p0

    .line 18
    .line 19
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int v0, p8, v0

    .line 29
    .line 30
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/16 v3, 0x20

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v3, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v3

    .line 42
    move-object/from16 v3, p2

    .line 43
    .line 44
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    const/16 v4, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v4, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v4

    .line 56
    move-object/from16 v4, p3

    .line 57
    .line 58
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    const/16 v5, 0x800

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v5, 0x400

    .line 68
    .line 69
    :goto_3
    or-int/2addr v0, v5

    .line 70
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    const/16 v5, 0x4000

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/16 v5, 0x2000

    .line 80
    .line 81
    :goto_4
    or-int/2addr v0, v5

    .line 82
    move-object/from16 v11, p5

    .line 83
    .line 84
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    const/high16 v5, 0x20000

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    const/high16 v5, 0x10000

    .line 94
    .line 95
    :goto_5
    or-int/2addr v0, v5

    .line 96
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_6

    .line 101
    .line 102
    const/high16 v5, 0x100000

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    const/high16 v5, 0x80000

    .line 106
    .line 107
    :goto_6
    or-int v12, v0, v5

    .line 108
    .line 109
    const v0, 0x92493

    .line 110
    .line 111
    .line 112
    and-int/2addr v0, v12

    .line 113
    const v5, 0x92492

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x0

    .line 117
    if-eq v0, v5, :cond_7

    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    goto :goto_7

    .line 121
    :cond_7
    move v0, v6

    .line 122
    :goto_7
    and-int/lit8 v5, v12, 0x1

    .line 123
    .line 124
    invoke-virtual {v7, v5, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    sget-object v0, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    invoke-interface {v10, v0}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 137
    .line 138
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v7}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-static {v7, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 155
    .line 156
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 160
    .line 161
    .line 162
    iget-boolean v14, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 163
    .line 164
    if-eqz v14, :cond_8

    .line 165
    .line 166
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 167
    .line 168
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 169
    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 173
    .line 174
    .line 175
    :goto_8
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 176
    .line 177
    invoke-static {v7, v5, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 181
    .line 182
    invoke-static {v7, v8, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    iget-boolean v5, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 186
    .line 187
    if-nez v5, :cond_9

    .line 188
    .line 189
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-nez v5, :cond_a

    .line 202
    .line 203
    :cond_9
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 204
    .line 205
    invoke-static {v6, v7, v6, v5}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 209
    .line 210
    invoke-static {v7, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 214
    .line 215
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 220
    .line 221
    const/high16 v5, 0x40800000    # 4.0f

    .line 222
    .line 223
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    const/high16 v5, 0x41200000    # 10.0f

    .line 228
    .line 229
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    invoke-interface {v0, v9}, Landroidx/compose/ui/unit/Density;->X(F)F

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    mul-float v14, v0, v2

    .line 238
    .line 239
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 240
    .line 241
    const/high16 v8, 0x3f800000    # 1.0f

    .line 242
    .line 243
    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    shr-int/lit8 v15, v12, 0x6

    .line 248
    .line 249
    and-int/lit8 v8, v15, 0x70

    .line 250
    .line 251
    or-int/lit16 v8, v8, 0xc06

    .line 252
    .line 253
    shl-int/lit8 v13, v12, 0x6

    .line 254
    .line 255
    and-int/lit16 v13, v13, 0x380

    .line 256
    .line 257
    or-int/2addr v8, v13

    .line 258
    shl-int/lit8 v13, v12, 0x9

    .line 259
    .line 260
    const v16, 0xe000

    .line 261
    .line 262
    .line 263
    and-int v17, v13, v16

    .line 264
    .line 265
    or-int v8, v8, v17

    .line 266
    .line 267
    const/high16 v17, 0x70000

    .line 268
    .line 269
    and-int v13, v13, v17

    .line 270
    .line 271
    or-int/2addr v8, v13

    .line 272
    move/from16 v18, v2

    .line 273
    .line 274
    move v2, v1

    .line 275
    move-object v1, v4

    .line 276
    move-object v4, v3

    .line 277
    move/from16 v3, v18

    .line 278
    .line 279
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 280
    .line 281
    .line 282
    and-int/lit16 v0, v15, 0x1c00

    .line 283
    .line 284
    const v1, 0x180036

    .line 285
    .line 286
    .line 287
    or-int/2addr v0, v1

    .line 288
    shl-int/lit8 v1, v12, 0x3

    .line 289
    .line 290
    and-int v1, v1, v16

    .line 291
    .line 292
    or-int/2addr v0, v1

    .line 293
    shl-int/lit8 v1, v12, 0xf

    .line 294
    .line 295
    and-int v1, v1, v17

    .line 296
    .line 297
    or-int v5, v0, v1

    .line 298
    .line 299
    move/from16 v3, p0

    .line 300
    .line 301
    move-object/from16 v2, p3

    .line 302
    .line 303
    move-object v4, v7

    .line 304
    move-object v1, v11

    .line 305
    move v0, v14

    .line 306
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/SliderKt;->d(FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZLandroidx/compose/runtime/Composer;I)V

    .line 307
    .line 308
    .line 309
    const/4 v0, 0x1

    .line 310
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 311
    .line 312
    .line 313
    goto :goto_9

    .line 314
    :cond_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 315
    .line 316
    .line 317
    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    if-eqz v11, :cond_c

    .line 322
    .line 323
    new-instance v0, Lvf;

    .line 324
    .line 325
    move/from16 v1, p0

    .line 326
    .line 327
    move/from16 v2, p1

    .line 328
    .line 329
    move-object/from16 v3, p2

    .line 330
    .line 331
    move-object/from16 v4, p3

    .line 332
    .line 333
    move-object/from16 v6, p5

    .line 334
    .line 335
    move/from16 v8, p8

    .line 336
    .line 337
    move v5, v9

    .line 338
    move-object v7, v10

    .line 339
    invoke-direct/range {v0 .. v8}, Lvf;-><init>(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;I)V

    .line 340
    .line 341
    .line 342
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 343
    .line 344
    :cond_c
    return-void
.end method

.method public static final d(FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZLandroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move/from16 v5, p5

    .line 8
    .line 9
    move-object/from16 v0, p4

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v1, 0x19909aaa

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v1, v5, 0x6

    .line 20
    .line 21
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x2

    .line 34
    :goto_0
    or-int/2addr v1, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v1, v5

    .line 37
    :goto_1
    and-int/lit8 v8, v5, 0x30

    .line 38
    .line 39
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 40
    .line 41
    if-nez v8, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    const/16 v8, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v8, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v1, v8

    .line 55
    :cond_3
    and-int/lit16 v8, v5, 0x180

    .line 56
    .line 57
    move/from16 v10, p0

    .line 58
    .line 59
    if-nez v8, :cond_5

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_4

    .line 66
    .line 67
    const/16 v8, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v8, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v8

    .line 73
    :cond_5
    and-int/lit16 v8, v5, 0xc00

    .line 74
    .line 75
    const/16 v15, 0x800

    .line 76
    .line 77
    if-nez v8, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_6

    .line 84
    .line 85
    move v8, v15

    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v8, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v1, v8

    .line 90
    :cond_7
    and-int/lit16 v8, v5, 0x6000

    .line 91
    .line 92
    if-nez v8, :cond_9

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_8

    .line 99
    .line 100
    const/16 v8, 0x4000

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    const/16 v8, 0x2000

    .line 104
    .line 105
    :goto_5
    or-int/2addr v1, v8

    .line 106
    :cond_9
    const/high16 v8, 0x30000

    .line 107
    .line 108
    and-int/2addr v8, v5

    .line 109
    if-nez v8, :cond_b

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_a

    .line 116
    .line 117
    const/high16 v8, 0x20000

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/high16 v8, 0x10000

    .line 121
    .line 122
    :goto_6
    or-int/2addr v1, v8

    .line 123
    :cond_b
    const/high16 v8, 0x180000

    .line 124
    .line 125
    and-int/2addr v8, v5

    .line 126
    const/high16 v11, 0x41a00000    # 20.0f

    .line 127
    .line 128
    if-nez v8, :cond_d

    .line 129
    .line 130
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-eqz v8, :cond_c

    .line 135
    .line 136
    const/high16 v8, 0x100000

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    const/high16 v8, 0x80000

    .line 140
    .line 141
    :goto_7
    or-int/2addr v1, v8

    .line 142
    :cond_d
    const v8, 0x92493

    .line 143
    .line 144
    .line 145
    and-int/2addr v8, v1

    .line 146
    const v12, 0x92492

    .line 147
    .line 148
    .line 149
    const/4 v13, 0x1

    .line 150
    const/4 v14, 0x0

    .line 151
    if-eq v8, v12, :cond_e

    .line 152
    .line 153
    move v8, v13

    .line 154
    goto :goto_8

    .line 155
    :cond_e
    move v8, v14

    .line 156
    :goto_8
    and-int/lit8 v12, v1, 0x1

    .line 157
    .line 158
    invoke-virtual {v0, v12, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_19

    .line 163
    .line 164
    move v8, v13

    .line 165
    const/4 v13, 0x0

    .line 166
    move v12, v14

    .line 167
    const/16 v14, 0xe

    .line 168
    .line 169
    move/from16 v16, v11

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    move/from16 v17, v12

    .line 173
    .line 174
    const/4 v12, 0x0

    .line 175
    move/from16 v8, v16

    .line 176
    .line 177
    move/from16 v6, v17

    .line 178
    .line 179
    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    .line 184
    .line 185
    invoke-virtual {v7, v11, v10}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 190
    .line 191
    invoke-static {v10, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    invoke-static {v0}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    invoke-static {v0, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 208
    .line 209
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 213
    .line 214
    .line 215
    iget-boolean v13, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 216
    .line 217
    if-eqz v13, :cond_f

    .line 218
    .line 219
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 220
    .line 221
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 222
    .line 223
    .line 224
    goto :goto_9

    .line 225
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 226
    .line 227
    .line 228
    :goto_9
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 229
    .line 230
    invoke-static {v0, v10, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 234
    .line 235
    invoke-static {v0, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 236
    .line 237
    .line 238
    iget-boolean v10, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 239
    .line 240
    if-nez v10, :cond_10

    .line 241
    .line 242
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-nez v10, :cond_11

    .line 255
    .line 256
    :cond_10
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 257
    .line 258
    invoke-static {v11, v0, v11, v10}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 259
    .line 260
    .line 261
    :cond_11
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 262
    .line 263
    invoke-static {v0, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 271
    .line 272
    if-ne v7, v10, :cond_12

    .line 273
    .line 274
    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 275
    .line 276
    invoke-direct {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_12
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 283
    .line 284
    and-int/lit16 v1, v1, 0x1c00

    .line 285
    .line 286
    if-ne v1, v15, :cond_13

    .line 287
    .line 288
    const/4 v13, 0x1

    .line 289
    goto :goto_a

    .line 290
    :cond_13
    move v13, v6

    .line 291
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    if-nez v13, :cond_14

    .line 296
    .line 297
    if-ne v1, v10, :cond_15

    .line 298
    .line 299
    :cond_14
    new-instance v1, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;

    .line 300
    .line 301
    const/4 v10, 0x0

    .line 302
    invoke-direct {v1, v2, v7, v10}, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_15
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 309
    .line 310
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_16

    .line 318
    .line 319
    const/high16 v1, 0x40c00000    # 6.0f

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_16
    const/high16 v1, 0x3f800000    # 1.0f

    .line 323
    .line 324
    :goto_b
    invoke-static {v9, v8, v8}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    const-wide/16 v8, 0x0

    .line 329
    .line 330
    const/4 v10, 0x4

    .line 331
    invoke-static {v10, v8, v9, v6}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    invoke-static {v7, v2, v8}, Landroidx/compose/foundation/IndicationKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-static {v7, v2}, Landroidx/compose/foundation/HoverableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    if-eqz v4, :cond_17

    .line 344
    .line 345
    :goto_c
    move v9, v1

    .line 346
    goto :goto_d

    .line 347
    :cond_17
    const/4 v1, 0x0

    .line 348
    goto :goto_c

    .line 349
    :goto_d
    sget-object v10, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 350
    .line 351
    const-wide/16 v11, 0x0

    .line 352
    .line 353
    const/16 v13, 0x18

    .line 354
    .line 355
    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    move-object v7, v3

    .line 360
    check-cast v7, Landroidx/compose/material/DefaultSliderColors;

    .line 361
    .line 362
    const v8, -0x67579f35

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 366
    .line 367
    .line 368
    if-eqz v4, :cond_18

    .line 369
    .line 370
    iget-wide v7, v7, Landroidx/compose/material/DefaultSliderColors;->a:J

    .line 371
    .line 372
    goto :goto_e

    .line 373
    :cond_18
    iget-wide v7, v7, Landroidx/compose/material/DefaultSliderColors;->b:J

    .line 374
    .line 375
    :goto_e
    new-instance v9, Landroidx/compose/ui/graphics/Color;

    .line 376
    .line 377
    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 378
    .line 379
    .line 380
    invoke-static {v9, v0}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    check-cast v6, Landroidx/compose/ui/graphics/Color;

    .line 392
    .line 393
    iget-wide v6, v6, Landroidx/compose/ui/graphics/Color;->a:J

    .line 394
    .line 395
    invoke-static {v1, v6, v7, v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 400
    .line 401
    .line 402
    const/4 v8, 0x1

    .line 403
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 404
    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 408
    .line 409
    .line 410
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    if-eqz v6, :cond_1a

    .line 415
    .line 416
    new-instance v0, Lnf;

    .line 417
    .line 418
    move/from16 v1, p0

    .line 419
    .line 420
    invoke-direct/range {v0 .. v5}, Lnf;-><init>(FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZI)V

    .line 421
    .line 422
    .line 423
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 424
    .line 425
    :cond_1a
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    move/from16 v0, p8

    .line 10
    .line 11
    move-object/from16 v13, p7

    .line 12
    .line 13
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v4, 0x6d4348a2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v4, v0, 0x6

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    const/4 v4, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v4, 0x2

    .line 34
    :goto_0
    or-int/2addr v4, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v0

    .line 37
    :goto_1
    and-int/lit8 v5, v0, 0x30

    .line 38
    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    const/16 v5, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v5, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v4, v5

    .line 53
    :cond_3
    and-int/lit16 v5, v0, 0x180

    .line 54
    .line 55
    if-nez v5, :cond_5

    .line 56
    .line 57
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    const/16 v5, 0x100

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v5, 0x80

    .line 67
    .line 68
    :goto_3
    or-int/2addr v4, v5

    .line 69
    :cond_5
    and-int/lit16 v5, v0, 0xc00

    .line 70
    .line 71
    if-nez v5, :cond_7

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_6

    .line 79
    .line 80
    const/16 v5, 0x800

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    const/16 v5, 0x400

    .line 84
    .line 85
    :goto_4
    or-int/2addr v4, v5

    .line 86
    :cond_7
    and-int/lit16 v5, v0, 0x6000

    .line 87
    .line 88
    move/from16 v8, p3

    .line 89
    .line 90
    if-nez v5, :cond_9

    .line 91
    .line 92
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    const/16 v5, 0x4000

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_8
    const/16 v5, 0x2000

    .line 102
    .line 103
    :goto_5
    or-int/2addr v4, v5

    .line 104
    :cond_9
    const/high16 v5, 0x30000

    .line 105
    .line 106
    and-int/2addr v5, v0

    .line 107
    if-nez v5, :cond_b

    .line 108
    .line 109
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_a

    .line 114
    .line 115
    const/high16 v5, 0x20000

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_a
    const/high16 v5, 0x10000

    .line 119
    .line 120
    :goto_6
    or-int/2addr v4, v5

    .line 121
    :cond_b
    const/high16 v5, 0x180000

    .line 122
    .line 123
    and-int/2addr v5, v0

    .line 124
    const/high16 v9, 0x100000

    .line 125
    .line 126
    if-nez v5, :cond_d

    .line 127
    .line 128
    move/from16 v5, p5

    .line 129
    .line 130
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_c

    .line 135
    .line 136
    move v11, v9

    .line 137
    goto :goto_7

    .line 138
    :cond_c
    const/high16 v11, 0x80000

    .line 139
    .line 140
    :goto_7
    or-int/2addr v4, v11

    .line 141
    goto :goto_8

    .line 142
    :cond_d
    move/from16 v5, p5

    .line 143
    .line 144
    :goto_8
    const/high16 v11, 0xc00000

    .line 145
    .line 146
    and-int/2addr v11, v0

    .line 147
    if-nez v11, :cond_f

    .line 148
    .line 149
    move/from16 v11, p6

    .line 150
    .line 151
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-eqz v14, :cond_e

    .line 156
    .line 157
    const/high16 v14, 0x800000

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_e
    const/high16 v14, 0x400000

    .line 161
    .line 162
    :goto_9
    or-int/2addr v4, v14

    .line 163
    :goto_a
    move v14, v4

    .line 164
    goto :goto_b

    .line 165
    :cond_f
    move/from16 v11, p6

    .line 166
    .line 167
    goto :goto_a

    .line 168
    :goto_b
    const v4, 0x492493

    .line 169
    .line 170
    .line 171
    and-int/2addr v4, v14

    .line 172
    const v15, 0x492492

    .line 173
    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    const/4 v7, 0x1

    .line 177
    if-eq v4, v15, :cond_10

    .line 178
    .line 179
    move v4, v7

    .line 180
    goto :goto_c

    .line 181
    :cond_10
    move v4, v6

    .line 182
    :goto_c
    and-int/lit8 v15, v14, 0x1

    .line 183
    .line 184
    invoke-virtual {v13, v15, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_17

    .line 189
    .line 190
    move-object v4, v2

    .line 191
    check-cast v4, Landroidx/compose/material/DefaultSliderColors;

    .line 192
    .line 193
    invoke-virtual {v4, v3, v6, v13}, Landroidx/compose/material/DefaultSliderColors;->b(ZZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-virtual {v4, v3, v7, v13}, Landroidx/compose/material/DefaultSliderColors;->b(ZZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    invoke-virtual {v4, v3, v6, v13}, Landroidx/compose/material/DefaultSliderColors;->a(ZZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    invoke-virtual {v4, v3, v7, v13}, Landroidx/compose/material/DefaultSliderColors;->a(ZZLandroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    const/high16 v16, 0x380000

    .line 210
    .line 211
    and-int v6, v14, v16

    .line 212
    .line 213
    if-ne v6, v9, :cond_11

    .line 214
    .line 215
    move v6, v7

    .line 216
    goto :goto_d

    .line 217
    :cond_11
    const/4 v6, 0x0

    .line 218
    :goto_d
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    or-int/2addr v6, v9

    .line 223
    const/high16 v9, 0x1c00000

    .line 224
    .line 225
    and-int/2addr v9, v14

    .line 226
    const/high16 v7, 0x800000

    .line 227
    .line 228
    if-ne v9, v7, :cond_12

    .line 229
    .line 230
    const/4 v7, 0x1

    .line 231
    goto :goto_e

    .line 232
    :cond_12
    const/4 v7, 0x0

    .line 233
    :goto_e
    or-int/2addr v6, v7

    .line 234
    const v7, 0xe000

    .line 235
    .line 236
    .line 237
    and-int/2addr v7, v14

    .line 238
    const/16 v9, 0x4000

    .line 239
    .line 240
    if-ne v7, v9, :cond_13

    .line 241
    .line 242
    const/4 v7, 0x1

    .line 243
    goto :goto_f

    .line 244
    :cond_13
    const/4 v7, 0x0

    .line 245
    :goto_f
    or-int/2addr v6, v7

    .line 246
    and-int/lit16 v7, v14, 0x1c00

    .line 247
    .line 248
    const/16 v9, 0x800

    .line 249
    .line 250
    if-ne v7, v9, :cond_14

    .line 251
    .line 252
    const/16 v16, 0x1

    .line 253
    .line 254
    goto :goto_10

    .line 255
    :cond_14
    const/16 v16, 0x0

    .line 256
    .line 257
    :goto_10
    or-int v6, v6, v16

    .line 258
    .line 259
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    or-int/2addr v6, v7

    .line 264
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    or-int/2addr v6, v7

    .line 269
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    or-int/2addr v6, v7

    .line 274
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    or-int/2addr v6, v7

    .line 279
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    if-nez v6, :cond_15

    .line 284
    .line 285
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 286
    .line 287
    if-ne v7, v6, :cond_16

    .line 288
    .line 289
    :cond_15
    move-object v9, v12

    .line 290
    move-object v12, v4

    .line 291
    new-instance v4, Lof;

    .line 292
    .line 293
    move/from16 v7, p6

    .line 294
    .line 295
    move-object v6, v15

    .line 296
    invoke-direct/range {v4 .. v12}, Lof;-><init>(FLandroidx/compose/runtime/MutableState;FFLandroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    move-object v7, v4

    .line 303
    :cond_16
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 304
    .line 305
    and-int/lit8 v4, v14, 0xe

    .line 306
    .line 307
    invoke-static {v4, v13, v1, v7}, Landroidx/compose/foundation/CanvasKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 308
    .line 309
    .line 310
    goto :goto_11

    .line 311
    :cond_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 312
    .line 313
    .line 314
    :goto_11
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    if-eqz v9, :cond_18

    .line 319
    .line 320
    new-instance v0, Lpf;

    .line 321
    .line 322
    move/from16 v4, p3

    .line 323
    .line 324
    move-object/from16 v5, p4

    .line 325
    .line 326
    move/from16 v6, p5

    .line 327
    .line 328
    move/from16 v7, p6

    .line 329
    .line 330
    move/from16 v8, p8

    .line 331
    .line 332
    invoke-direct/range {v0 .. v8}, Lpf;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFLjava/util/List;FFI)V

    .line 333
    .line 334
    .line 335
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 336
    .line 337
    :cond_18
    return-void
.end method
