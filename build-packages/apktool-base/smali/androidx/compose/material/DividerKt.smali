.class public abstract Landroidx/compose/material/DividerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 10

    .line 1
    move-object v0, p4

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v1, -0x4a783646

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v1, p6, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    or-int/lit8 v2, p5, 0x6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    and-int/lit8 v2, p5, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, p5

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v2, p5

    .line 33
    :goto_1
    and-int/lit8 v3, p6, 0x2

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v2, v3

    .line 49
    and-int/lit8 v3, p6, 0x4

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    or-int/lit16 v2, v2, 0x180

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    and-int/lit16 v4, p5, 0x180

    .line 57
    .line 58
    if-nez v4, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_5

    .line 65
    .line 66
    const/16 v6, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    const/16 v6, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v2, v6

    .line 72
    :cond_6
    :goto_4
    or-int/lit16 v2, v2, 0xc00

    .line 73
    .line 74
    and-int/lit16 v6, v2, 0x493

    .line 75
    .line 76
    const/16 v7, 0x492

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x1

    .line 80
    if-eq v6, v7, :cond_7

    .line 81
    .line 82
    move v6, v9

    .line 83
    goto :goto_5

    .line 84
    :cond_7
    move v6, v8

    .line 85
    :goto_5
    and-int/2addr v2, v9

    .line 86
    invoke-virtual {v0, v2, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_e

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 93
    .line 94
    .line 95
    and-int/lit8 v2, p5, 0x1

    .line 96
    .line 97
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 98
    .line 99
    const/high16 v7, 0x3f800000    # 1.0f

    .line 100
    .line 101
    if-eqz v2, :cond_a

    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 111
    .line 112
    .line 113
    :cond_9
    move v4, p3

    .line 114
    goto :goto_7

    .line 115
    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 116
    .line 117
    move-object p0, v6

    .line 118
    :cond_b
    and-int/lit8 v1, p6, 0x2

    .line 119
    .line 120
    if-eqz v1, :cond_c

    .line 121
    .line 122
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->d()J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    const v1, 0x3df5c28f    # 0.12f

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2, v1}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 134
    .line 135
    .line 136
    move-result-wide p1

    .line 137
    :cond_c
    if-eqz v3, :cond_9

    .line 138
    .line 139
    move v4, v7

    .line 140
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 141
    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-static {v4, v1}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_d

    .line 149
    .line 150
    const v1, -0x1b2db316

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 154
    .line 155
    .line 156
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 163
    .line 164
    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    div-float v1, v7, v1

    .line 169
    .line 170
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_d
    const v1, -0x1b2caf19

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 181
    .line 182
    .line 183
    move v1, v4

    .line 184
    :goto_8
    invoke-interface {p0, v6}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    sget-object v2, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 197
    .line 198
    invoke-static {v1, p1, p2, v2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1, v0, v8}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 203
    .line 204
    .line 205
    :goto_9
    move-object v1, p0

    .line 206
    move-wide v2, p1

    .line 207
    goto :goto_a

    .line 208
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 209
    .line 210
    .line 211
    move v4, p3

    .line 212
    goto :goto_9

    .line 213
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    if-eqz p0, :cond_f

    .line 218
    .line 219
    new-instance v0, Ly7;

    .line 220
    .line 221
    move v5, p5

    .line 222
    move/from16 v6, p6

    .line 223
    .line 224
    invoke-direct/range {v0 .. v6}, Ly7;-><init>(Landroidx/compose/ui/Modifier;JFII)V

    .line 225
    .line 226
    .line 227
    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 228
    .line 229
    :cond_f
    return-void
.end method
