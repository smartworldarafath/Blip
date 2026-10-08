.class public abstract Lnet/blip/android/ui/list/ListRowKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x3ab03568

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    :goto_0
    and-int/lit8 v2, p0, 0x1

    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    const/high16 v2, 0x41000000    # 8.0f

    .line 26
    .line 27
    invoke-static {v1, v2}, Lnet/blip/shared/OutsetParentKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, p1, v0, v0}, Lnet/blip/android/ui/components/DividerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    new-instance v0, Lz6;

    .line 45
    .line 46
    const/16 v1, 0xb

    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Lz6;-><init>(II)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    .line 1
    move-object/from16 v5, p4

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    move-object/from16 v13, p7

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x579cf18

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, p9, 0x1

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    or-int/lit8 v2, v8, 0x6

    .line 21
    .line 22
    move v3, v2

    .line 23
    move-object/from16 v2, p0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v2, v8, 0x6

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    move-object/from16 v2, p0

    .line 31
    .line 32
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v3, v1

    .line 41
    :goto_0
    or-int/2addr v3, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object/from16 v2, p0

    .line 44
    .line 45
    move v3, v8

    .line 46
    :goto_1
    and-int/lit8 v4, p9, 0x2

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    or-int/lit8 v3, v3, 0x30

    .line 51
    .line 52
    :cond_3
    move-object/from16 v6, p1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    and-int/lit8 v6, v8, 0x30

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    move-object/from16 v6, p1

    .line 60
    .line 61
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_5

    .line 66
    .line 67
    const/16 v7, 0x20

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const/16 v7, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v3, v7

    .line 73
    :goto_3
    or-int/lit16 v3, v3, 0xd80

    .line 74
    .line 75
    and-int/lit16 v7, v8, 0x6000

    .line 76
    .line 77
    if-nez v7, :cond_7

    .line 78
    .line 79
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    const/16 v7, 0x4000

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v7, 0x2000

    .line 89
    .line 90
    :goto_4
    or-int/2addr v3, v7

    .line 91
    :cond_7
    and-int/lit8 v7, p9, 0x20

    .line 92
    .line 93
    const/high16 v9, 0x30000

    .line 94
    .line 95
    if-eqz v7, :cond_9

    .line 96
    .line 97
    or-int/2addr v3, v9

    .line 98
    :cond_8
    move-object/from16 v9, p5

    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_9
    and-int/2addr v9, v8

    .line 102
    if-nez v9, :cond_8

    .line 103
    .line 104
    move-object/from16 v9, p5

    .line 105
    .line 106
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_a

    .line 111
    .line 112
    const/high16 v10, 0x20000

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_a
    const/high16 v10, 0x10000

    .line 116
    .line 117
    :goto_5
    or-int/2addr v3, v10

    .line 118
    :goto_6
    const/high16 v10, 0x180000

    .line 119
    .line 120
    and-int/2addr v10, v8

    .line 121
    move-object/from16 v12, p6

    .line 122
    .line 123
    if-nez v10, :cond_c

    .line 124
    .line 125
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-eqz v10, :cond_b

    .line 130
    .line 131
    const/high16 v10, 0x100000

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    const/high16 v10, 0x80000

    .line 135
    .line 136
    :goto_7
    or-int/2addr v3, v10

    .line 137
    :cond_c
    const v10, 0x92493

    .line 138
    .line 139
    .line 140
    and-int/2addr v10, v3

    .line 141
    const v11, 0x92492

    .line 142
    .line 143
    .line 144
    const/4 v14, 0x0

    .line 145
    const/4 v15, 0x1

    .line 146
    if-eq v10, v11, :cond_d

    .line 147
    .line 148
    move v10, v15

    .line 149
    goto :goto_8

    .line 150
    :cond_d
    move v10, v14

    .line 151
    :goto_8
    and-int/lit8 v11, v3, 0x1

    .line 152
    .line 153
    invoke-virtual {v13, v11, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_15

    .line 158
    .line 159
    if-eqz v0, :cond_e

    .line 160
    .line 161
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_e
    move-object v0, v2

    .line 165
    :goto_9
    if-eqz v4, :cond_f

    .line 166
    .line 167
    sget-object v2, Lnet/blip/android/ui/list/ComposableSingletons$ListRowKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 168
    .line 169
    move-object v10, v2

    .line 170
    goto :goto_a

    .line 171
    :cond_f
    move-object v10, v6

    .line 172
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 177
    .line 178
    if-ne v2, v4, :cond_10

    .line 179
    .line 180
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_10
    move-object/from16 v17, v2

    .line 188
    .line 189
    check-cast v17, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 190
    .line 191
    if-eqz v7, :cond_11

    .line 192
    .line 193
    const/4 v2, 0x0

    .line 194
    move-object/from16 v20, v2

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :cond_11
    move-object/from16 v20, v9

    .line 198
    .line 199
    :goto_b
    const/high16 v2, 0x41800000    # 16.0f

    .line 200
    .line 201
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v0, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    if-eqz v5, :cond_12

    .line 210
    .line 211
    move/from16 v19, v15

    .line 212
    .line 213
    goto :goto_c

    .line 214
    :cond_12
    move/from16 v19, v14

    .line 215
    .line 216
    :goto_c
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 217
    .line 218
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 223
    .line 224
    iget-wide v6, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->o:J

    .line 225
    .line 226
    invoke-static {v1, v6, v7, v15}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 227
    .line 228
    .line 229
    move-result-object v18

    .line 230
    if-nez v5, :cond_14

    .line 231
    .line 232
    const v1, -0x3a001968

    .line 233
    .line 234
    .line 235
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-ne v1, v4, :cond_13

    .line 243
    .line 244
    new-instance v1, Ln;

    .line 245
    .line 246
    const/16 v2, 0x13

    .line 247
    .line 248
    invoke-direct {v1, v2}, Ln;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_13
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 255
    .line 256
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v21, v1

    .line 260
    .line 261
    goto :goto_d

    .line 262
    :cond_14
    const v1, 0x71bded55

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v21, v5

    .line 272
    .line 273
    :goto_d
    const/16 v22, 0x1b8

    .line 274
    .line 275
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const/high16 v2, 0x41400000    # 12.0f

    .line 280
    .line 281
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    shl-int/lit8 v1, v3, 0x3

    .line 286
    .line 287
    and-int/lit16 v2, v1, 0x380

    .line 288
    .line 289
    or-int/lit8 v2, v2, 0x30

    .line 290
    .line 291
    and-int/lit16 v1, v1, 0x1c00

    .line 292
    .line 293
    or-int/2addr v1, v2

    .line 294
    const v2, 0xe000

    .line 295
    .line 296
    .line 297
    shr-int/lit8 v3, v3, 0x6

    .line 298
    .line 299
    and-int/2addr v2, v3

    .line 300
    or-int v14, v1, v2

    .line 301
    .line 302
    sget-object v11, Lnet/blip/android/ui/list/ComposableSingletons$ListRowKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 303
    .line 304
    invoke-static/range {v9 .. v14}, Lnet/blip/shared/ListRowBasicLockupKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 305
    .line 306
    .line 307
    move-object v1, v0

    .line 308
    move-object v2, v10

    .line 309
    move-object v3, v11

    .line 310
    move-object/from16 v4, v17

    .line 311
    .line 312
    move-object/from16 v6, v20

    .line 313
    .line 314
    goto :goto_e

    .line 315
    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 316
    .line 317
    .line 318
    move-object/from16 v3, p2

    .line 319
    .line 320
    move-object/from16 v4, p3

    .line 321
    .line 322
    move-object v1, v2

    .line 323
    move-object v2, v6

    .line 324
    move-object v6, v9

    .line 325
    :goto_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    if-eqz v11, :cond_16

    .line 330
    .line 331
    new-instance v0, La3;

    .line 332
    .line 333
    const/4 v10, 0x2

    .line 334
    move-object/from16 v7, p6

    .line 335
    .line 336
    move/from16 v9, p9

    .line 337
    .line 338
    invoke-direct/range {v0 .. v10}, La3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/Function;III)V

    .line 339
    .line 340
    .line 341
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 342
    .line 343
    :cond_16
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V
    .locals 33

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v15, p5

    .line 7
    .line 8
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x6ec92c08

    .line 11
    .line 12
    .line 13
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    or-int/lit8 v0, v6, 0x6

    .line 17
    .line 18
    and-int/lit8 v1, v6, 0x30

    .line 19
    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    move-object/from16 v7, p1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v2

    .line 36
    :goto_0
    or-int/2addr v0, v1

    .line 37
    :cond_1
    and-int/lit8 v1, p7, 0x4

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    or-int/lit16 v0, v0, 0x180

    .line 42
    .line 43
    :cond_2
    move-object/from16 v3, p2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    and-int/lit16 v3, v6, 0x180

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    move-object/from16 v3, p2

    .line 51
    .line 52
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    const/16 v4, 0x100

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    const/16 v4, 0x80

    .line 62
    .line 63
    :goto_1
    or-int/2addr v0, v4

    .line 64
    :goto_2
    and-int/lit16 v4, v6, 0xc00

    .line 65
    .line 66
    if-nez v4, :cond_7

    .line 67
    .line 68
    and-int/lit8 v4, p7, 0x8

    .line 69
    .line 70
    if-nez v4, :cond_5

    .line 71
    .line 72
    move-wide/from16 v4, p3

    .line 73
    .line 74
    invoke-virtual {v15, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    const/16 v8, 0x800

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    move-wide/from16 v4, p3

    .line 84
    .line 85
    :cond_6
    const/16 v8, 0x400

    .line 86
    .line 87
    :goto_3
    or-int/2addr v0, v8

    .line 88
    goto :goto_4

    .line 89
    :cond_7
    move-wide/from16 v4, p3

    .line 90
    .line 91
    :goto_4
    and-int/lit16 v8, v0, 0x493

    .line 92
    .line 93
    const/16 v9, 0x492

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x1

    .line 97
    if-eq v8, v9, :cond_8

    .line 98
    .line 99
    move v8, v11

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move v8, v10

    .line 102
    :goto_5
    and-int/lit8 v9, v0, 0x1

    .line 103
    .line 104
    invoke-virtual {v15, v9, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_10

    .line 109
    .line 110
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 111
    .line 112
    .line 113
    and-int/lit8 v8, v6, 0x1

    .line 114
    .line 115
    if-eqz v8, :cond_b

    .line 116
    .line 117
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_9

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 125
    .line 126
    .line 127
    and-int/lit8 v1, p7, 0x8

    .line 128
    .line 129
    if-eqz v1, :cond_a

    .line 130
    .line 131
    and-int/lit16 v0, v0, -0x1c01

    .line 132
    .line 133
    :cond_a
    move-object v1, v3

    .line 134
    move-wide/from16 v17, v4

    .line 135
    .line 136
    move v3, v0

    .line 137
    move-object/from16 v0, p0

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    goto :goto_7

    .line 144
    :cond_c
    move-object v1, v3

    .line 145
    :goto_7
    and-int/lit8 v3, p7, 0x8

    .line 146
    .line 147
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 148
    .line 149
    if-eqz v3, :cond_d

    .line 150
    .line 151
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 152
    .line 153
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 158
    .line 159
    iget-wide v3, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 160
    .line 161
    and-int/lit16 v0, v0, -0x1c01

    .line 162
    .line 163
    move-wide/from16 v17, v3

    .line 164
    .line 165
    move v3, v0

    .line 166
    :goto_8
    move-object v0, v8

    .line 167
    goto :goto_9

    .line 168
    :cond_d
    move v3, v0

    .line 169
    move-wide/from16 v17, v4

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 173
    .line 174
    .line 175
    const/high16 v4, 0x3f800000    # 1.0f

    .line 176
    .line 177
    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 182
    .line 183
    const/4 v8, 0x6

    .line 184
    invoke-static {v4, v5, v15, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iget-wide v12, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 189
    .line 190
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 203
    .line 204
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 208
    .line 209
    .line 210
    iget-boolean v13, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 211
    .line 212
    if-eqz v13, :cond_e

    .line 213
    .line 214
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 215
    .line 216
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 217
    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 221
    .line 222
    .line 223
    :goto_a
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 224
    .line 225
    invoke-static {v15, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    .line 227
    .line 228
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 229
    .line 230
    invoke-static {v15, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 238
    .line 239
    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 243
    .line 244
    .line 245
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 246
    .line 247
    invoke-static {v15, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 251
    .line 252
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 257
    .line 258
    iget-object v5, v5, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 259
    .line 260
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v19

    .line 264
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 265
    .line 266
    const v27, 0x20203

    .line 267
    .line 268
    .line 269
    const v28, 0xdffff8

    .line 270
    .line 271
    .line 272
    const-wide/16 v22, 0x0

    .line 273
    .line 274
    const-wide/16 v24, 0x0

    .line 275
    .line 276
    const/16 v26, 0x0

    .line 277
    .line 278
    move-object/from16 v16, v5

    .line 279
    .line 280
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    move-wide/from16 v18, v17

    .line 285
    .line 286
    shr-int/lit8 v2, v3, 0x3

    .line 287
    .line 288
    and-int/lit8 v2, v2, 0xe

    .line 289
    .line 290
    const v5, 0x186000

    .line 291
    .line 292
    .line 293
    or-int v16, v2, v5

    .line 294
    .line 295
    const/16 v17, 0x1aa

    .line 296
    .line 297
    move v2, v8

    .line 298
    const/4 v8, 0x0

    .line 299
    move v5, v10

    .line 300
    const/4 v10, 0x2

    .line 301
    move v12, v11

    .line 302
    const/4 v11, 0x0

    .line 303
    move v13, v12

    .line 304
    const/4 v12, 0x1

    .line 305
    move v14, v13

    .line 306
    const/4 v13, 0x0

    .line 307
    move/from16 v20, v14

    .line 308
    .line 309
    const/4 v14, 0x0

    .line 310
    move/from16 p0, v2

    .line 311
    .line 312
    move/from16 v2, v20

    .line 313
    .line 314
    invoke-static/range {v7 .. v17}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 315
    .line 316
    .line 317
    if-nez v1, :cond_f

    .line 318
    .line 319
    const v3, 0x4580a3ba

    .line 320
    .line 321
    .line 322
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 326
    .line 327
    .line 328
    move-object v7, v1

    .line 329
    goto :goto_b

    .line 330
    :cond_f
    const v7, 0x4580a3bb

    .line 331
    .line 332
    .line 333
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 341
    .line 342
    iget-object v4, v4, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 343
    .line 344
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 345
    .line 346
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 351
    .line 352
    iget-wide v7, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 353
    .line 354
    const/16 v31, 0x0

    .line 355
    .line 356
    const v32, 0xfffffe

    .line 357
    .line 358
    .line 359
    const-wide/16 v23, 0x0

    .line 360
    .line 361
    const/16 v25, 0x0

    .line 362
    .line 363
    const-wide/16 v26, 0x0

    .line 364
    .line 365
    const-wide/16 v28, 0x0

    .line 366
    .line 367
    const/16 v30, 0x0

    .line 368
    .line 369
    move-object/from16 v20, v4

    .line 370
    .line 371
    move-wide/from16 v21, v7

    .line 372
    .line 373
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    shr-int/lit8 v3, v3, 0x6

    .line 378
    .line 379
    and-int/lit8 v16, v3, 0xe

    .line 380
    .line 381
    const/16 v17, 0x1fa

    .line 382
    .line 383
    const/4 v8, 0x0

    .line 384
    const/4 v10, 0x0

    .line 385
    const/4 v11, 0x0

    .line 386
    const/4 v12, 0x0

    .line 387
    const/4 v13, 0x0

    .line 388
    const/4 v14, 0x0

    .line 389
    move-object v7, v1

    .line 390
    invoke-static/range {v7 .. v17}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 394
    .line 395
    .line 396
    :goto_b
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 397
    .line 398
    .line 399
    move-object v1, v0

    .line 400
    move-object v3, v7

    .line 401
    move-wide/from16 v4, v18

    .line 402
    .line 403
    goto :goto_c

    .line 404
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 405
    .line 406
    .line 407
    move-object/from16 v1, p0

    .line 408
    .line 409
    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    if-eqz v8, :cond_11

    .line 414
    .line 415
    new-instance v0, Lpa;

    .line 416
    .line 417
    move-object/from16 v2, p1

    .line 418
    .line 419
    move/from16 v7, p7

    .line 420
    .line 421
    invoke-direct/range {v0 .. v7}, Lpa;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 422
    .line 423
    .line 424
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 425
    .line 426
    :cond_11
    return-void
.end method
