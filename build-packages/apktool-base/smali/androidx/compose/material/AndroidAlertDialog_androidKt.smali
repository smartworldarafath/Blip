.class public abstract Landroidx/compose/material/AndroidAlertDialog_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v11, p12

    .line 2
    .line 3
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x754d1143

    .line 6
    .line 7
    .line 8
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    move-object/from16 v13, p0

    .line 12
    .line 13
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

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
    or-int v0, p13, v0

    .line 23
    .line 24
    const v1, 0x32480180

    .line 25
    .line 26
    .line 27
    or-int/2addr v0, v1

    .line 28
    const v1, 0x12492493

    .line 29
    .line 30
    .line 31
    and-int/2addr v1, v0

    .line 32
    const v2, 0x12492492

    .line 33
    .line 34
    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {v11, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 49
    .line 50
    .line 51
    and-int/lit8 v1, p13, 0x1

    .line 52
    .line 53
    const v2, -0xff80001

    .line 54
    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 66
    .line 67
    .line 68
    and-int/2addr v0, v2

    .line 69
    move-object/from16 v2, p2

    .line 70
    .line 71
    move-object/from16 v5, p6

    .line 72
    .line 73
    move-wide/from16 v6, p7

    .line 74
    .line 75
    move-wide/from16 v8, p9

    .line 76
    .line 77
    move-object/from16 v10, p11

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    :goto_2
    invoke-static {v11}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v1, v1, Landroidx/compose/material/Shapes;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 85
    .line 86
    invoke-static {v11}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->f()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    invoke-static {v3, v4, v11}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    and-int/2addr v0, v2

    .line 99
    new-instance v2, Landroidx/compose/ui/window/DialogProperties;

    .line 100
    .line 101
    invoke-direct {v2}, Landroidx/compose/ui/window/DialogProperties;-><init>()V

    .line 102
    .line 103
    .line 104
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 105
    .line 106
    move-object v10, v2

    .line 107
    move-wide v8, v5

    .line 108
    move-object v2, v7

    .line 109
    move-object v5, v1

    .line 110
    move-wide v6, v3

    .line 111
    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 112
    .line 113
    .line 114
    new-instance v1, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;

    .line 115
    .line 116
    move-object/from16 v14, p1

    .line 117
    .line 118
    move-object/from16 v15, p3

    .line 119
    .line 120
    invoke-direct {v1, v15, v14}, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 121
    .line 122
    .line 123
    const v3, -0x126f8127

    .line 124
    .line 125
    .line 126
    invoke-static {v3, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    and-int/lit8 v0, v0, 0xe

    .line 131
    .line 132
    const v3, 0x6006db0

    .line 133
    .line 134
    .line 135
    or-int v12, v0, v3

    .line 136
    .line 137
    const/4 v13, 0x0

    .line 138
    move-object/from16 v0, p0

    .line 139
    .line 140
    move-object/from16 v3, p4

    .line 141
    .line 142
    move-object/from16 v4, p5

    .line 143
    .line 144
    invoke-static/range {v0 .. v13}, Landroidx/compose/material/AndroidAlertDialog_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V

    .line 145
    .line 146
    .line 147
    move-object/from16 v19, v5

    .line 148
    .line 149
    move-wide/from16 v20, v6

    .line 150
    .line 151
    move-wide/from16 v22, v8

    .line 152
    .line 153
    move-object/from16 v24, v10

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_4
    move-object/from16 v14, p1

    .line 157
    .line 158
    move-object/from16 v15, p3

    .line 159
    .line 160
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 161
    .line 162
    .line 163
    move-object/from16 v2, p2

    .line 164
    .line 165
    move-object/from16 v19, p6

    .line 166
    .line 167
    move-wide/from16 v20, p7

    .line 168
    .line 169
    move-wide/from16 v22, p9

    .line 170
    .line 171
    move-object/from16 v24, p11

    .line 172
    .line 173
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    new-instance v12, Lh0;

    .line 180
    .line 181
    move-object/from16 v13, p0

    .line 182
    .line 183
    move-object/from16 v17, p4

    .line 184
    .line 185
    move-object/from16 v18, p5

    .line 186
    .line 187
    move/from16 v25, p13

    .line 188
    .line 189
    move-object/from16 v16, v15

    .line 190
    .line 191
    move-object v15, v2

    .line 192
    invoke-direct/range {v12 .. v25}, Lh0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;I)V

    .line 193
    .line 194
    .line 195
    iput-object v12, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 196
    .line 197
    :cond_5
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v12, p12

    .line 4
    .line 5
    move/from16 v13, p13

    .line 6
    .line 7
    move-object/from16 v0, p11

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, 0x53fed562

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v12, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    or-int/2addr v2, v12

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v12

    .line 33
    :goto_1
    and-int/lit8 v3, v12, 0x30

    .line 34
    .line 35
    move-object/from16 v15, p1

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v3, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v2, v3

    .line 51
    :cond_3
    and-int/lit8 v3, v13, 0x4

    .line 52
    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    or-int/lit16 v2, v2, 0x180

    .line 56
    .line 57
    :cond_4
    move-object/from16 v4, p2

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_5
    and-int/lit16 v4, v12, 0x180

    .line 61
    .line 62
    if-nez v4, :cond_4

    .line 63
    .line 64
    move-object/from16 v4, p2

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_6

    .line 71
    .line 72
    const/16 v5, 0x100

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    const/16 v5, 0x80

    .line 76
    .line 77
    :goto_3
    or-int/2addr v2, v5

    .line 78
    :goto_4
    and-int/lit16 v5, v12, 0xc00

    .line 79
    .line 80
    if-nez v5, :cond_8

    .line 81
    .line 82
    move-object/from16 v5, p3

    .line 83
    .line 84
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    const/16 v6, 0x800

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_7
    const/16 v6, 0x400

    .line 94
    .line 95
    :goto_5
    or-int/2addr v2, v6

    .line 96
    goto :goto_6

    .line 97
    :cond_8
    move-object/from16 v5, p3

    .line 98
    .line 99
    :goto_6
    and-int/lit16 v6, v12, 0x6000

    .line 100
    .line 101
    if-nez v6, :cond_a

    .line 102
    .line 103
    move-object/from16 v6, p4

    .line 104
    .line 105
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_9

    .line 110
    .line 111
    const/16 v7, 0x4000

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_9
    const/16 v7, 0x2000

    .line 115
    .line 116
    :goto_7
    or-int/2addr v2, v7

    .line 117
    goto :goto_8

    .line 118
    :cond_a
    move-object/from16 v6, p4

    .line 119
    .line 120
    :goto_8
    const/high16 v7, 0x30000

    .line 121
    .line 122
    and-int/2addr v7, v12

    .line 123
    if-nez v7, :cond_d

    .line 124
    .line 125
    and-int/lit8 v7, v13, 0x20

    .line 126
    .line 127
    if-nez v7, :cond_b

    .line 128
    .line 129
    move-object/from16 v7, p5

    .line 130
    .line 131
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_c

    .line 136
    .line 137
    const/high16 v8, 0x20000

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :cond_b
    move-object/from16 v7, p5

    .line 141
    .line 142
    :cond_c
    const/high16 v8, 0x10000

    .line 143
    .line 144
    :goto_9
    or-int/2addr v2, v8

    .line 145
    goto :goto_a

    .line 146
    :cond_d
    move-object/from16 v7, p5

    .line 147
    .line 148
    :goto_a
    const/high16 v8, 0x180000

    .line 149
    .line 150
    and-int/2addr v8, v12

    .line 151
    if-nez v8, :cond_10

    .line 152
    .line 153
    and-int/lit8 v8, v13, 0x40

    .line 154
    .line 155
    if-nez v8, :cond_e

    .line 156
    .line 157
    move-wide/from16 v8, p6

    .line 158
    .line 159
    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eqz v10, :cond_f

    .line 164
    .line 165
    const/high16 v10, 0x100000

    .line 166
    .line 167
    goto :goto_b

    .line 168
    :cond_e
    move-wide/from16 v8, p6

    .line 169
    .line 170
    :cond_f
    const/high16 v10, 0x80000

    .line 171
    .line 172
    :goto_b
    or-int/2addr v2, v10

    .line 173
    goto :goto_c

    .line 174
    :cond_10
    move-wide/from16 v8, p6

    .line 175
    .line 176
    :goto_c
    const/high16 v10, 0xc00000

    .line 177
    .line 178
    and-int/2addr v10, v12

    .line 179
    if-nez v10, :cond_13

    .line 180
    .line 181
    and-int/lit16 v10, v13, 0x80

    .line 182
    .line 183
    if-nez v10, :cond_11

    .line 184
    .line 185
    move-wide/from16 v10, p8

    .line 186
    .line 187
    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_12

    .line 192
    .line 193
    const/high16 v14, 0x800000

    .line 194
    .line 195
    goto :goto_d

    .line 196
    :cond_11
    move-wide/from16 v10, p8

    .line 197
    .line 198
    :cond_12
    const/high16 v14, 0x400000

    .line 199
    .line 200
    :goto_d
    or-int/2addr v2, v14

    .line 201
    goto :goto_e

    .line 202
    :cond_13
    move-wide/from16 v10, p8

    .line 203
    .line 204
    :goto_e
    and-int/lit16 v14, v13, 0x100

    .line 205
    .line 206
    const/high16 v16, 0x6000000

    .line 207
    .line 208
    if-eqz v14, :cond_14

    .line 209
    .line 210
    or-int v2, v2, v16

    .line 211
    .line 212
    move/from16 v16, v2

    .line 213
    .line 214
    move-object/from16 v2, p10

    .line 215
    .line 216
    goto :goto_10

    .line 217
    :cond_14
    and-int v16, v12, v16

    .line 218
    .line 219
    move/from16 p11, v2

    .line 220
    .line 221
    move-object/from16 v2, p10

    .line 222
    .line 223
    if-nez v16, :cond_16

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v16

    .line 229
    if-eqz v16, :cond_15

    .line 230
    .line 231
    const/high16 v16, 0x4000000

    .line 232
    .line 233
    goto :goto_f

    .line 234
    :cond_15
    const/high16 v16, 0x2000000

    .line 235
    .line 236
    :goto_f
    or-int v16, p11, v16

    .line 237
    .line 238
    goto :goto_10

    .line 239
    :cond_16
    move/from16 v16, p11

    .line 240
    .line 241
    :goto_10
    const v17, 0x2492493

    .line 242
    .line 243
    .line 244
    and-int v2, v16, v17

    .line 245
    .line 246
    move/from16 p11, v3

    .line 247
    .line 248
    const v3, 0x2492492

    .line 249
    .line 250
    .line 251
    if-eq v2, v3, :cond_17

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    goto :goto_11

    .line 255
    :cond_17
    const/4 v2, 0x0

    .line 256
    :goto_11
    and-int/lit8 v3, v16, 0x1

    .line 257
    .line 258
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_22

    .line 263
    .line 264
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 265
    .line 266
    .line 267
    and-int/lit8 v2, v12, 0x1

    .line 268
    .line 269
    const v3, -0x1c00001

    .line 270
    .line 271
    .line 272
    const v17, -0x380001

    .line 273
    .line 274
    .line 275
    const v18, -0x70001

    .line 276
    .line 277
    .line 278
    if-eqz v2, :cond_1c

    .line 279
    .line 280
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_18

    .line 285
    .line 286
    goto :goto_12

    .line 287
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 288
    .line 289
    .line 290
    and-int/lit8 v2, v13, 0x20

    .line 291
    .line 292
    if-eqz v2, :cond_19

    .line 293
    .line 294
    and-int v16, v16, v18

    .line 295
    .line 296
    :cond_19
    and-int/lit8 v2, v13, 0x40

    .line 297
    .line 298
    if-eqz v2, :cond_1a

    .line 299
    .line 300
    and-int v16, v16, v17

    .line 301
    .line 302
    :cond_1a
    and-int/lit16 v2, v13, 0x80

    .line 303
    .line 304
    if-eqz v2, :cond_1b

    .line 305
    .line 306
    and-int v16, v16, v3

    .line 307
    .line 308
    :cond_1b
    move-object/from16 v3, p10

    .line 309
    .line 310
    move-object/from16 v19, v7

    .line 311
    .line 312
    move-wide/from16 v20, v8

    .line 313
    .line 314
    move-wide/from16 v22, v10

    .line 315
    .line 316
    move/from16 v2, v16

    .line 317
    .line 318
    move-object/from16 v16, v4

    .line 319
    .line 320
    goto :goto_18

    .line 321
    :cond_1c
    :goto_12
    if-eqz p11, :cond_1d

    .line 322
    .line 323
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 324
    .line 325
    goto :goto_13

    .line 326
    :cond_1d
    move-object v2, v4

    .line 327
    :goto_13
    and-int/lit8 v4, v13, 0x20

    .line 328
    .line 329
    if-eqz v4, :cond_1e

    .line 330
    .line 331
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Shapes;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    iget-object v4, v4, Landroidx/compose/material/Shapes;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 336
    .line 337
    and-int v16, v16, v18

    .line 338
    .line 339
    goto :goto_14

    .line 340
    :cond_1e
    move-object v4, v7

    .line 341
    :goto_14
    and-int/lit8 v7, v13, 0x40

    .line 342
    .line 343
    if-eqz v7, :cond_1f

    .line 344
    .line 345
    invoke-static {v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-virtual {v7}, Landroidx/compose/material/Colors;->f()J

    .line 350
    .line 351
    .line 352
    move-result-wide v7

    .line 353
    and-int v16, v16, v17

    .line 354
    .line 355
    goto :goto_15

    .line 356
    :cond_1f
    move-wide v7, v8

    .line 357
    :goto_15
    and-int/lit16 v9, v13, 0x80

    .line 358
    .line 359
    if-eqz v9, :cond_20

    .line 360
    .line 361
    invoke-static {v7, v8, v0}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;)J

    .line 362
    .line 363
    .line 364
    move-result-wide v9

    .line 365
    and-int v3, v16, v3

    .line 366
    .line 367
    move/from16 v16, v3

    .line 368
    .line 369
    goto :goto_16

    .line 370
    :cond_20
    move-wide v9, v10

    .line 371
    :goto_16
    if-eqz v14, :cond_21

    .line 372
    .line 373
    new-instance v3, Landroidx/compose/ui/window/DialogProperties;

    .line 374
    .line 375
    invoke-direct {v3}, Landroidx/compose/ui/window/DialogProperties;-><init>()V

    .line 376
    .line 377
    .line 378
    move/from16 v19, v16

    .line 379
    .line 380
    move-object/from16 v16, v2

    .line 381
    .line 382
    move/from16 v2, v19

    .line 383
    .line 384
    :goto_17
    move-object/from16 v19, v4

    .line 385
    .line 386
    move-wide/from16 v20, v7

    .line 387
    .line 388
    move-wide/from16 v22, v9

    .line 389
    .line 390
    goto :goto_18

    .line 391
    :cond_21
    move/from16 v3, v16

    .line 392
    .line 393
    move-object/from16 v16, v2

    .line 394
    .line 395
    move v2, v3

    .line 396
    move-object/from16 v3, p10

    .line 397
    .line 398
    goto :goto_17

    .line 399
    :goto_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 400
    .line 401
    .line 402
    const v4, 0xffffffe

    .line 403
    .line 404
    .line 405
    and-int/2addr v4, v2

    .line 406
    new-instance v14, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;

    .line 407
    .line 408
    move-object/from16 v17, v5

    .line 409
    .line 410
    move-object/from16 v18, v6

    .line 411
    .line 412
    invoke-direct/range {v14 .. v23}, Landroidx/compose/material/AlertDialogKt$AlertDialogImpl$2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJ)V

    .line 413
    .line 414
    .line 415
    const v5, -0x1d1b2925

    .line 416
    .line 417
    .line 418
    invoke-static {v5, v14, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    and-int/lit8 v2, v2, 0xe

    .line 423
    .line 424
    or-int/lit16 v2, v2, 0x180

    .line 425
    .line 426
    shr-int/lit8 v4, v4, 0x15

    .line 427
    .line 428
    and-int/lit8 v4, v4, 0x70

    .line 429
    .line 430
    or-int/2addr v2, v4

    .line 431
    invoke-static {v1, v3, v5, v0, v2}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 432
    .line 433
    .line 434
    move-object v11, v3

    .line 435
    move-object/from16 v3, v16

    .line 436
    .line 437
    move-object/from16 v6, v19

    .line 438
    .line 439
    move-wide/from16 v7, v20

    .line 440
    .line 441
    move-wide/from16 v9, v22

    .line 442
    .line 443
    goto :goto_19

    .line 444
    :cond_22
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 445
    .line 446
    .line 447
    move-object v3, v4

    .line 448
    move-object v6, v7

    .line 449
    move-wide v7, v8

    .line 450
    move-wide v9, v10

    .line 451
    move-object/from16 v11, p10

    .line 452
    .line 453
    :goto_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 454
    .line 455
    .line 456
    move-result-object v14

    .line 457
    if-eqz v14, :cond_23

    .line 458
    .line 459
    new-instance v0, Lg0;

    .line 460
    .line 461
    move-object/from16 v2, p1

    .line 462
    .line 463
    move-object/from16 v4, p3

    .line 464
    .line 465
    move-object/from16 v5, p4

    .line 466
    .line 467
    invoke-direct/range {v0 .. v13}, Lg0;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/ui/window/DialogProperties;II)V

    .line 468
    .line 469
    .line 470
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 471
    .line 472
    :cond_23
    return-void
.end method
