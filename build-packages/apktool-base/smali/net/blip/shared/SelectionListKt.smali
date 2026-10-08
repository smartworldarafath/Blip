.class public abstract Lnet/blip/shared/SelectionListKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnet/blip/shared/SelectionListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move-object/from16 v9, p8

    .line 2
    .line 3
    move/from16 v10, p10

    .line 4
    .line 5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p9

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v1, -0x42151d9e

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x2

    .line 29
    :goto_0
    or-int/2addr v2, v10

    .line 30
    or-int/lit8 v2, v2, 0x10

    .line 31
    .line 32
    and-int/lit16 v3, v10, 0x180

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    move-object/from16 v3, p2

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    const/16 v4, 0x100

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v4, 0x80

    .line 48
    .line 49
    :goto_1
    or-int/2addr v2, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object/from16 v3, p2

    .line 52
    .line 53
    :goto_2
    const v4, 0x2cb2c00

    .line 54
    .line 55
    .line 56
    or-int/2addr v2, v4

    .line 57
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    const/high16 v4, 0x20000000

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/high16 v4, 0x10000000

    .line 67
    .line 68
    :goto_3
    or-int/2addr v2, v4

    .line 69
    const v4, 0x12492493

    .line 70
    .line 71
    .line 72
    and-int/2addr v4, v2

    .line 73
    const v6, 0x12492492

    .line 74
    .line 75
    .line 76
    if-eq v4, v6, :cond_4

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    const/4 v4, 0x0

    .line 81
    :goto_4
    and-int/lit8 v6, v2, 0x1

    .line 82
    .line 83
    invoke-virtual {v0, v6, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_10

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 90
    .line 91
    .line 92
    and-int/lit8 v4, v10, 0x1

    .line 93
    .line 94
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 95
    .line 96
    const v11, -0xe38e071

    .line 97
    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 109
    .line 110
    .line 111
    and-int/2addr v2, v11

    .line 112
    move-object/from16 v4, p1

    .line 113
    .line 114
    move-object/from16 v11, p3

    .line 115
    .line 116
    move-object/from16 v14, p4

    .line 117
    .line 118
    move-object/from16 v12, p5

    .line 119
    .line 120
    move/from16 v22, p6

    .line 121
    .line 122
    move-object/from16 v13, p7

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_6
    :goto_5
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    if-ne v13, v6, :cond_7

    .line 138
    .line 139
    new-instance v13, Lnet/blip/shared/SelectionListState;

    .line 140
    .line 141
    invoke-direct {v13}, Lnet/blip/shared/SelectionListState;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    check-cast v13, Lnet/blip/shared/SelectionListState;

    .line 148
    .line 149
    and-int/2addr v2, v11

    .line 150
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 151
    .line 152
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 153
    .line 154
    const/16 v22, 0x1

    .line 155
    .line 156
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    const/4 v7, 0x0

    .line 164
    if-ne v15, v6, :cond_8

    .line 165
    .line 166
    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 174
    .line 175
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v8, v16

    .line 180
    .line 181
    check-cast v8, Lnet/blip/shared/SelectableLazyListScope;

    .line 182
    .line 183
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v16

    .line 187
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    if-nez v16, :cond_9

    .line 192
    .line 193
    if-ne v5, v6, :cond_a

    .line 194
    .line 195
    :cond_9
    new-instance v5, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;

    .line 196
    .line 197
    invoke-direct {v5, v13, v15, v7}, Lnet/blip/shared/SelectionListKt$SelectionList$1$1;-><init>(Lnet/blip/shared/SelectionListState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_a
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 204
    .line 205
    invoke-static {v0, v8, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 206
    .line 207
    .line 208
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 209
    .line 210
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 215
    .line 216
    iget-object v7, v13, Lnet/blip/shared/SelectionListState;->a:Landroidx/compose/runtime/MutableState;

    .line 217
    .line 218
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 219
    .line 220
    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v16

    .line 232
    or-int v8, v8, v16

    .line 233
    .line 234
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v16

    .line 238
    or-int v8, v8, v16

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    if-nez v8, :cond_b

    .line 245
    .line 246
    if-ne v1, v6, :cond_c

    .line 247
    .line 248
    :cond_b
    move-object/from16 v19, v15

    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_c
    move-object/from16 v17, v4

    .line 252
    .line 253
    move-object v4, v15

    .line 254
    move-object v15, v1

    .line 255
    move-object v1, v13

    .line 256
    goto :goto_8

    .line 257
    :goto_7
    new-instance v15, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;

    .line 258
    .line 259
    const/16 v20, 0x0

    .line 260
    .line 261
    move-object/from16 v17, v4

    .line 262
    .line 263
    move-object/from16 v18, v5

    .line 264
    .line 265
    move-object/from16 v16, v13

    .line 266
    .line 267
    invoke-direct/range {v15 .. v20}, Lnet/blip/shared/SelectionListKt$SelectionList$2$1;-><init>(Lnet/blip/shared/SelectionListState;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v1, v16

    .line 271
    .line 272
    move-object/from16 v4, v19

    .line 273
    .line 274
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :goto_8
    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 278
    .line 279
    invoke-static {v0, v7, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    const/high16 v7, 0x70000000

    .line 287
    .line 288
    and-int/2addr v7, v2

    .line 289
    const/high16 v8, 0x20000000

    .line 290
    .line 291
    if-ne v7, v8, :cond_d

    .line 292
    .line 293
    const/4 v7, 0x1

    .line 294
    goto :goto_9

    .line 295
    :cond_d
    const/4 v7, 0x0

    .line 296
    :goto_9
    or-int/2addr v5, v7

    .line 297
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    if-nez v5, :cond_e

    .line 302
    .line 303
    if-ne v7, v6, :cond_f

    .line 304
    .line 305
    :cond_e
    new-instance v7, Lp2;

    .line 306
    .line 307
    const/16 v5, 0xe

    .line 308
    .line 309
    invoke-direct {v7, v1, v9, v4, v5}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_f
    move-object/from16 v21, v7

    .line 316
    .line 317
    check-cast v21, Lkotlin/jvm/functions/Function1;

    .line 318
    .line 319
    const v4, 0x1fffffe

    .line 320
    .line 321
    .line 322
    and-int/2addr v2, v4

    .line 323
    move-object/from16 v19, v14

    .line 324
    .line 325
    move-object v14, v12

    .line 326
    const/16 v12, 0x100

    .line 327
    .line 328
    const/4 v13, 0x0

    .line 329
    move-object/from16 v20, p0

    .line 330
    .line 331
    move-object/from16 v18, v0

    .line 332
    .line 333
    move-object/from16 v16, v3

    .line 334
    .line 335
    move-object v15, v11

    .line 336
    move v11, v2

    .line 337
    invoke-static/range {v11 .. v22}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(IILandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 338
    .line 339
    .line 340
    move-object v8, v1

    .line 341
    move-object v6, v14

    .line 342
    move-object v4, v15

    .line 343
    move-object/from16 v2, v17

    .line 344
    .line 345
    move-object/from16 v5, v19

    .line 346
    .line 347
    move/from16 v7, v22

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_10
    move-object/from16 v18, v0

    .line 351
    .line 352
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 353
    .line 354
    .line 355
    move-object/from16 v2, p1

    .line 356
    .line 357
    move-object/from16 v4, p3

    .line 358
    .line 359
    move-object/from16 v5, p4

    .line 360
    .line 361
    move-object/from16 v6, p5

    .line 362
    .line 363
    move/from16 v7, p6

    .line 364
    .line 365
    move-object/from16 v8, p7

    .line 366
    .line 367
    :goto_a
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    if-eqz v11, :cond_11

    .line 372
    .line 373
    new-instance v0, Lmd;

    .line 374
    .line 375
    move-object/from16 v1, p0

    .line 376
    .line 377
    move-object/from16 v3, p2

    .line 378
    .line 379
    invoke-direct/range {v0 .. v10}, Lmd;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnet/blip/shared/SelectionListState;Lkotlin/jvm/functions/Function1;I)V

    .line 380
    .line 381
    .line 382
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 383
    .line 384
    :cond_11
    return-void
.end method
