.class public abstract Landroidx/activity/compose/BackHandlerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v7, p2

    .line 8
    .line 9
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v3, -0x158b58d6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    or-int/lit8 v5, v1, 0x6

    .line 23
    .line 24
    move v6, v5

    .line 25
    move/from16 v5, p0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move/from16 v5, p0

    .line 29
    .line 30
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    move v6, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v6, 0x2

    .line 39
    :goto_0
    or-int/2addr v6, v1

    .line 40
    :goto_1
    and-int/lit8 v8, v1, 0x30

    .line 41
    .line 42
    const/16 v9, 0x20

    .line 43
    .line 44
    if-nez v8, :cond_3

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    move v8, v9

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v8, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v6, v8

    .line 57
    :cond_3
    and-int/lit8 v8, v6, 0x13

    .line 58
    .line 59
    const/16 v10, 0x12

    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    if-eq v8, v10, :cond_4

    .line 63
    .line 64
    const/4 v8, 0x1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    move v8, v11

    .line 67
    :goto_3
    and-int/lit8 v10, v6, 0x1

    .line 68
    .line 69
    invoke-virtual {v7, v10, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_20

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    const/4 v10, 0x1

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move v10, v5

    .line 80
    :goto_4
    sget-object v3, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 81
    .line 82
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    if-nez v3, :cond_e

    .line 90
    .line 91
    const v3, 0x1fe7a4b1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 95
    .line 96
    .line 97
    sget-object v3, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 104
    .line 105
    if-nez v3, :cond_a

    .line 106
    .line 107
    const v3, 0x48071ead

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 111
    .line 112
    .line 113
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 114
    .line 115
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :goto_5
    if-eqz v3, :cond_9

    .line 125
    .line 126
    const v8, 0x7f0a0208

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    instance-of v13, v8, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 134
    .line 135
    if-eqz v13, :cond_6

    .line 136
    .line 137
    check-cast v8, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_6
    move-object v8, v5

    .line 141
    :goto_6
    if-eqz v8, :cond_7

    .line 142
    .line 143
    move-object v3, v8

    .line 144
    goto :goto_7

    .line 145
    :cond_7
    invoke-static {v3}, Landroidx/core/viewtree/ViewTree;->a(Landroid/view/View;)Landroid/view/ViewParent;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    instance-of v8, v3, Landroid/view/View;

    .line 150
    .line 151
    if-eqz v8, :cond_8

    .line 152
    .line 153
    check-cast v3, Landroid/view/View;

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_8
    move-object v3, v5

    .line 157
    goto :goto_5

    .line 158
    :cond_9
    move-object v3, v5

    .line 159
    :goto_7
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_a
    const v8, 0x4807151c

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :goto_8
    if-nez v3, :cond_d

    .line 171
    .line 172
    const v3, 0x48072680    # 138394.0f

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 176
    .line 177
    .line 178
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 179
    .line 180
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    check-cast v3, Landroid/content/Context;

    .line 185
    .line 186
    :goto_9
    instance-of v8, v3, Landroid/content/ContextWrapper;

    .line 187
    .line 188
    if-eqz v8, :cond_c

    .line 189
    .line 190
    instance-of v8, v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 191
    .line 192
    if-eqz v8, :cond_b

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_b
    check-cast v3, Landroid/content/ContextWrapper;

    .line 196
    .line 197
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    goto :goto_9

    .line 202
    :cond_c
    move-object v3, v5

    .line 203
    :goto_a
    check-cast v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 204
    .line 205
    :goto_b
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 206
    .line 207
    .line 208
    goto :goto_c

    .line 209
    :cond_d
    const v8, 0x4807156d

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_b

    .line 216
    :goto_c
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 217
    .line 218
    .line 219
    goto :goto_d

    .line 220
    :cond_e
    const v8, 0x1fe7996e

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_c

    .line 227
    :goto_d
    if-eqz v3, :cond_1f

    .line 228
    .line 229
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 238
    .line 239
    if-nez v8, :cond_f

    .line 240
    .line 241
    if-ne v13, v14, :cond_14

    .line 242
    .line 243
    :cond_f
    new-instance v13, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 244
    .line 245
    instance-of v8, v3, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    .line 246
    .line 247
    if-eqz v8, :cond_10

    .line 248
    .line 249
    move-object v8, v3

    .line 250
    check-cast v8, Landroidx/navigationevent/NavigationEventDispatcherOwner;

    .line 251
    .line 252
    goto :goto_e

    .line 253
    :cond_10
    move-object v8, v5

    .line 254
    :goto_e
    if-eqz v8, :cond_11

    .line 255
    .line 256
    invoke-interface {v8}, Landroidx/navigationevent/NavigationEventDispatcherOwner;->b()Landroidx/navigationevent/NavigationEventDispatcher;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    goto :goto_f

    .line 261
    :cond_11
    move-object v8, v5

    .line 262
    :goto_f
    instance-of v15, v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 263
    .line 264
    if-eqz v15, :cond_12

    .line 265
    .line 266
    move-object v15, v3

    .line 267
    check-cast v15, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 268
    .line 269
    goto :goto_10

    .line 270
    :cond_12
    move-object v15, v5

    .line 271
    :goto_10
    if-eqz v15, :cond_13

    .line 272
    .line 273
    invoke-interface {v15}, Landroidx/activity/OnBackPressedDispatcherOwner;->a()Landroidx/activity/OnBackPressedDispatcher;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    :cond_13
    invoke-direct {v13, v8, v5}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;-><init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_14
    check-cast v13, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    .line 284
    .line 285
    iget-wide v11, v7, Landroidx/compose/runtime/GapComposer;->T:J

    .line 286
    .line 287
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    invoke-virtual {v7, v11, v12}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 292
    .line 293
    .line 294
    move-result v15

    .line 295
    or-int/2addr v5, v15

    .line 296
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    if-nez v5, :cond_15

    .line 301
    .line 302
    if-ne v15, v14, :cond_16

    .line 303
    .line 304
    :cond_15
    new-instance v15, Landroidx/activity/compose/ComposeBackHandler;

    .line 305
    .line 306
    new-instance v5, Landroidx/activity/compose/BackHandlerInfo;

    .line 307
    .line 308
    invoke-direct {v5, v11, v12, v3}, Landroidx/activity/compose/BackHandlerInfo;-><init>(JLjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-direct {v15, v5}, Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V

    .line 312
    .line 313
    .line 314
    new-instance v3, Ln;

    .line 315
    .line 316
    const/16 v5, 0x13

    .line 317
    .line 318
    invoke-direct {v3, v5}, Ln;-><init>(I)V

    .line 319
    .line 320
    .line 321
    iput-object v3, v15, Landroidx/activity/compose/ComposeBackHandler;->c:Lkotlin/jvm/functions/Function0;

    .line 322
    .line 323
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_16
    check-cast v15, Landroidx/activity/compose/ComposeBackHandler;

    .line 327
    .line 328
    const v3, -0x22e316cc

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    and-int/lit8 v5, v6, 0x70

    .line 339
    .line 340
    if-ne v5, v9, :cond_17

    .line 341
    .line 342
    const/4 v5, 0x1

    .line 343
    goto :goto_11

    .line 344
    :cond_17
    const/4 v5, 0x0

    .line 345
    :goto_11
    or-int/2addr v3, v5

    .line 346
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    if-nez v3, :cond_18

    .line 351
    .line 352
    if-ne v5, v14, :cond_19

    .line 353
    .line 354
    :cond_18
    new-instance v5, Landroidx/activity/compose/a;

    .line 355
    .line 356
    invoke-direct {v5, v15, v0}, Landroidx/activity/compose/a;-><init>(Landroidx/activity/compose/ComposeBackHandler;Lkotlin/jvm/functions/Function0;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 363
    .line 364
    invoke-static {v5, v7}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    and-int/lit8 v6, v6, 0xe

    .line 376
    .line 377
    if-ne v6, v4, :cond_1a

    .line 378
    .line 379
    const/4 v12, 0x1

    .line 380
    goto :goto_12

    .line 381
    :cond_1a
    const/4 v12, 0x0

    .line 382
    :goto_12
    or-int v4, v5, v12

    .line 383
    .line 384
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    if-nez v4, :cond_1b

    .line 389
    .line 390
    if-ne v5, v14, :cond_1c

    .line 391
    .line 392
    :cond_1b
    new-instance v5, Landroidx/activity/compose/b;

    .line 393
    .line 394
    invoke-direct {v5, v15, v10}, Landroidx/activity/compose/b;-><init>(Landroidx/activity/compose/ComposeBackHandler;Z)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_1c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 401
    .line 402
    move v8, v6

    .line 403
    move-object v6, v5

    .line 404
    const/4 v5, 0x0

    .line 405
    move-object v4, v15

    .line 406
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/compose/LifecycleEffectKt;->a(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    or-int/2addr v3, v5

    .line 418
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    if-nez v3, :cond_1d

    .line 423
    .line 424
    if-ne v5, v14, :cond_1e

    .line 425
    .line 426
    :cond_1d
    new-instance v5, Landroidx/activity/compose/c;

    .line 427
    .line 428
    invoke-direct {v5, v13, v4}, Landroidx/activity/compose/c;-><init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    :cond_1e
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 435
    .line 436
    invoke-static {v13, v4, v5, v7}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 437
    .line 438
    .line 439
    const/4 v3, 0x0

    .line 440
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 441
    .line 442
    .line 443
    move v5, v10

    .line 444
    goto :goto_13

    .line 445
    :cond_1f
    const-string v0, "No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two."

    .line 446
    .line 447
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :cond_20
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 452
    .line 453
    .line 454
    :goto_13
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    if-eqz v3, :cond_21

    .line 459
    .line 460
    new-instance v4, La4;

    .line 461
    .line 462
    invoke-direct {v4, v5, v0, v1, v2}, La4;-><init>(ZLkotlin/jvm/functions/Function0;II)V

    .line 463
    .line 464
    .line 465
    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 466
    .line 467
    :cond_21
    return-void
.end method
