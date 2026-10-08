.class public abstract Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    move-object v9, p3

    .line 4
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const p3, -0x40fab302

    .line 7
    .line 8
    .line 9
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    and-int/lit8 p3, v4, 0x6

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    and-int/lit8 p3, v4, 0x8

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    :goto_0
    if-eqz p3, :cond_1

    .line 31
    .line 32
    move p3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p3, 0x2

    .line 35
    :goto_1
    or-int/2addr p3, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move p3, v4

    .line 38
    :goto_2
    and-int/lit8 v1, v4, 0x30

    .line 39
    .line 40
    const/16 v2, 0x20

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    move v1, v2

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/16 v1, 0x10

    .line 53
    .line 54
    :goto_3
    or-int/2addr p3, v1

    .line 55
    :cond_4
    and-int/lit16 v1, v4, 0x180

    .line 56
    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const/16 v1, 0x100

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    const/16 v1, 0x80

    .line 69
    .line 70
    :goto_4
    or-int/2addr p3, v1

    .line 71
    :cond_6
    and-int/lit16 v1, p3, 0x93

    .line 72
    .line 73
    const/16 v3, 0x92

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x1

    .line 77
    if-eq v1, v3, :cond_7

    .line 78
    .line 79
    move v1, v6

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    move v1, v5

    .line 82
    :goto_5
    and-int/lit8 v3, p3, 0x1

    .line 83
    .line 84
    invoke-virtual {v9, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_d

    .line 89
    .line 90
    and-int/lit8 v1, p3, 0x70

    .line 91
    .line 92
    if-ne v1, v2, :cond_8

    .line 93
    .line 94
    move v1, v6

    .line 95
    goto :goto_6

    .line 96
    :cond_8
    move v1, v5

    .line 97
    :goto_6
    and-int/lit8 v2, p3, 0xe

    .line 98
    .line 99
    if-eq v2, v0, :cond_a

    .line 100
    .line 101
    and-int/lit8 v0, p3, 0x8

    .line 102
    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_9
    move v6, v5

    .line 113
    :cond_a
    :goto_7
    or-int v0, v1, v6

    .line 114
    .line 115
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v0, :cond_b

    .line 120
    .line 121
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 122
    .line 123
    if-ne v1, v0, :cond_c

    .line 124
    .line 125
    :cond_b
    new-instance v1, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 126
    .line 127
    invoke-direct {v1, p1, p0}, Landroidx/compose/foundation/text/selection/HandlePositionProvider;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/text/selection/OffsetProvider;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_c
    check-cast v1, Landroidx/compose/foundation/text/selection/HandlePositionProvider;

    .line 134
    .line 135
    new-instance v7, Landroidx/compose/ui/window/PopupProperties;

    .line 136
    .line 137
    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy;->j:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 138
    .line 139
    invoke-direct {v7, v5, v0, v5, v5}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZLandroidx/compose/ui/window/SecureFlagPolicy;ZI)V

    .line 140
    .line 141
    .line 142
    shl-int/lit8 p3, p3, 0x3

    .line 143
    .line 144
    and-int/lit16 p3, p3, 0x1c00

    .line 145
    .line 146
    or-int/lit16 v10, p3, 0x180

    .line 147
    .line 148
    const/4 v11, 0x2

    .line 149
    const/4 v6, 0x0

    .line 150
    move-object v8, p2

    .line 151
    move-object v5, v1

    .line 152
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 153
    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 157
    .line 158
    .line 159
    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    if-eqz p3, :cond_e

    .line 164
    .line 165
    new-instance v0, Lb1;

    .line 166
    .line 167
    const/4 v5, 0x1

    .line 168
    move-object v1, p0

    .line 169
    move-object v2, p1

    .line 170
    move-object v3, p2

    .line 171
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 175
    .line 176
    :cond_e
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v10, p7

    .line 10
    .line 11
    move/from16 v11, p9

    .line 12
    .line 13
    move-object/from16 v12, p8

    .line 14
    .line 15
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, -0x1bcadee8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, v11, 0x6

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    and-int/lit8 v0, v11, 0x8

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move v0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_1
    or-int/2addr v0, v11

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v0, v11

    .line 49
    :goto_2
    and-int/lit8 v2, v11, 0x30

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    move v2, v3

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/16 v2, 0x10

    .line 64
    .line 65
    :goto_3
    or-int/2addr v0, v2

    .line 66
    :cond_4
    and-int/lit16 v2, v11, 0x180

    .line 67
    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    const/16 v2, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    const/16 v2, 0x80

    .line 84
    .line 85
    :goto_4
    or-int/2addr v0, v2

    .line 86
    :cond_6
    and-int/lit16 v2, v11, 0xc00

    .line 87
    .line 88
    if-nez v2, :cond_8

    .line 89
    .line 90
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    const/16 v2, 0x800

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    const/16 v2, 0x400

    .line 100
    .line 101
    :goto_5
    or-int/2addr v0, v2

    .line 102
    :cond_8
    and-int/lit16 v2, v11, 0x6000

    .line 103
    .line 104
    if-nez v2, :cond_9

    .line 105
    .line 106
    or-int/lit16 v0, v0, 0x2000

    .line 107
    .line 108
    :cond_9
    const/high16 v2, 0x180000

    .line 109
    .line 110
    and-int/2addr v2, v11

    .line 111
    if-nez v2, :cond_b

    .line 112
    .line 113
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    .line 119
    const/high16 v2, 0x100000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v2, 0x80000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v0, v2

    .line 125
    :cond_b
    const v2, 0x82493

    .line 126
    .line 127
    .line 128
    and-int/2addr v2, v0

    .line 129
    const v4, 0x82492

    .line 130
    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    if-eq v2, v4, :cond_c

    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    goto :goto_7

    .line 137
    :cond_c
    move v2, v5

    .line 138
    :goto_7
    and-int/lit8 v4, v0, 0x1

    .line 139
    .line 140
    invoke-virtual {v12, v4, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_1d

    .line 145
    .line 146
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 147
    .line 148
    .line 149
    and-int/lit8 v2, v11, 0x1

    .line 150
    .line 151
    const v4, -0xe001

    .line 152
    .line 153
    .line 154
    if-eqz v2, :cond_e

    .line 155
    .line 156
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_d

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 164
    .line 165
    .line 166
    and-int/2addr v0, v4

    .line 167
    move-wide/from16 v14, p4

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_e
    :goto_8
    and-int/2addr v0, v4

    .line 171
    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 177
    .line 178
    .line 179
    if-eqz v7, :cond_12

    .line 180
    .line 181
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 182
    .line 183
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->j:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 184
    .line 185
    if-ne v8, v2, :cond_f

    .line 186
    .line 187
    if-eqz v9, :cond_10

    .line 188
    .line 189
    :cond_f
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 190
    .line 191
    if-ne v8, v2, :cond_11

    .line 192
    .line 193
    if-eqz v9, :cond_11

    .line 194
    .line 195
    :cond_10
    const/4 v2, 0x1

    .line 196
    goto :goto_a

    .line 197
    :cond_11
    move v2, v5

    .line 198
    :goto_a
    move v4, v2

    .line 199
    goto :goto_c

    .line 200
    :cond_12
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 201
    .line 202
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->j:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 203
    .line 204
    if-ne v8, v2, :cond_13

    .line 205
    .line 206
    if-eqz v9, :cond_14

    .line 207
    .line 208
    :cond_13
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 209
    .line 210
    if-ne v8, v2, :cond_15

    .line 211
    .line 212
    if-eqz v9, :cond_15

    .line 213
    .line 214
    :cond_14
    const/4 v2, 0x1

    .line 215
    goto :goto_b

    .line 216
    :cond_15
    move v2, v5

    .line 217
    :goto_b
    if-nez v2, :cond_16

    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    goto :goto_c

    .line 221
    :cond_16
    move v4, v5

    .line 222
    :goto_c
    if-eqz v4, :cond_17

    .line 223
    .line 224
    sget-object v2, Landroidx/compose/ui/AbsoluteAlignment;->b:Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 225
    .line 226
    goto :goto_d

    .line 227
    :cond_17
    sget-object v2, Landroidx/compose/ui/AbsoluteAlignment;->a:Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 228
    .line 229
    :goto_d
    and-int/lit8 v13, v0, 0xe

    .line 230
    .line 231
    if-eq v13, v1, :cond_19

    .line 232
    .line 233
    and-int/lit8 v1, v0, 0x8

    .line 234
    .line 235
    if-eqz v1, :cond_18

    .line 236
    .line 237
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_18

    .line 242
    .line 243
    goto :goto_e

    .line 244
    :cond_18
    move v1, v5

    .line 245
    goto :goto_f

    .line 246
    :cond_19
    :goto_e
    const/4 v1, 0x1

    .line 247
    :goto_f
    and-int/lit8 v0, v0, 0x70

    .line 248
    .line 249
    if-ne v0, v3, :cond_1a

    .line 250
    .line 251
    const/4 v0, 0x1

    .line 252
    goto :goto_10

    .line 253
    :cond_1a
    move v0, v5

    .line 254
    :goto_10
    or-int/2addr v0, v1

    .line 255
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    or-int/2addr v0, v1

    .line 260
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-nez v0, :cond_1b

    .line 265
    .line 266
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 267
    .line 268
    if-ne v1, v0, :cond_1c

    .line 269
    .line 270
    :cond_1b
    new-instance v1, Lx1;

    .line 271
    .line 272
    invoke-direct {v1, v6, v7, v4}, Lx1;-><init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZZ)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_1c
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 279
    .line 280
    invoke-static {v10, v5, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->t:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 285
    .line 286
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    move-object v1, v0

    .line 291
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 292
    .line 293
    new-instance v0, Ly1;

    .line 294
    .line 295
    move-wide/from16 v16, v14

    .line 296
    .line 297
    move-object v14, v2

    .line 298
    move-wide/from16 v2, v16

    .line 299
    .line 300
    invoke-direct/range {v0 .. v6}, Ly1;-><init>(Landroidx/compose/ui/platform/ViewConfiguration;JZLandroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/OffsetProvider;)V

    .line 301
    .line 302
    .line 303
    const v1, 0x515e2041

    .line 304
    .line 305
    .line 306
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    or-int/lit16 v1, v13, 0x180

    .line 311
    .line 312
    invoke-static {v6, v14, v0, v12, v1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->a(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 313
    .line 314
    .line 315
    goto :goto_11

    .line 316
    :cond_1d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 317
    .line 318
    .line 319
    move-wide/from16 v2, p4

    .line 320
    .line 321
    :goto_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    if-eqz v12, :cond_1e

    .line 326
    .line 327
    new-instance v0, Lz1;

    .line 328
    .line 329
    move-object v1, v6

    .line 330
    move v4, v9

    .line 331
    move v9, v11

    .line 332
    move-wide v5, v2

    .line 333
    move v2, v7

    .line 334
    move-object v3, v8

    .line 335
    move-object v8, v10

    .line 336
    move/from16 v7, p6

    .line 337
    .line 338
    invoke-direct/range {v0 .. v9}, Lz1;-><init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;I)V

    .line 339
    .line 340
    .line 341
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 342
    .line 343
    :cond_1e
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x7ddd909a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x20

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/16 v1, 0x10

    .line 35
    .line 36
    :goto_2
    or-int/2addr v0, v1

    .line 37
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const/16 v1, 0x100

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    const/16 v1, 0x80

    .line 47
    .line 48
    :goto_3
    or-int/2addr v0, v1

    .line 49
    and-int/lit16 v1, v0, 0x93

    .line 50
    .line 51
    const/16 v2, 0x92

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-eq v1, v2, :cond_4

    .line 55
    .line 56
    move v1, v3

    .line 57
    goto :goto_4

    .line 58
    :cond_4
    const/4 v1, 0x0

    .line 59
    :goto_4
    and-int/2addr v0, v3

    .line 60
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 67
    .line 68
    const/high16 v0, 0x41c80000    # 25.0f

    .line 69
    .line 70
    invoke-static {p0, v0, v0}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lz;

    .line 75
    .line 76
    invoke-direct {v1, v3, p1, p2}, Lz;-><init>(ILjava/lang/Object;Z)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 88
    .line 89
    .line 90
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    if-eqz p3, :cond_6

    .line 95
    .line 96
    new-instance v0, Lc2;

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v1, p0

    .line 100
    move-object v2, p1

    .line 101
    move v3, p2

    .line 102
    move v4, p4

    .line 103
    invoke-direct/range {v0 .. v5}, Lc2;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZII)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 107
    .line 108
    :cond_6
    return-void
.end method

.method public static final d(Landroidx/compose/ui/draw/CacheDrawScope;F)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v3, p1

    .line 4
    .line 5
    float-to-double v1, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    double-to-float v1, v1

    .line 11
    float-to-int v1, v1

    .line 12
    mul-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    sget-object v2, Landroidx/compose/foundation/text/selection/HandleImageCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 15
    .line 16
    sget-object v4, Landroidx/compose/foundation/text/selection/HandleImageCache;->b:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 17
    .line 18
    sget-object v5, Landroidx/compose/foundation/text/selection/HandleImageCache;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v6, v2, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-gt v1, v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-le v1, v6, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    move-object v8, v2

    .line 40
    move-object v9, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 43
    invoke-static {v1, v1, v2}, Landroidx/compose/ui/graphics/ImageBitmapKt;->a(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sput-object v2, Landroidx/compose/foundation/text/selection/HandleImageCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/compose/ui/graphics/CanvasKt;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sput-object v4, Landroidx/compose/foundation/text/selection/HandleImageCache;->b:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_2
    if-nez v5, :cond_2

    .line 57
    .line 58
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 59
    .line 60
    invoke-direct {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v5, Landroidx/compose/foundation/text/selection/HandleImageCache;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 64
    .line 65
    :cond_2
    move-object v10, v5

    .line 66
    iget-object v1, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/compose/ui/draw/CacheDrawScope;->j:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 69
    .line 70
    invoke-interface {v2}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v4, v8, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-float v5, v5

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    int-to-float v4, v4

    .line 86
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    int-to-long v5, v5

    .line 91
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    int-to-long v11, v4

    .line 96
    const/16 v4, 0x20

    .line 97
    .line 98
    shl-long/2addr v5, v4

    .line 99
    const-wide v18, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    and-long v11, v11, v18

    .line 105
    .line 106
    or-long/2addr v5, v11

    .line 107
    iget-object v7, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 108
    .line 109
    iget-object v11, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 110
    .line 111
    iget-object v12, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 112
    .line 113
    iget-wide v13, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 114
    .line 115
    iput-object v0, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 116
    .line 117
    iput-object v2, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 118
    .line 119
    iput-object v9, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 120
    .line 121
    iput-wide v5, v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 122
    .line 123
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 124
    .line 125
    .line 126
    move-object v0, v11

    .line 127
    move-object v2, v12

    .line 128
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->b:J

    .line 129
    .line 130
    move-wide v5, v13

    .line 131
    invoke-interface {v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 132
    .line 133
    .line 134
    move-result-wide v13

    .line 135
    const/16 v16, 0x0

    .line 136
    .line 137
    const/16 v17, 0x3a

    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 141
    .line 142
    .line 143
    const-wide v20, 0xff000000L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 149
    .line 150
    .line 151
    move-result-wide v11

    .line 152
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    int-to-long v13, v13

    .line 157
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    move/from16 v22, v4

    .line 162
    .line 163
    move-wide/from16 v23, v5

    .line 164
    .line 165
    int-to-long v4, v15

    .line 166
    shl-long v13, v13, v22

    .line 167
    .line 168
    and-long v4, v4, v18

    .line 169
    .line 170
    or-long/2addr v13, v4

    .line 171
    const/16 v17, 0x78

    .line 172
    .line 173
    const/4 v15, 0x0

    .line 174
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 175
    .line 176
    .line 177
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    int-to-long v11, v6

    .line 186
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    int-to-long v13, v6

    .line 191
    shl-long v11, v11, v22

    .line 192
    .line 193
    and-long v13, v13, v18

    .line 194
    .line 195
    or-long/2addr v11, v13

    .line 196
    const/4 v6, 0x0

    .line 197
    move-object v13, v7

    .line 198
    const/16 v7, 0x78

    .line 199
    .line 200
    move-wide/from16 v14, v23

    .line 201
    .line 202
    move-wide/from16 v25, v11

    .line 203
    .line 204
    move-object v11, v0

    .line 205
    move-object v12, v2

    .line 206
    move-object v0, v10

    .line 207
    move-object v10, v1

    .line 208
    move-wide v1, v4

    .line 209
    move-wide/from16 v4, v25

    .line 210
    .line 211
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->J(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFI)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 215
    .line 216
    .line 217
    iput-object v13, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 218
    .line 219
    iput-object v11, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 220
    .line 221
    iput-object v12, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 222
    .line 223
    iput-wide v14, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 224
    .line 225
    return-object v8
.end method
