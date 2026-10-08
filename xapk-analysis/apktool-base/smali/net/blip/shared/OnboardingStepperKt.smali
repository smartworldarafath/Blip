.class public abstract Lnet/blip/shared/OnboardingStepperKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/animation/ContentTransform;Landroidx/compose/animation/ContentTransform;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v9, p2

    .line 8
    .line 9
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v3, 0x148afdaa

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/high16 v4, 0x800000

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    move v3, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/high16 v3, 0x400000

    .line 28
    .line 29
    :goto_0
    or-int/2addr v3, v2

    .line 30
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/high16 v6, 0x4000000

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move v5, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/high16 v5, 0x2000000

    .line 41
    .line 42
    :goto_1
    or-int/2addr v3, v5

    .line 43
    const v5, 0x2492493

    .line 44
    .line 45
    .line 46
    and-int/2addr v5, v3

    .line 47
    const v7, 0x2492492

    .line 48
    .line 49
    .line 50
    if-eq v5, v7, :cond_2

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v5, 0x0

    .line 55
    :goto_2
    and-int/lit8 v7, v3, 0x1

    .line 56
    .line 57
    invoke-virtual {v9, v7, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_17

    .line 62
    .line 63
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 64
    .line 65
    .line 66
    and-int/lit8 v5, v2, 0x1

    .line 67
    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 81
    .line 82
    .line 83
    sget-object v5, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 84
    .line 85
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    check-cast v7, Lnet/blip/libblip/Core;

    .line 90
    .line 91
    iget-object v7, v7, Lnet/blip/libblip/Core;->b:Lc;

    .line 92
    .line 93
    invoke-static {v5, v9}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sget-object v11, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    check-cast v11, Lnet/blip/libblip/HardwareInfo;

    .line 104
    .line 105
    iget-object v12, v5, Lnet/blip/libblip/frontend/State;->s:Lnet/blip/libblip/frontend/Onboarding;

    .line 106
    .line 107
    if-eqz v12, :cond_16

    .line 108
    .line 109
    iget-object v12, v12, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 110
    .line 111
    if-eqz v12, :cond_16

    .line 112
    .line 113
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    const/4 v14, 0x0

    .line 118
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 119
    .line 120
    if-ne v13, v15, :cond_5

    .line 121
    .line 122
    new-instance v13, Lkotlin/Pair;

    .line 123
    .line 124
    invoke-direct {v13, v14, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 135
    .line 136
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    if-ne v10, v15, :cond_6

    .line 141
    .line 142
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 152
    .line 153
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v16

    .line 157
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    if-nez v16, :cond_7

    .line 164
    .line 165
    if-ne v14, v15, :cond_9

    .line 166
    .line 167
    :cond_7
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    check-cast v14, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-eqz v14, :cond_8

    .line 178
    .line 179
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-interface {v10, v14}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_8
    new-instance v10, Lkotlin/Pair;

    .line 186
    .line 187
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    check-cast v14, Lkotlin/Pair;

    .line 192
    .line 193
    iget-object v14, v14, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 194
    .line 195
    invoke-direct {v10, v14, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v13, v10}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_9
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    check-cast v10, Lkotlin/Pair;

    .line 209
    .line 210
    iget-object v10, v10, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v10, Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 213
    .line 214
    sget-object v13, Lnet/blip/libblip/OnboardingKt;->a:Ljava/util/List;

    .line 215
    .line 216
    if-eqz v10, :cond_a

    .line 217
    .line 218
    iget-object v14, v10, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    const/4 v14, 0x0

    .line 222
    :goto_5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-interface {v13, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    iget-object v14, v12, Lnet/blip/libblip/frontend/Onboarding$Step;->m:Lnet/blip/libblip/frontend/Onboarding$Step$Kind;

    .line 230
    .line 231
    invoke-interface {v13, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    if-gt v10, v13, :cond_b

    .line 236
    .line 237
    const/4 v10, 0x1

    .line 238
    goto :goto_6

    .line 239
    :cond_b
    const/4 v10, 0x0

    .line 240
    :goto_6
    const-string v13, "OnboardingStep"

    .line 241
    .line 242
    const/16 v14, 0x30

    .line 243
    .line 244
    invoke-static {v12, v13, v9, v14}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/TransitionInstance;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    invoke-virtual {v12}, Landroidx/compose/animation/core/Transition;->g()Z

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 253
    .line 254
    if-eqz v13, :cond_c

    .line 255
    .line 256
    sget-object v13, Lnet/blip/shared/Modifier_DisablePointerInputKt$disablePointerInput$1$1;->a:Lnet/blip/shared/Modifier_DisablePointerInputKt$disablePointerInput$1$1;

    .line 257
    .line 258
    invoke-static {v14, v8, v13}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    .line 259
    .line 260
    .line 261
    move-result-object v14

    .line 262
    :cond_c
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    const/high16 v13, 0x1c00000

    .line 267
    .line 268
    and-int/2addr v13, v3

    .line 269
    const/high16 v16, 0xc00000

    .line 270
    .line 271
    xor-int v13, v13, v16

    .line 272
    .line 273
    if-le v13, v4, :cond_d

    .line 274
    .line 275
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    if-nez v13, :cond_e

    .line 280
    .line 281
    :cond_d
    and-int v13, v3, v16

    .line 282
    .line 283
    if-ne v13, v4, :cond_f

    .line 284
    .line 285
    :cond_e
    const/4 v4, 0x1

    .line 286
    goto :goto_7

    .line 287
    :cond_f
    const/4 v4, 0x0

    .line 288
    :goto_7
    or-int/2addr v4, v8

    .line 289
    const/high16 v8, 0xe000000

    .line 290
    .line 291
    and-int/2addr v8, v3

    .line 292
    const/high16 v13, 0x6000000

    .line 293
    .line 294
    xor-int/2addr v8, v13

    .line 295
    if-le v8, v6, :cond_10

    .line 296
    .line 297
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-nez v8, :cond_11

    .line 302
    .line 303
    :cond_10
    and-int/2addr v3, v13

    .line 304
    if-ne v3, v6, :cond_12

    .line 305
    .line 306
    :cond_11
    const/4 v3, 0x1

    .line 307
    goto :goto_8

    .line 308
    :cond_12
    const/4 v3, 0x0

    .line 309
    :goto_8
    or-int/2addr v3, v4

    .line 310
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    if-nez v3, :cond_13

    .line 315
    .line 316
    if-ne v4, v15, :cond_14

    .line 317
    .line 318
    :cond_13
    new-instance v4, Ls7;

    .line 319
    .line 320
    const/4 v3, 0x2

    .line 321
    invoke-direct {v4, v3, v0, v1, v10}, Ls7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    :cond_14
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 328
    .line 329
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    if-ne v3, v15, :cond_15

    .line 334
    .line 335
    new-instance v3, Lla;

    .line 336
    .line 337
    const/16 v6, 0x16

    .line 338
    .line 339
    invoke-direct {v3, v6}, Lla;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 346
    .line 347
    new-instance v6, Lpc;

    .line 348
    .line 349
    const/4 v8, 0x0

    .line 350
    invoke-direct {v6, v7, v5, v11, v8}, Lpc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 351
    .line 352
    .line 353
    const v5, -0x4e9b142f

    .line 354
    .line 355
    .line 356
    invoke-static {v5, v6, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    const v10, 0x36000

    .line 361
    .line 362
    .line 363
    const/4 v11, 0x4

    .line 364
    const/4 v6, 0x0

    .line 365
    move-object v7, v3

    .line 366
    move-object v5, v4

    .line 367
    move-object v3, v12

    .line 368
    move-object v4, v14

    .line 369
    invoke-static/range {v3 .. v11}, Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 370
    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_16
    invoke-static {}, Lio/sentry/d;->d()V

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 378
    .line 379
    .line 380
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    if-eqz v3, :cond_18

    .line 385
    .line 386
    new-instance v4, La0;

    .line 387
    .line 388
    const/16 v5, 0x1d

    .line 389
    .line 390
    invoke-direct {v4, v2, v5, v0, v1}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 394
    .line 395
    :cond_18
    return-void
.end method
