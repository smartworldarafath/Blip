.class public abstract Landroidx/compose/material/SurfaceKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    .line 1
    move-wide/from16 v5, p4

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    move-object/from16 v0, p8

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0xa6081e7

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, v9, 0x6

    .line 16
    .line 17
    move-object/from16 v11, p0

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, v9

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v9

    .line 33
    :goto_1
    and-int/lit8 v2, p10, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    or-int/lit8 v1, v1, 0x30

    .line 38
    .line 39
    :cond_2
    move-object/from16 v3, p1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    and-int/lit8 v3, v9, 0x30

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v4, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v1, v4

    .line 60
    :goto_3
    and-int/lit16 v4, v9, 0x180

    .line 61
    .line 62
    move-wide/from16 v13, p2

    .line 63
    .line 64
    if-nez v4, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0, v13, v14}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    const/16 v4, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/16 v4, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v1, v4

    .line 78
    :cond_6
    and-int/lit16 v4, v9, 0xc00

    .line 79
    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    const/16 v4, 0x800

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_7
    const/16 v4, 0x400

    .line 92
    .line 93
    :goto_5
    or-int/2addr v1, v4

    .line 94
    :cond_8
    and-int/lit8 v4, p10, 0x10

    .line 95
    .line 96
    if-eqz v4, :cond_9

    .line 97
    .line 98
    or-int/lit16 v1, v1, 0x6000

    .line 99
    .line 100
    goto :goto_7

    .line 101
    :cond_9
    and-int/lit16 v4, v9, 0x6000

    .line 102
    .line 103
    if-nez v4, :cond_b

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_a

    .line 111
    .line 112
    const/16 v4, 0x4000

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_a
    const/16 v4, 0x2000

    .line 116
    .line 117
    :goto_6
    or-int/2addr v1, v4

    .line 118
    :cond_b
    :goto_7
    and-int/lit8 v4, p10, 0x20

    .line 119
    .line 120
    const/high16 v7, 0x30000

    .line 121
    .line 122
    if-eqz v4, :cond_d

    .line 123
    .line 124
    or-int/2addr v1, v7

    .line 125
    :cond_c
    move/from16 v7, p6

    .line 126
    .line 127
    goto :goto_9

    .line 128
    :cond_d
    and-int/2addr v7, v9

    .line 129
    if-nez v7, :cond_c

    .line 130
    .line 131
    move/from16 v7, p6

    .line 132
    .line 133
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_e

    .line 138
    .line 139
    const/high16 v8, 0x20000

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_e
    const/high16 v8, 0x10000

    .line 143
    .line 144
    :goto_8
    or-int/2addr v1, v8

    .line 145
    :goto_9
    const/high16 v8, 0x180000

    .line 146
    .line 147
    and-int/2addr v8, v9

    .line 148
    if-nez v8, :cond_10

    .line 149
    .line 150
    move-object/from16 v8, p7

    .line 151
    .line 152
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_f

    .line 157
    .line 158
    const/high16 v10, 0x100000

    .line 159
    .line 160
    goto :goto_a

    .line 161
    :cond_f
    const/high16 v10, 0x80000

    .line 162
    .line 163
    :goto_a
    or-int/2addr v1, v10

    .line 164
    goto :goto_b

    .line 165
    :cond_10
    move-object/from16 v8, p7

    .line 166
    .line 167
    :goto_b
    const v10, 0x92493

    .line 168
    .line 169
    .line 170
    and-int/2addr v10, v1

    .line 171
    const v12, 0x92492

    .line 172
    .line 173
    .line 174
    const/4 v15, 0x1

    .line 175
    if-eq v10, v12, :cond_11

    .line 176
    .line 177
    move v10, v15

    .line 178
    goto :goto_c

    .line 179
    :cond_11
    const/4 v10, 0x0

    .line 180
    :goto_c
    and-int/2addr v1, v15

    .line 181
    invoke-virtual {v0, v1, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_16

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 188
    .line 189
    .line 190
    and-int/lit8 v1, v9, 0x1

    .line 191
    .line 192
    if-eqz v1, :cond_13

    .line 193
    .line 194
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_12

    .line 199
    .line 200
    goto :goto_e

    .line 201
    :cond_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 202
    .line 203
    .line 204
    move-object v12, v3

    .line 205
    :goto_d
    move/from16 v16, v7

    .line 206
    .line 207
    goto :goto_10

    .line 208
    :cond_13
    :goto_e
    if-eqz v2, :cond_14

    .line 209
    .line 210
    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 211
    .line 212
    goto :goto_f

    .line 213
    :cond_14
    move-object v1, v3

    .line 214
    :goto_f
    if-eqz v4, :cond_15

    .line 215
    .line 216
    const/4 v2, 0x0

    .line 217
    move-object v12, v1

    .line 218
    move/from16 v16, v2

    .line 219
    .line 220
    goto :goto_10

    .line 221
    :cond_15
    move-object v12, v1

    .line 222
    goto :goto_d

    .line 223
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 224
    .line 225
    .line 226
    sget-object v1, Landroidx/compose/material/ElevationOverlayKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Landroidx/compose/ui/unit/Dp;

    .line 233
    .line 234
    iget v2, v2, Landroidx/compose/ui/unit/Dp;->j:F

    .line 235
    .line 236
    add-float v15, v2, v16

    .line 237
    .line 238
    sget-object v2, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 239
    .line 240
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 241
    .line 242
    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    new-instance v3, Landroidx/compose/ui/unit/Dp;

    .line 250
    .line 251
    invoke-direct {v3, v15}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    filled-new-array {v2, v1}, [Landroidx/compose/runtime/ProvidedValue;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    new-instance v10, Landroidx/compose/material/k;

    .line 263
    .line 264
    move-object/from16 v17, v8

    .line 265
    .line 266
    invoke-direct/range {v10 .. v17}, Landroidx/compose/material/k;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 267
    .line 268
    .line 269
    const v2, -0x7776e959

    .line 270
    .line 271
    .line 272
    invoke-static {v2, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    const/16 v3, 0x38

    .line 277
    .line 278
    invoke-static {v1, v2, v0, v3}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 279
    .line 280
    .line 281
    move-object v2, v12

    .line 282
    move/from16 v7, v16

    .line 283
    .line 284
    goto :goto_11

    .line 285
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 286
    .line 287
    .line 288
    move-object v2, v3

    .line 289
    :goto_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    if-eqz v11, :cond_17

    .line 294
    .line 295
    new-instance v0, Lgg;

    .line 296
    .line 297
    move-object/from16 v1, p0

    .line 298
    .line 299
    move-wide/from16 v3, p2

    .line 300
    .line 301
    move-object/from16 v8, p7

    .line 302
    .line 303
    move/from16 v10, p10

    .line 304
    .line 305
    invoke-direct/range {v0 .. v10}, Lgg;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 306
    .line 307
    .line 308
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 309
    .line 310
    :cond_17
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-wide/from16 v7, p6

    .line 2
    .line 3
    move/from16 v9, p8

    .line 4
    .line 5
    move/from16 v0, p12

    .line 6
    .line 7
    move-object/from16 v1, p11

    .line 8
    .line 9
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, 0x7fa1c77a

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v0, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x2

    .line 32
    :goto_0
    or-int/2addr v3, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object/from16 v2, p0

    .line 35
    .line 36
    move v3, v0

    .line 37
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 38
    .line 39
    move-object/from16 v10, p1

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    const/16 v4, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v4, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v3, v4

    .line 55
    :cond_3
    and-int/lit16 v4, v0, 0x180

    .line 56
    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    move/from16 v4, p2

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    const/16 v5, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v5, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v3, v5

    .line 73
    goto :goto_4

    .line 74
    :cond_5
    move/from16 v4, p2

    .line 75
    .line 76
    :goto_4
    and-int/lit16 v5, v0, 0xc00

    .line 77
    .line 78
    move-object/from16 v11, p3

    .line 79
    .line 80
    if-nez v5, :cond_7

    .line 81
    .line 82
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    const/16 v5, 0x800

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    const/16 v5, 0x400

    .line 92
    .line 93
    :goto_5
    or-int/2addr v3, v5

    .line 94
    :cond_7
    and-int/lit16 v5, v0, 0x6000

    .line 95
    .line 96
    if-nez v5, :cond_9

    .line 97
    .line 98
    move-wide/from16 v5, p4

    .line 99
    .line 100
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-eqz v12, :cond_8

    .line 105
    .line 106
    const/16 v12, 0x4000

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    const/16 v12, 0x2000

    .line 110
    .line 111
    :goto_6
    or-int/2addr v3, v12

    .line 112
    goto :goto_7

    .line 113
    :cond_9
    move-wide/from16 v5, p4

    .line 114
    .line 115
    :goto_7
    const/high16 v12, 0x30000

    .line 116
    .line 117
    and-int/2addr v12, v0

    .line 118
    if-nez v12, :cond_b

    .line 119
    .line 120
    invoke-virtual {v1, v7, v8}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_a

    .line 125
    .line 126
    const/high16 v12, 0x20000

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_a
    const/high16 v12, 0x10000

    .line 130
    .line 131
    :goto_8
    or-int/2addr v3, v12

    .line 132
    :cond_b
    const/high16 v12, 0x180000

    .line 133
    .line 134
    and-int/2addr v12, v0

    .line 135
    if-nez v12, :cond_d

    .line 136
    .line 137
    const/4 v12, 0x0

    .line 138
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-eqz v12, :cond_c

    .line 143
    .line 144
    const/high16 v12, 0x100000

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_c
    const/high16 v12, 0x80000

    .line 148
    .line 149
    :goto_9
    or-int/2addr v3, v12

    .line 150
    :cond_d
    const/high16 v12, 0xc00000

    .line 151
    .line 152
    and-int/2addr v12, v0

    .line 153
    if-nez v12, :cond_f

    .line 154
    .line 155
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-eqz v12, :cond_e

    .line 160
    .line 161
    const/high16 v12, 0x800000

    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_e
    const/high16 v12, 0x400000

    .line 165
    .line 166
    :goto_a
    or-int/2addr v3, v12

    .line 167
    :cond_f
    const/high16 v12, 0x6000000

    .line 168
    .line 169
    and-int/2addr v12, v0

    .line 170
    if-nez v12, :cond_11

    .line 171
    .line 172
    move-object/from16 v12, p9

    .line 173
    .line 174
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    if-eqz v13, :cond_10

    .line 179
    .line 180
    const/high16 v13, 0x4000000

    .line 181
    .line 182
    goto :goto_b

    .line 183
    :cond_10
    const/high16 v13, 0x2000000

    .line 184
    .line 185
    :goto_b
    or-int/2addr v3, v13

    .line 186
    goto :goto_c

    .line 187
    :cond_11
    move-object/from16 v12, p9

    .line 188
    .line 189
    :goto_c
    const/high16 v13, 0x30000000

    .line 190
    .line 191
    and-int/2addr v13, v0

    .line 192
    if-nez v13, :cond_13

    .line 193
    .line 194
    move-object/from16 v13, p10

    .line 195
    .line 196
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_12

    .line 201
    .line 202
    const/high16 v14, 0x20000000

    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_12
    const/high16 v14, 0x10000000

    .line 206
    .line 207
    :goto_d
    or-int/2addr v3, v14

    .line 208
    goto :goto_e

    .line 209
    :cond_13
    move-object/from16 v13, p10

    .line 210
    .line 211
    :goto_e
    const v14, 0x12492493

    .line 212
    .line 213
    .line 214
    and-int/2addr v14, v3

    .line 215
    const v15, 0x12492492

    .line 216
    .line 217
    .line 218
    const/16 v16, 0x1

    .line 219
    .line 220
    if-eq v14, v15, :cond_14

    .line 221
    .line 222
    move/from16 v14, v16

    .line 223
    .line 224
    goto :goto_f

    .line 225
    :cond_14
    const/4 v14, 0x0

    .line 226
    :goto_f
    and-int/lit8 v3, v3, 0x1

    .line 227
    .line 228
    invoke-virtual {v1, v3, v14}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_17

    .line 233
    .line 234
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 235
    .line 236
    .line 237
    and-int/lit8 v3, v0, 0x1

    .line 238
    .line 239
    if-eqz v3, :cond_16

    .line 240
    .line 241
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-eqz v3, :cond_15

    .line 246
    .line 247
    goto :goto_10

    .line 248
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 249
    .line 250
    .line 251
    :cond_16
    :goto_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 252
    .line 253
    .line 254
    sget-object v3, Landroidx/compose/material/ElevationOverlayKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    check-cast v14, Landroidx/compose/ui/unit/Dp;

    .line 261
    .line 262
    iget v14, v14, Landroidx/compose/ui/unit/Dp;->j:F

    .line 263
    .line 264
    add-float/2addr v14, v9

    .line 265
    sget-object v15, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 266
    .line 267
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 268
    .line 269
    invoke-direct {v0, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    new-instance v15, Landroidx/compose/ui/unit/Dp;

    .line 277
    .line 278
    invoke-direct {v15, v14}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v15}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    filled-new-array {v0, v3}, [Landroidx/compose/runtime/ProvidedValue;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v9, Lhg;

    .line 290
    .line 291
    move/from16 v15, p8

    .line 292
    .line 293
    move-object/from16 v18, v2

    .line 294
    .line 295
    move/from16 v17, v4

    .line 296
    .line 297
    move-object/from16 v16, v12

    .line 298
    .line 299
    move-object/from16 v19, v13

    .line 300
    .line 301
    move-wide v12, v5

    .line 302
    invoke-direct/range {v9 .. v19}, Lhg;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 303
    .line 304
    .line 305
    const v2, -0x694c4546

    .line 306
    .line 307
    .line 308
    invoke-static {v2, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    const/16 v3, 0x38

    .line 313
    .line 314
    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 315
    .line 316
    .line 317
    goto :goto_11

    .line 318
    :cond_17
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 319
    .line 320
    .line 321
    :goto_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    if-eqz v13, :cond_18

    .line 326
    .line 327
    new-instance v0, Lig;

    .line 328
    .line 329
    move-object/from16 v1, p0

    .line 330
    .line 331
    move-object/from16 v2, p1

    .line 332
    .line 333
    move/from16 v3, p2

    .line 334
    .line 335
    move-object/from16 v4, p3

    .line 336
    .line 337
    move-wide/from16 v5, p4

    .line 338
    .line 339
    move/from16 v9, p8

    .line 340
    .line 341
    move-object/from16 v10, p9

    .line 342
    .line 343
    move-object/from16 v11, p10

    .line 344
    .line 345
    move/from16 v12, p12

    .line 346
    .line 347
    invoke-direct/range {v0 .. v12}, Lig;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 348
    .line 349
    .line 350
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 351
    .line 352
    :cond_18
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JF)Landroidx/compose/ui/Modifier;
    .locals 6

    .line 1
    const-wide/16 v3, 0x0

    .line 2
    .line 3
    const/16 v5, 0x18

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    move v1, p4

    .line 8
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0, p2, p3, v2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final d(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/GapComposer;)J
    .locals 8

    .line 1
    invoke-static {p4}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->f()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const v0, -0x43084136

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 22
    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v2, p2

    .line 26
    check-cast v2, Landroidx/compose/material/DefaultElevationOverlay;

    .line 27
    .line 28
    move-wide v3, p0

    .line 29
    move v5, p3

    .line 30
    move-object v6, p4

    .line 31
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/material/DefaultElevationOverlay;->a(JFLandroidx/compose/runtime/Composer;I)J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 36
    .line 37
    .line 38
    return-wide p0

    .line 39
    :cond_0
    move-wide v3, p0

    .line 40
    move-object v6, p4

    .line 41
    const p0, -0x4307372b

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 48
    .line 49
    .line 50
    return-wide v3
.end method
