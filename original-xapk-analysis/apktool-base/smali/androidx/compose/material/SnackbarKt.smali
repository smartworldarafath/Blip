.class public abstract Landroidx/compose/material/SnackbarKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJFLandroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v10, p10

    .line 2
    .line 3
    move-object/from16 v0, p9

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0xf6ad9ce

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, v10, 0x6

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    and-int/lit8 v1, v10, 0x8

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x2

    .line 36
    :goto_1
    or-int/2addr v1, v10

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v1, v10

    .line 39
    :goto_2
    or-int/lit16 v3, v1, 0x1b0

    .line 40
    .line 41
    and-int/lit16 v4, v10, 0xc00

    .line 42
    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    or-int/lit16 v3, v1, 0x5b0

    .line 46
    .line 47
    :cond_3
    and-int/lit16 v1, v10, 0x6000

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    or-int/lit16 v3, v3, 0x2000

    .line 52
    .line 53
    :cond_4
    const/high16 v1, 0x30000

    .line 54
    .line 55
    and-int/2addr v1, v10

    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    const/high16 v1, 0x10000

    .line 59
    .line 60
    or-int/2addr v3, v1

    .line 61
    :cond_5
    const/high16 v1, 0x180000

    .line 62
    .line 63
    and-int/2addr v1, v10

    .line 64
    if-nez v1, :cond_6

    .line 65
    .line 66
    const/high16 v1, 0x80000

    .line 67
    .line 68
    or-int/2addr v3, v1

    .line 69
    :cond_6
    const/high16 v1, 0xc00000

    .line 70
    .line 71
    or-int/2addr v1, v3

    .line 72
    const v3, 0x492493

    .line 73
    .line 74
    .line 75
    and-int/2addr v3, v1

    .line 76
    const v4, 0x492492

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    if-eq v3, v4, :cond_7

    .line 81
    .line 82
    move v3, v5

    .line 83
    goto :goto_3

    .line 84
    :cond_7
    const/4 v3, 0x0

    .line 85
    :goto_3
    and-int/2addr v1, v5

    .line 86
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_b

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 93
    .line 94
    .line 95
    and-int/lit8 p0, v10, 0x1

    .line 96
    .line 97
    if-eqz p0, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_8

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_9
    :goto_4
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    iget-object p0, p0, Landroidx/compose/material/Shapes;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 115
    .line 116
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->d()J

    .line 121
    .line 122
    .line 123
    move-result-wide p0

    .line 124
    const p2, 0x3f4ccccd    # 0.8f

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 128
    .line 129
    .line 130
    move-result-wide p0

    .line 131
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->f()J

    .line 136
    .line 137
    .line 138
    move-result-wide p2

    .line 139
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->f()J

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->g()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_a

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->e()J

    .line 160
    .line 161
    .line 162
    move-result-wide p1

    .line 163
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->f()J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    const p0, 0x3f19999a    # 0.6f

    .line 168
    .line 169
    .line 170
    invoke-static {v3, v4, p0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->d(JJ)J

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_a
    iget-object p0, p0, Landroidx/compose/material/Colors;->b:Landroidx/compose/runtime/MutableState;

    .line 179
    .line 180
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 187
    .line 188
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 189
    .line 190
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 191
    .line 192
    .line 193
    throw v2

    .line 194
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    if-eqz v11, :cond_c

    .line 202
    .line 203
    new-instance v0, Lwf;

    .line 204
    .line 205
    move-object v1, p0

    .line 206
    move-object v2, p1

    .line 207
    move-wide v3, p2

    .line 208
    move-wide/from16 v5, p4

    .line 209
    .line 210
    move-wide/from16 v7, p6

    .line 211
    .line 212
    move/from16 v9, p8

    .line 213
    .line 214
    invoke-direct/range {v0 .. v10}, Lwf;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJFI)V

    .line 215
    .line 216
    .line 217
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 218
    .line 219
    :cond_c
    return-void
.end method
