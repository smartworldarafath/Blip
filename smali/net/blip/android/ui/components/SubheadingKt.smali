.class public abstract Lnet/blip/android/ui/components/SubheadingKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V
    .locals 28

    .line 1
    move/from16 v5, p5

    .line 2
    .line 3
    move-object/from16 v14, p4

    .line 4
    .line 5
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x584d3d06

    .line 8
    .line 9
    .line 10
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v5, 0x6

    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v5

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v5

    .line 31
    :goto_1
    and-int/lit8 v2, v5, 0x30

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    move-object/from16 v2, p1

    .line 36
    .line 37
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v3

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v2, p1

    .line 51
    .line 52
    :goto_3
    and-int/lit16 v3, v5, 0x180

    .line 53
    .line 54
    if-nez v3, :cond_6

    .line 55
    .line 56
    and-int/lit8 v3, p6, 0x4

    .line 57
    .line 58
    if-nez v3, :cond_4

    .line 59
    .line 60
    move-wide/from16 v3, p2

    .line 61
    .line 62
    invoke-virtual {v14, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    const/16 v6, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    move-wide/from16 v3, p2

    .line 72
    .line 73
    :cond_5
    const/16 v6, 0x80

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v6

    .line 76
    goto :goto_5

    .line 77
    :cond_6
    move-wide/from16 v3, p2

    .line 78
    .line 79
    :goto_5
    and-int/lit16 v6, v0, 0x93

    .line 80
    .line 81
    const/16 v7, 0x92

    .line 82
    .line 83
    if-eq v6, v7, :cond_7

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    goto :goto_6

    .line 87
    :cond_7
    const/4 v6, 0x0

    .line 88
    :goto_6
    and-int/lit8 v7, v0, 0x1

    .line 89
    .line 90
    invoke-virtual {v14, v7, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_b

    .line 95
    .line 96
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 97
    .line 98
    .line 99
    and-int/lit8 v6, v5, 0x1

    .line 100
    .line 101
    if-eqz v6, :cond_a

    .line 102
    .line 103
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_8

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 111
    .line 112
    .line 113
    and-int/lit8 v6, p6, 0x4

    .line 114
    .line 115
    if-eqz v6, :cond_9

    .line 116
    .line 117
    :goto_7
    and-int/lit16 v0, v0, -0x381

    .line 118
    .line 119
    :cond_9
    move-wide/from16 v16, v3

    .line 120
    .line 121
    goto :goto_9

    .line 122
    :cond_a
    :goto_8
    and-int/lit8 v6, p6, 0x4

    .line 123
    .line 124
    if-eqz v6, :cond_9

    .line 125
    .line 126
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 133
    .line 134
    iget-wide v3, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 138
    .line 139
    .line 140
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 141
    .line 142
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 147
    .line 148
    iget-object v15, v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 149
    .line 150
    const/16 v3, 0x12

    .line 151
    .line 152
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v18

    .line 156
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 157
    .line 158
    const/16 v26, 0x0

    .line 159
    .line 160
    const v27, 0xfffff8

    .line 161
    .line 162
    .line 163
    const-wide/16 v21, 0x0

    .line 164
    .line 165
    const-wide/16 v23, 0x0

    .line 166
    .line 167
    const/16 v25, 0x0

    .line 168
    .line 169
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    move-wide/from16 v3, v16

    .line 174
    .line 175
    shr-int/lit8 v6, v0, 0x3

    .line 176
    .line 177
    and-int/lit8 v6, v6, 0xe

    .line 178
    .line 179
    shl-int/lit8 v0, v0, 0x3

    .line 180
    .line 181
    and-int/lit8 v0, v0, 0x70

    .line 182
    .line 183
    or-int v15, v6, v0

    .line 184
    .line 185
    const/16 v16, 0x1f8

    .line 186
    .line 187
    const/4 v9, 0x0

    .line 188
    const/4 v10, 0x0

    .line 189
    const/4 v11, 0x0

    .line 190
    const/4 v12, 0x0

    .line 191
    const/4 v13, 0x0

    .line 192
    move-object v7, v1

    .line 193
    move-object v6, v2

    .line 194
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 195
    .line 196
    .line 197
    goto :goto_a

    .line 198
    :cond_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 199
    .line 200
    .line 201
    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    if-eqz v7, :cond_c

    .line 206
    .line 207
    new-instance v0, Lte;

    .line 208
    .line 209
    move-object/from16 v1, p0

    .line 210
    .line 211
    move-object/from16 v2, p1

    .line 212
    .line 213
    move/from16 v6, p6

    .line 214
    .line 215
    invoke-direct/range {v0 .. v6}, Lte;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;JII)V

    .line 216
    .line 217
    .line 218
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 219
    .line 220
    :cond_c
    return-void
.end method
