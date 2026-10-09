.class public abstract Landroidx/compose/material/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/window/PopupProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/window/PopupProperties;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/window/SecureFlagPolicy;->j:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZLandroidx/compose/ui/window/SecureFlagPolicy;ZI)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/compose/material/AndroidMenu_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 11
    .line 12
    return-void
.end method

.method public static final a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    .line 1
    move/from16 v9, p9

    .line 2
    .line 3
    move-object/from16 v4, p8

    .line 4
    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x4c05d572    # 3.508372E7f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    move/from16 v7, p0

    .line 14
    .line 15
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int/2addr v0, v9

    .line 25
    and-int/lit8 v1, v9, 0x30

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    move v3, v2

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
    goto :goto_2

    .line 45
    :cond_2
    move-object/from16 v1, p1

    .line 46
    .line 47
    :goto_2
    or-int/lit16 v3, v0, 0x180

    .line 48
    .line 49
    and-int/lit8 v5, p10, 0x8

    .line 50
    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    or-int/lit16 v3, v0, 0xd80

    .line 54
    .line 55
    move-wide/from16 v10, p3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    and-int/lit16 v0, v9, 0xc00

    .line 59
    .line 60
    move-wide/from16 v10, p3

    .line 61
    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {v4, v10, v11}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    const/16 v0, 0x800

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/16 v0, 0x400

    .line 74
    .line 75
    :goto_3
    or-int/2addr v3, v0

    .line 76
    :cond_5
    :goto_4
    const v0, 0x32000

    .line 77
    .line 78
    .line 79
    or-int/2addr v0, v3

    .line 80
    const v3, 0x92493

    .line 81
    .line 82
    .line 83
    and-int/2addr v3, v0

    .line 84
    const v6, 0x92492

    .line 85
    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v12, 0x1

    .line 89
    if-eq v3, v6, :cond_6

    .line 90
    .line 91
    move v3, v12

    .line 92
    goto :goto_5

    .line 93
    :cond_6
    move v3, v8

    .line 94
    :goto_5
    and-int/lit8 v6, v0, 0x1

    .line 95
    .line 96
    invoke-virtual {v4, v6, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_f

    .line 101
    .line 102
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 103
    .line 104
    .line 105
    and-int/lit8 v3, v9, 0x1

    .line 106
    .line 107
    const v6, -0xe001

    .line 108
    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 120
    .line 121
    .line 122
    and-int/2addr v0, v6

    .line 123
    move-object/from16 v17, p2

    .line 124
    .line 125
    move-object/from16 v16, p5

    .line 126
    .line 127
    move-object/from16 v2, p6

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_8
    :goto_6
    if-eqz v5, :cond_9

    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    int-to-long v10, v5

    .line 138
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    int-to-long v13, v3

    .line 143
    shl-long v2, v10, v2

    .line 144
    .line 145
    const-wide v10, 0xffffffffL

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    and-long/2addr v10, v13

    .line 151
    or-long/2addr v2, v10

    .line 152
    move-wide v10, v2

    .line 153
    :cond_9
    invoke-static {v4}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    and-int/2addr v0, v6

    .line 158
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 159
    .line 160
    sget-object v5, Landroidx/compose/material/AndroidMenu_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 161
    .line 162
    move-object/from16 v16, v2

    .line 163
    .line 164
    move-object/from16 v17, v3

    .line 165
    .line 166
    move-object v2, v5

    .line 167
    :goto_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 175
    .line 176
    if-ne v3, v5, :cond_a

    .line 177
    .line 178
    new-instance v3, Landroidx/compose/animation/core/MutableTransitionState;

    .line 179
    .line 180
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-direct {v3, v6}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_a
    move-object v14, v3

    .line 189
    check-cast v14, Landroidx/compose/animation/core/MutableTransitionState;

    .line 190
    .line 191
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    iget-object v6, v14, Landroidx/compose/animation/core/MutableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    .line 196
    .line 197
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 198
    .line 199
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v14, Landroidx/compose/animation/core/MutableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 203
    .line 204
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 205
    .line 206
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Ljava/lang/Boolean;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_c

    .line 217
    .line 218
    iget-object v3, v14, Landroidx/compose/animation/core/MutableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    .line 219
    .line 220
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 221
    .line 222
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    check-cast v3, Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_b

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_b
    const v0, -0x250b59d0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 242
    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_c
    :goto_8
    const v3, -0x2517768a

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    if-ne v3, v5, :cond_d

    .line 256
    .line 257
    sget-wide v8, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 258
    .line 259
    new-instance v3, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 260
    .line 261
    invoke-direct {v3, v8, v9}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 262
    .line 263
    .line 264
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_d
    move-object v15, v3

    .line 272
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 273
    .line 274
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 275
    .line 276
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 281
    .line 282
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    if-ne v6, v5, :cond_e

    .line 287
    .line 288
    new-instance v6, La1;

    .line 289
    .line 290
    invoke-direct {v6, v15, v12}, La1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    :cond_e
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 297
    .line 298
    move v5, v0

    .line 299
    new-instance v0, Landroidx/compose/material/DropdownMenuPositionProvider;

    .line 300
    .line 301
    invoke-direct {v0, v10, v11, v3, v6}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;)V

    .line 302
    .line 303
    .line 304
    new-instance v13, Lg1;

    .line 305
    .line 306
    move-object/from16 v18, p7

    .line 307
    .line 308
    invoke-direct/range {v13 .. v18}, Lg1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 309
    .line 310
    .line 311
    const v3, 0x6a9e70ab

    .line 312
    .line 313
    .line 314
    invoke-static {v3, v13, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    and-int/lit8 v5, v5, 0x70

    .line 319
    .line 320
    or-int/lit16 v5, v5, 0xd80

    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 324
    .line 325
    .line 326
    const/4 v0, 0x0

    .line 327
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 328
    .line 329
    .line 330
    :goto_9
    move-object v7, v2

    .line 331
    move-object/from16 v6, v16

    .line 332
    .line 333
    move-object/from16 v3, v17

    .line 334
    .line 335
    :goto_a
    move-object v0, v4

    .line 336
    move-wide v4, v10

    .line 337
    goto :goto_b

    .line 338
    :cond_f
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 339
    .line 340
    .line 341
    move-object/from16 v3, p2

    .line 342
    .line 343
    move-object/from16 v6, p5

    .line 344
    .line 345
    move-object/from16 v7, p6

    .line 346
    .line 347
    goto :goto_a

    .line 348
    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    if-eqz v11, :cond_10

    .line 353
    .line 354
    new-instance v0, Lh1;

    .line 355
    .line 356
    move/from16 v1, p0

    .line 357
    .line 358
    move-object/from16 v2, p1

    .line 359
    .line 360
    move-object/from16 v8, p7

    .line 361
    .line 362
    move/from16 v9, p9

    .line 363
    .line 364
    move/from16 v10, p10

    .line 365
    .line 366
    invoke-direct/range {v0 .. v10}, Lh1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 367
    .line 368
    .line 369
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 370
    .line 371
    :cond_10
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    move-object/from16 v12, p5

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, 0x27f7a2e1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v0, v6, 0x6

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v6

    .line 29
    :goto_1
    and-int/lit8 v1, p7, 0x2

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    or-int/lit8 v0, v0, 0x30

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    and-int/lit8 v2, v6, 0x30

    .line 37
    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {v12, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    const/16 v2, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/16 v2, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v0, v2

    .line 52
    :cond_4
    :goto_3
    and-int/lit8 v2, p7, 0x4

    .line 53
    .line 54
    if-eqz v2, :cond_6

    .line 55
    .line 56
    or-int/lit16 v0, v0, 0x180

    .line 57
    .line 58
    :cond_5
    move/from16 v3, p2

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_6
    and-int/lit16 v3, v6, 0x180

    .line 62
    .line 63
    if-nez v3, :cond_5

    .line 64
    .line 65
    move/from16 v3, p2

    .line 66
    .line 67
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_7

    .line 72
    .line 73
    const/16 v4, 0x100

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_7
    const/16 v4, 0x80

    .line 77
    .line 78
    :goto_4
    or-int/2addr v0, v4

    .line 79
    :goto_5
    or-int/lit16 v0, v0, 0x6c00

    .line 80
    .line 81
    const/high16 v4, 0x30000

    .line 82
    .line 83
    and-int/2addr v4, v6

    .line 84
    move-object/from16 v11, p4

    .line 85
    .line 86
    if-nez v4, :cond_9

    .line 87
    .line 88
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_8

    .line 93
    .line 94
    const/high16 v4, 0x20000

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_8
    const/high16 v4, 0x10000

    .line 98
    .line 99
    :goto_6
    or-int/2addr v0, v4

    .line 100
    :cond_9
    const v4, 0x12493

    .line 101
    .line 102
    .line 103
    and-int/2addr v4, v0

    .line 104
    const v5, 0x12492

    .line 105
    .line 106
    .line 107
    const/4 v7, 0x1

    .line 108
    if-eq v4, v5, :cond_a

    .line 109
    .line 110
    move v4, v7

    .line 111
    goto :goto_7

    .line 112
    :cond_a
    const/4 v4, 0x0

    .line 113
    :goto_7
    and-int/lit8 v5, v0, 0x1

    .line 114
    .line 115
    invoke-virtual {v12, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_d

    .line 120
    .line 121
    if-eqz v1, :cond_b

    .line 122
    .line 123
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 124
    .line 125
    :cond_b
    move-object v8, p1

    .line 126
    if-eqz v2, :cond_c

    .line 127
    .line 128
    move v9, v7

    .line 129
    goto :goto_8

    .line 130
    :cond_c
    move v9, v3

    .line 131
    :goto_8
    sget-object v10, Landroidx/compose/material/MenuDefaults;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 132
    .line 133
    const p1, 0x7fffe

    .line 134
    .line 135
    .line 136
    and-int v13, v0, p1

    .line 137
    .line 138
    move-object v7, p0

    .line 139
    invoke-static/range {v7 .. v13}, Landroidx/compose/material/MenuKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    move-object v2, v8

    .line 143
    move v3, v9

    .line 144
    move-object v4, v10

    .line 145
    goto :goto_9

    .line 146
    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 147
    .line 148
    .line 149
    move-object v2, p1

    .line 150
    move-object/from16 v4, p3

    .line 151
    .line 152
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_e

    .line 157
    .line 158
    new-instance v0, Lf1;

    .line 159
    .line 160
    move-object v1, p0

    .line 161
    move-object/from16 v5, p4

    .line 162
    .line 163
    move/from16 v7, p7

    .line 164
    .line 165
    invoke-direct/range {v0 .. v7}, Lf1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 169
    .line 170
    :cond_e
    return-void
.end method
