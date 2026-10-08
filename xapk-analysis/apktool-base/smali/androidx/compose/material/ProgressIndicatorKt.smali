.class public abstract Landroidx/compose/material/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    const v1, 0x3e4ccccd    # 0.2f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const v3, 0x3f4ccccd    # 0.8f

    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 16
    .line 17
    const v3, 0x3ecccccd    # 0.4f

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v3, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 24
    .line 25
    const v5, 0x3f266666    # 0.65f

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v2, v2, v5, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 32
    .line 33
    const v5, 0x3dcccccd    # 0.1f

    .line 34
    .line 35
    .line 36
    const v6, 0x3ee66666    # 0.45f

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v5, v2, v6, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 43
    .line 44
    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 48
    .line 49
    return-void
.end method

.method public static final a(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p8

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v2, 0x681b4850

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x2

    .line 22
    :goto_0
    or-int v2, p9, v2

    .line 23
    .line 24
    or-int/lit16 v2, v2, 0x6080

    .line 25
    .line 26
    move/from16 v6, p7

    .line 27
    .line 28
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/high16 v3, 0x20000

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/high16 v3, 0x10000

    .line 38
    .line 39
    :goto_1
    or-int/2addr v2, v3

    .line 40
    const v3, 0x12493

    .line 41
    .line 42
    .line 43
    and-int/2addr v3, v2

    .line 44
    const v4, 0x12492

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    const/4 v10, 0x0

    .line 49
    if-eq v3, v4, :cond_2

    .line 50
    .line 51
    move v3, v9

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v3, v10

    .line 54
    :goto_2
    and-int/2addr v2, v9

    .line 55
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_b

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 62
    .line 63
    .line 64
    and-int/lit8 v2, p9, 0x1

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 76
    .line 77
    .line 78
    move-wide/from16 v11, p2

    .line 79
    .line 80
    move-wide/from16 v13, p5

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    :goto_3
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->e()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->g:J

    .line 92
    .line 93
    move-wide v11, v2

    .line 94
    move-wide v13, v4

    .line 95
    :goto_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 96
    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    cmpg-float v3, v1, v2

    .line 100
    .line 101
    if-gez v3, :cond_5

    .line 102
    .line 103
    move v3, v2

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move v3, v1

    .line 106
    :goto_5
    const/high16 v15, 0x3f800000    # 1.0f

    .line 107
    .line 108
    cmpl-float v4, v3, v15

    .line 109
    .line 110
    if-lez v4, :cond_6

    .line 111
    .line 112
    move v3, v15

    .line 113
    :cond_6
    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 120
    .line 121
    move v5, v3

    .line 122
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 123
    .line 124
    move/from16 v7, p4

    .line 125
    .line 126
    invoke-interface {v4, v7}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/4 v7, 0x0

    .line 131
    const/16 v8, 0x1a

    .line 132
    .line 133
    move/from16 v16, v5

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 137
    .line 138
    .line 139
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_7

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_7
    const/4 v4, 0x0

    .line 151
    :goto_6
    if-eqz v4, :cond_8

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto :goto_7

    .line 158
    :cond_8
    move v4, v2

    .line 159
    :goto_7
    invoke-static {v2, v15}, Lkotlin/ranges/RangesKt;->g(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v5, La8;

    .line 164
    .line 165
    invoke-direct {v5, v4, v2, v9}, La8;-><init>(FLjava/lang/Object;I)V

    .line 166
    .line 167
    .line 168
    move-object/from16 v2, p1

    .line 169
    .line 170
    invoke-static {v2, v9, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const/high16 v5, 0x42200000    # 40.0f

    .line 175
    .line 176
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    move/from16 v5, v16

    .line 181
    .line 182
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    or-int/2addr v6, v7

    .line 191
    invoke-virtual {v0, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    or-int/2addr v6, v7

    .line 196
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    if-nez v6, :cond_9

    .line 201
    .line 202
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 203
    .line 204
    if-ne v7, v6, :cond_a

    .line 205
    .line 206
    :cond_9
    move-wide/from16 v16, v11

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_a
    move-wide/from16 v16, v11

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :goto_8
    new-instance v11, Llb;

    .line 213
    .line 214
    move-object v15, v3

    .line 215
    move v12, v5

    .line 216
    invoke-direct/range {v11 .. v17}, Llb;-><init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    move-object v7, v11

    .line 223
    :goto_9
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 224
    .line 225
    invoke-static {v10, v0, v4, v7}, Landroidx/compose/foundation/CanvasKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 226
    .line 227
    .line 228
    move-wide v6, v13

    .line 229
    move-wide/from16 v3, v16

    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_b
    move-object/from16 v2, p1

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 235
    .line 236
    .line 237
    move-wide/from16 v3, p2

    .line 238
    .line 239
    move-wide/from16 v6, p5

    .line 240
    .line 241
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    if-eqz v10, :cond_c

    .line 246
    .line 247
    new-instance v0, Lce;

    .line 248
    .line 249
    move/from16 v5, p4

    .line 250
    .line 251
    move/from16 v8, p7

    .line 252
    .line 253
    move/from16 v9, p9

    .line 254
    .line 255
    invoke-direct/range {v0 .. v9}, Lce;-><init>(FLandroidx/compose/ui/Modifier;JFJII)V

    .line 256
    .line 257
    .line 258
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 259
    .line 260
    :cond_c
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 30

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    move-object/from16 v15, p7

    .line 4
    .line 5
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x42b466e0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, p9, 0x1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v2, v8, 0x6

    .line 19
    .line 20
    move v3, v2

    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v2, v8, 0x6

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    move-object/from16 v2, p0

    .line 29
    .line 30
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v3, v1

    .line 39
    :goto_0
    or-int/2addr v3, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object/from16 v2, p0

    .line 42
    .line 43
    move v3, v8

    .line 44
    :goto_1
    and-int/lit8 v4, p9, 0x2

    .line 45
    .line 46
    move-wide/from16 v6, p1

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    invoke-virtual {v15, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    const/16 v4, 0x20

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/16 v4, 0x10

    .line 60
    .line 61
    :goto_2
    or-int/2addr v3, v4

    .line 62
    and-int/lit8 v4, p9, 0x4

    .line 63
    .line 64
    const/16 v9, 0x100

    .line 65
    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    or-int/lit16 v3, v3, 0x180

    .line 69
    .line 70
    :cond_4
    move/from16 v10, p3

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    and-int/lit16 v10, v8, 0x180

    .line 74
    .line 75
    if-nez v10, :cond_4

    .line 76
    .line 77
    move/from16 v10, p3

    .line 78
    .line 79
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    if-eqz v11, :cond_6

    .line 84
    .line 85
    move v11, v9

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    const/16 v11, 0x80

    .line 88
    .line 89
    :goto_3
    or-int/2addr v3, v11

    .line 90
    :goto_4
    or-int/lit16 v3, v3, 0xc00

    .line 91
    .line 92
    and-int/lit8 v11, p9, 0x10

    .line 93
    .line 94
    if-nez v11, :cond_7

    .line 95
    .line 96
    move/from16 v11, p6

    .line 97
    .line 98
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v12, :cond_8

    .line 103
    .line 104
    const/16 v12, 0x4000

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_7
    move/from16 v11, p6

    .line 108
    .line 109
    :cond_8
    const/16 v12, 0x2000

    .line 110
    .line 111
    :goto_5
    or-int/2addr v3, v12

    .line 112
    and-int/lit16 v12, v3, 0x2493

    .line 113
    .line 114
    const/16 v13, 0x2492

    .line 115
    .line 116
    const/4 v14, 0x0

    .line 117
    if-eq v12, v13, :cond_9

    .line 118
    .line 119
    const/4 v12, 0x1

    .line 120
    goto :goto_6

    .line 121
    :cond_9
    move v12, v14

    .line 122
    :goto_6
    and-int/lit8 v13, v3, 0x1

    .line 123
    .line 124
    invoke-virtual {v15, v13, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_1a

    .line 129
    .line 130
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 131
    .line 132
    .line 133
    and-int/lit8 v12, v8, 0x1

    .line 134
    .line 135
    const v13, -0xe001

    .line 136
    .line 137
    .line 138
    if-eqz v12, :cond_d

    .line 139
    .line 140
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-eqz v12, :cond_a

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 148
    .line 149
    .line 150
    and-int/lit8 v0, p9, 0x2

    .line 151
    .line 152
    if-eqz v0, :cond_b

    .line 153
    .line 154
    and-int/lit8 v3, v3, -0x71

    .line 155
    .line 156
    :cond_b
    and-int/lit8 v0, p9, 0x10

    .line 157
    .line 158
    if-eqz v0, :cond_c

    .line 159
    .line 160
    and-int/2addr v3, v13

    .line 161
    :cond_c
    move-object v0, v2

    .line 162
    move v2, v10

    .line 163
    move v10, v3

    .line 164
    move-wide/from16 v3, p4

    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_d
    :goto_7
    if-eqz v0, :cond_e

    .line 168
    .line 169
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_e
    move-object v0, v2

    .line 173
    :goto_8
    and-int/lit8 v2, p9, 0x2

    .line 174
    .line 175
    if-eqz v2, :cond_f

    .line 176
    .line 177
    invoke-static {v15}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->e()J

    .line 182
    .line 183
    .line 184
    move-result-wide v6

    .line 185
    and-int/lit8 v3, v3, -0x71

    .line 186
    .line 187
    :cond_f
    if-eqz v4, :cond_10

    .line 188
    .line 189
    const/high16 v2, 0x40800000    # 4.0f

    .line 190
    .line 191
    move v10, v2

    .line 192
    :cond_10
    sget-wide v16, Landroidx/compose/ui/graphics/Color;->g:J

    .line 193
    .line 194
    and-int/lit8 v2, p9, 0x10

    .line 195
    .line 196
    if-eqz v2, :cond_11

    .line 197
    .line 198
    and-int/2addr v3, v13

    .line 199
    move v11, v1

    .line 200
    :cond_11
    move v2, v10

    .line 201
    move v10, v3

    .line 202
    move-wide/from16 v3, v16

    .line 203
    .line 204
    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 205
    .line 206
    .line 207
    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 208
    .line 209
    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    check-cast v12, Landroidx/compose/ui/unit/Density;

    .line 214
    .line 215
    new-instance v19, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 216
    .line 217
    invoke-interface {v12, v2}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    const/4 v13, 0x0

    .line 222
    const/16 v16, 0x1a

    .line 223
    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    move/from16 p3, v11

    .line 227
    .line 228
    move/from16 p1, v12

    .line 229
    .line 230
    move/from16 p4, v13

    .line 231
    .line 232
    move/from16 p5, v16

    .line 233
    .line 234
    move/from16 p2, v17

    .line 235
    .line 236
    move-object/from16 p0, v19

    .line 237
    .line 238
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 239
    .line 240
    .line 241
    move/from16 v27, p3

    .line 242
    .line 243
    move v11, v9

    .line 244
    invoke-static {v15}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    move v12, v10

    .line 249
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    const/4 v13, 0x5

    .line 254
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 259
    .line 260
    const/16 v11, 0x1a04

    .line 261
    .line 262
    invoke-static {v11, v14, v5, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    const/4 v1, 0x6

    .line 267
    invoke-static {v11, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    const v16, 0x81b8

    .line 272
    .line 273
    .line 274
    const/16 v17, 0x10

    .line 275
    .line 276
    move/from16 v21, v12

    .line 277
    .line 278
    sget-object v12, Landroidx/compose/animation/core/VectorConvertersKt;->b:Landroidx/compose/animation/core/TwoWayConverter;

    .line 279
    .line 280
    move/from16 v22, v14

    .line 281
    .line 282
    const/4 v14, 0x0

    .line 283
    move-object v1, v13

    .line 284
    move-object v13, v11

    .line 285
    move-object v11, v1

    .line 286
    move-object/from16 v29, v19

    .line 287
    .line 288
    move/from16 v28, v21

    .line 289
    .line 290
    move/from16 v1, v22

    .line 291
    .line 292
    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/core/InfiniteTransitionKt;->b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    const/16 v11, 0x534

    .line 297
    .line 298
    const/4 v12, 0x2

    .line 299
    invoke-static {v11, v1, v5, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    const/4 v11, 0x6

    .line 304
    invoke-static {v5, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    const/16 v12, 0x8

    .line 309
    .line 310
    const/4 v13, 0x0

    .line 311
    const/high16 v14, 0x438f0000    # 286.0f

    .line 312
    .line 313
    const/16 v16, 0x11b8

    .line 314
    .line 315
    move-object/from16 p3, v5

    .line 316
    .line 317
    move-object/from16 p0, v9

    .line 318
    .line 319
    move/from16 p6, v12

    .line 320
    .line 321
    move/from16 p1, v13

    .line 322
    .line 323
    move/from16 p2, v14

    .line 324
    .line 325
    move-object/from16 p4, v15

    .line 326
    .line 327
    move/from16 p5, v16

    .line 328
    .line 329
    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    move/from16 v12, p5

    .line 334
    .line 335
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v13

    .line 339
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 340
    .line 341
    if-ne v13, v14, :cond_12

    .line 342
    .line 343
    new-instance v13, Lwc;

    .line 344
    .line 345
    invoke-direct {v13, v11}, Lwc;-><init>(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_12
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 352
    .line 353
    new-instance v12, Landroidx/compose/animation/core/KeyframesSpec;

    .line 354
    .line 355
    new-instance v1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 356
    .line 357
    invoke-direct {v1}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-interface {v13, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    invoke-direct {v12, v1}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v12, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    const/16 v11, 0x8

    .line 371
    .line 372
    const/4 v12, 0x0

    .line 373
    const/high16 v13, 0x43910000    # 290.0f

    .line 374
    .line 375
    move-object/from16 p3, v1

    .line 376
    .line 377
    move-object/from16 p0, v9

    .line 378
    .line 379
    move/from16 p6, v11

    .line 380
    .line 381
    move/from16 p1, v12

    .line 382
    .line 383
    move/from16 p2, v13

    .line 384
    .line 385
    move-object/from16 p4, v15

    .line 386
    .line 387
    const/16 p5, 0x11b8

    .line 388
    .line 389
    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    move/from16 v12, p5

    .line 394
    .line 395
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v11

    .line 399
    if-ne v11, v14, :cond_13

    .line 400
    .line 401
    new-instance v11, Lwc;

    .line 402
    .line 403
    const/4 v13, 0x7

    .line 404
    invoke-direct {v11, v13}, Lwc;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :cond_13
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 411
    .line 412
    new-instance v13, Landroidx/compose/animation/core/KeyframesSpec;

    .line 413
    .line 414
    new-instance v12, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 415
    .line 416
    invoke-direct {v12}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    invoke-direct {v13, v12}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    .line 423
    .line 424
    .line 425
    const/4 v11, 0x6

    .line 426
    invoke-static {v13, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    const/16 v12, 0x8

    .line 431
    .line 432
    const/4 v13, 0x0

    .line 433
    const/high16 v16, 0x43910000    # 290.0f

    .line 434
    .line 435
    move-object/from16 p0, v9

    .line 436
    .line 437
    move-object/from16 p3, v11

    .line 438
    .line 439
    move/from16 p6, v12

    .line 440
    .line 441
    move/from16 p1, v13

    .line 442
    .line 443
    move-object/from16 p4, v15

    .line 444
    .line 445
    move/from16 p2, v16

    .line 446
    .line 447
    const/16 p5, 0x11b8

    .line 448
    .line 449
    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    new-instance v11, Lwc;

    .line 454
    .line 455
    invoke-direct {v11, v12}, Lwc;-><init>(I)V

    .line 456
    .line 457
    .line 458
    const/4 v12, 0x1

    .line 459
    invoke-static {v0, v12, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    const/high16 v13, 0x42200000    # 40.0f

    .line 464
    .line 465
    invoke-static {v11, v13}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 466
    .line 467
    .line 468
    move-result-object v11

    .line 469
    move-object/from16 v13, v29

    .line 470
    .line 471
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v16

    .line 475
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v17

    .line 479
    or-int v16, v16, v17

    .line 480
    .line 481
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v17

    .line 485
    or-int v16, v16, v17

    .line 486
    .line 487
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v17

    .line 491
    or-int v16, v16, v17

    .line 492
    .line 493
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v17

    .line 497
    or-int v16, v16, v17

    .line 498
    .line 499
    move/from16 v12, v28

    .line 500
    .line 501
    move-object/from16 v28, v0

    .line 502
    .line 503
    and-int/lit16 v0, v12, 0x380

    .line 504
    .line 505
    move-object/from16 v24, v1

    .line 506
    .line 507
    const/16 v1, 0x100

    .line 508
    .line 509
    if-ne v0, v1, :cond_14

    .line 510
    .line 511
    const/4 v0, 0x1

    .line 512
    goto :goto_a

    .line 513
    :cond_14
    const/4 v0, 0x0

    .line 514
    :goto_a
    or-int v0, v16, v0

    .line 515
    .line 516
    and-int/lit8 v1, v12, 0x70

    .line 517
    .line 518
    xor-int/lit8 v1, v1, 0x30

    .line 519
    .line 520
    move/from16 p0, v0

    .line 521
    .line 522
    const/16 v0, 0x20

    .line 523
    .line 524
    if-le v1, v0, :cond_15

    .line 525
    .line 526
    invoke-virtual {v15, v6, v7}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-nez v1, :cond_16

    .line 531
    .line 532
    :cond_15
    and-int/lit8 v1, v12, 0x30

    .line 533
    .line 534
    if-ne v1, v0, :cond_17

    .line 535
    .line 536
    :cond_16
    const/16 v18, 0x1

    .line 537
    .line 538
    goto :goto_b

    .line 539
    :cond_17
    const/16 v18, 0x0

    .line 540
    .line 541
    :goto_b
    or-int v0, p0, v18

    .line 542
    .line 543
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    if-nez v0, :cond_19

    .line 548
    .line 549
    if-ne v1, v14, :cond_18

    .line 550
    .line 551
    goto :goto_c

    .line 552
    :cond_18
    move/from16 v20, v2

    .line 553
    .line 554
    move-wide/from16 v17, v3

    .line 555
    .line 556
    move-wide/from16 v21, v6

    .line 557
    .line 558
    goto :goto_d

    .line 559
    :cond_19
    :goto_c
    new-instance v16, Lae;

    .line 560
    .line 561
    move/from16 v20, v2

    .line 562
    .line 563
    move-wide/from16 v17, v3

    .line 564
    .line 565
    move-object/from16 v26, v5

    .line 566
    .line 567
    move-wide/from16 v21, v6

    .line 568
    .line 569
    move-object/from16 v25, v9

    .line 570
    .line 571
    move-object/from16 v23, v10

    .line 572
    .line 573
    move-object/from16 v19, v13

    .line 574
    .line 575
    invoke-direct/range {v16 .. v26}, Lae;-><init>(JLandroidx/compose/ui/graphics/drawscope/Stroke;FJLandroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V

    .line 576
    .line 577
    .line 578
    move-object/from16 v1, v16

    .line 579
    .line 580
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    :goto_d
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 584
    .line 585
    const/4 v0, 0x0

    .line 586
    invoke-static {v0, v15, v11, v1}, Landroidx/compose/foundation/CanvasKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 587
    .line 588
    .line 589
    move-wide/from16 v5, v17

    .line 590
    .line 591
    move/from16 v4, v20

    .line 592
    .line 593
    move-wide/from16 v2, v21

    .line 594
    .line 595
    move/from16 v7, v27

    .line 596
    .line 597
    move-object/from16 v1, v28

    .line 598
    .line 599
    goto :goto_e

    .line 600
    :cond_1a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 601
    .line 602
    .line 603
    move-object v1, v2

    .line 604
    move-wide v2, v6

    .line 605
    move v4, v10

    .line 606
    move v7, v11

    .line 607
    move-wide/from16 v5, p4

    .line 608
    .line 609
    :goto_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 610
    .line 611
    .line 612
    move-result-object v10

    .line 613
    if-eqz v10, :cond_1b

    .line 614
    .line 615
    new-instance v0, Lbe;

    .line 616
    .line 617
    move/from16 v9, p9

    .line 618
    .line 619
    invoke-direct/range {v0 .. v9}, Lbe;-><init>(Landroidx/compose/ui/Modifier;JFJIII)V

    .line 620
    .line 621
    .line 622
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 623
    .line 624
    :cond_1b
    return-void
.end method

.method public static final c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 10

    .line 1
    iget v0, p5, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    div-float/2addr v0, v1

    .line 6
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    shr-long/2addr v2, v4

    .line 13
    long-to-int v2, v2

    .line 14
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-float/2addr v1, v0

    .line 19
    sub-float/2addr v2, v1

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v5, v1

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    shl-long/2addr v5, v4

    .line 31
    const-wide v7, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v0, v7

    .line 37
    or-long/2addr v5, v0

    .line 38
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-long v0, v0

    .line 43
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-long v2, v2

    .line 48
    shl-long/2addr v0, v4

    .line 49
    and-long/2addr v2, v7

    .line 50
    or-long v7, v0, v2

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    move v3, p1

    .line 54
    move v4, p2

    .line 55
    move-wide v1, p3

    .line 56
    move-object v9, p5

    .line 57
    invoke-interface/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->H0(JFFJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
