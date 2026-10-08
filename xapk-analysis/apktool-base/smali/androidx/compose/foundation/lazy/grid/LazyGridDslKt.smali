.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v12, p10

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x7b81c7d6

    .line 8
    .line 9
    .line 10
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x4

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    or-int v0, p11, v0

    .line 25
    .line 26
    move-object/from16 v4, p1

    .line 27
    .line 28
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    const/16 v5, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v5, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v5

    .line 40
    or-int/lit16 v0, v0, 0x80

    .line 41
    .line 42
    move-object/from16 v5, p3

    .line 43
    .line 44
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    const/16 v6, 0x800

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v6, 0x400

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v6

    .line 56
    const v6, 0x16406000

    .line 57
    .line 58
    .line 59
    or-int/2addr v0, v6

    .line 60
    move-object/from16 v10, p9

    .line 61
    .line 62
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    move v6, v3

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v6, v2

    .line 71
    :goto_3
    const v7, 0x12492493

    .line 72
    .line 73
    .line 74
    and-int/2addr v7, v0

    .line 75
    const v8, 0x12492492

    .line 76
    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    if-ne v7, v8, :cond_5

    .line 80
    .line 81
    and-int/lit8 v7, v6, 0x3

    .line 82
    .line 83
    if-eq v7, v2, :cond_4

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_4
    move v2, v11

    .line 87
    goto :goto_5

    .line 88
    :cond_5
    :goto_4
    const/4 v2, 0x1

    .line 89
    :goto_5
    and-int/lit8 v7, v0, 0x1

    .line 90
    .line 91
    invoke-virtual {v12, v7, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_f

    .line 96
    .line 97
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 98
    .line 99
    .line 100
    and-int/lit8 v2, p11, 0x1

    .line 101
    .line 102
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 103
    .line 104
    const v8, -0x71c00381

    .line 105
    .line 106
    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_6
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 117
    .line 118
    .line 119
    and-int/2addr v0, v8

    .line 120
    move-object/from16 v2, p2

    .line 121
    .line 122
    move-object/from16 v8, p8

    .line 123
    .line 124
    move v13, v0

    .line 125
    move v14, v6

    .line 126
    move-object/from16 v6, p6

    .line 127
    .line 128
    move/from16 v0, p7

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_7
    :goto_6
    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 132
    .line 133
    new-array v2, v11, [Ljava/lang/Object;

    .line 134
    .line 135
    sget-object v13, Landroidx/compose/foundation/lazy/grid/LazyGridState;->w:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 136
    .line 137
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    or-int/2addr v14, v15

    .line 146
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    if-nez v14, :cond_8

    .line 151
    .line 152
    if-ne v15, v7, :cond_9

    .line 153
    .line 154
    :cond_8
    new-instance v15, Lx9;

    .line 155
    .line 156
    const/16 v14, 0x9

    .line 157
    .line 158
    invoke-direct {v15, v14}, Lx9;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_9
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 165
    .line 166
    invoke-static {v2, v13, v15, v12, v11}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 171
    .line 172
    invoke-static {v12}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    invoke-static {v12}, Landroidx/compose/foundation/OverscrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    and-int/2addr v0, v8

    .line 181
    move-object v8, v14

    .line 182
    move v14, v6

    .line 183
    move-object v6, v13

    .line 184
    move v13, v0

    .line 185
    const/4 v0, 0x1

    .line 186
    :goto_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 187
    .line 188
    .line 189
    and-int/lit8 v15, v13, 0xe

    .line 190
    .line 191
    or-int/lit8 v15, v15, 0x30

    .line 192
    .line 193
    and-int/lit8 v16, v15, 0xe

    .line 194
    .line 195
    const/16 v17, 0x6

    .line 196
    .line 197
    xor-int/lit8 v9, v16, 0x6

    .line 198
    .line 199
    if-le v9, v3, :cond_a

    .line 200
    .line 201
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-nez v9, :cond_b

    .line 206
    .line 207
    :cond_a
    and-int/lit8 v9, v15, 0x6

    .line 208
    .line 209
    if-ne v9, v3, :cond_c

    .line 210
    .line 211
    :cond_b
    const/4 v9, 0x1

    .line 212
    goto :goto_8

    .line 213
    :cond_c
    move v9, v11

    .line 214
    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-nez v9, :cond_e

    .line 219
    .line 220
    if-ne v3, v7, :cond_d

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_d
    move-object/from16 v9, p5

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_e
    :goto_9
    new-instance v3, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 227
    .line 228
    new-instance v7, Ld;

    .line 229
    .line 230
    move-object/from16 v9, p5

    .line 231
    .line 232
    invoke-direct {v7, v1, v9}, Ld;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v3, v7}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Ld;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :goto_a
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    .line 242
    .line 243
    shr-int/lit8 v7, v13, 0x3

    .line 244
    .line 245
    and-int/lit8 v7, v7, 0xe

    .line 246
    .line 247
    const/high16 v11, 0x30000

    .line 248
    .line 249
    or-int/2addr v7, v11

    .line 250
    and-int/lit16 v11, v13, 0x1c00

    .line 251
    .line 252
    or-int/2addr v7, v11

    .line 253
    const v11, 0x30c06000

    .line 254
    .line 255
    .line 256
    or-int v13, v7, v11

    .line 257
    .line 258
    shl-int/lit8 v7, v14, 0x3

    .line 259
    .line 260
    and-int/lit8 v7, v7, 0x70

    .line 261
    .line 262
    or-int v14, v17, v7

    .line 263
    .line 264
    move-object v7, v3

    .line 265
    move-object v3, v2

    .line 266
    move-object v2, v4

    .line 267
    move-object v4, v7

    .line 268
    move v7, v0

    .line 269
    move-object v11, v10

    .line 270
    move-object v10, v9

    .line 271
    move-object/from16 v9, p4

    .line 272
    .line 273
    invoke-static/range {v2 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 274
    .line 275
    .line 276
    move-object v9, v8

    .line 277
    move v8, v7

    .line 278
    move-object v7, v6

    .line 279
    goto :goto_b

    .line 280
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 281
    .line 282
    .line 283
    move-object/from16 v3, p2

    .line 284
    .line 285
    move-object/from16 v7, p6

    .line 286
    .line 287
    move/from16 v8, p7

    .line 288
    .line 289
    move-object/from16 v9, p8

    .line 290
    .line 291
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    if-eqz v12, :cond_10

    .line 296
    .line 297
    new-instance v0, Lda;

    .line 298
    .line 299
    move-object/from16 v2, p1

    .line 300
    .line 301
    move-object/from16 v4, p3

    .line 302
    .line 303
    move-object/from16 v5, p4

    .line 304
    .line 305
    move-object/from16 v6, p5

    .line 306
    .line 307
    move-object/from16 v10, p9

    .line 308
    .line 309
    move/from16 v11, p11

    .line 310
    .line 311
    invoke-direct/range {v0 .. v11}, Lda;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;I)V

    .line 312
    .line 313
    .line 314
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 315
    .line 316
    :cond_10
    return-void
.end method
