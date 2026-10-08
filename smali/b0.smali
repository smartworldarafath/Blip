.class public final synthetic Lb0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lb0;->j:I

    iput-object p2, p0, Lb0;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 1
    const/16 p2, 0xb

    .line 2
    .line 3
    iput p2, p0, Lb0;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lb0;->k:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb0;->j:I

    .line 4
    .line 5
    const/high16 v2, 0x42400000    # 48.0f

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 10
    .line 11
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 12
    .line 13
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 14
    .line 15
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 16
    .line 17
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/16 v10, 0x10

    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v12, 0x0

    .line 24
    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    iget-object v0, v0, Lb0;->k:Ljava/lang/Object;

    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 32
    .line 33
    move-object/from16 v1, p1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/Throwable;

    .line 36
    .line 37
    move-object/from16 v1, p2

    .line 38
    .line 39
    check-cast v1, Lkotlin/Unit;

    .line 40
    .line 41
    move-object/from16 v1, p3

    .line 42
    .line 43
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 44
    .line 45
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 46
    .line 47
    invoke-virtual {v1, v0, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v9}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v13

    .line 54
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 55
    .line 56
    move-object/from16 v1, p1

    .line 57
    .line 58
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    .line 59
    .line 60
    move-object/from16 v2, p2

    .line 61
    .line 62
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 63
    .line 64
    move-object/from16 v9, p3

    .line 65
    .line 66
    check-cast v9, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    and-int/lit8 v1, v9, 0x11

    .line 76
    .line 77
    if-eq v1, v10, :cond_0

    .line 78
    .line 79
    move v1, v11

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move v1, v12

    .line 82
    :goto_0
    and-int/2addr v9, v11

    .line 83
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    invoke-virtual {v2, v9, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const/high16 v1, 0x41c00000    # 24.0f

    .line 92
    .line 93
    invoke-static {v8, v1}, Lnet/blip/shared/OutsetParentKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 98
    .line 99
    invoke-static {v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 104
    .line 105
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 118
    .line 119
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 123
    .line 124
    .line 125
    iget-boolean v14, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 126
    .line 127
    if-eqz v14, :cond_1

    .line 128
    .line 129
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v10, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 167
    .line 168
    .line 169
    :goto_2
    return-object v13

    .line 170
    :pswitch_1
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 171
    .line 172
    move-object/from16 v1, p1

    .line 173
    .line 174
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    move-object/from16 v2, p2

    .line 177
    .line 178
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 179
    .line 180
    move-object/from16 v3, p3

    .line 181
    .line 182
    check-cast v3, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 188
    .line 189
    const v3, 0x760d4197

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 193
    .line 194
    .line 195
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 202
    .line 203
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 208
    .line 209
    if-ne v4, v5, :cond_3

    .line 210
    .line 211
    new-instance v4, Landroidx/compose/ui/unit/IntSize;

    .line 212
    .line 213
    const-wide/16 v6, 0x0

    .line 214
    .line 215
    invoke-direct {v4, v6, v7}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 216
    .line 217
    .line 218
    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_3
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 226
    .line 227
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    if-nez v6, :cond_4

    .line 236
    .line 237
    if-ne v7, v5, :cond_5

    .line 238
    .line 239
    :cond_4
    new-instance v7, Ltg;

    .line 240
    .line 241
    invoke-direct {v7, v11, v0, v4}, Ltg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    if-nez v0, :cond_6

    .line 258
    .line 259
    if-ne v6, v5, :cond_7

    .line 260
    .line 261
    :cond_6
    new-instance v6, Lfh;

    .line 262
    .line 263
    invoke-direct {v6, v3, v4, v12}, Lfh;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 270
    .line 271
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->a:Landroidx/compose/animation/core/AnimationVector2D;

    .line 272
    .line 273
    new-instance v0, Landroidx/compose/foundation/text/selection/c;

    .line 274
    .line 275
    invoke-direct {v0, v7, v6}, Landroidx/compose/foundation/text/selection/c;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 283
    .line 284
    .line 285
    return-object v0

    .line 286
    :pswitch_2
    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    .line 287
    .line 288
    move-object/from16 v1, p1

    .line 289
    .line 290
    check-cast v1, Ljava/lang/Throwable;

    .line 291
    .line 292
    move-object/from16 v1, p2

    .line 293
    .line 294
    check-cast v1, Lkotlin/Unit;

    .line 295
    .line 296
    move-object/from16 v1, p3

    .line 297
    .line 298
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 299
    .line 300
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 301
    .line 302
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->d()V

    .line 303
    .line 304
    .line 305
    return-object v13

    .line 306
    :pswitch_3
    check-cast v0, Lnet/blip/libblip/PeerPickerContent;

    .line 307
    .line 308
    move-object/from16 v1, p1

    .line 309
    .line 310
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 311
    .line 312
    move-object/from16 v2, p2

    .line 313
    .line 314
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 315
    .line 316
    move-object/from16 v3, p3

    .line 317
    .line 318
    check-cast v3, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    and-int/lit8 v4, v3, 0x6

    .line 328
    .line 329
    if-nez v4, :cond_9

    .line 330
    .line 331
    move-object v4, v2

    .line 332
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 333
    .line 334
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-eqz v4, :cond_8

    .line 339
    .line 340
    const/4 v4, 0x4

    .line 341
    goto :goto_3

    .line 342
    :cond_8
    const/4 v4, 0x2

    .line 343
    :goto_3
    or-int/2addr v3, v4

    .line 344
    :cond_9
    and-int/lit8 v4, v3, 0x13

    .line 345
    .line 346
    const/16 v5, 0x12

    .line 347
    .line 348
    if-eq v4, v5, :cond_a

    .line 349
    .line 350
    move v12, v11

    .line 351
    :cond_a
    and-int/lit8 v4, v3, 0x1

    .line 352
    .line 353
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 354
    .line 355
    invoke-virtual {v2, v4, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    if-eqz v4, :cond_b

    .line 360
    .line 361
    check-cast v0, Lnet/blip/libblip/PeerPickerContent$SearchResults;

    .line 362
    .line 363
    iget-object v0, v0, Lnet/blip/libblip/PeerPickerContent$SearchResults;->a:Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    xor-int/2addr v0, v11

    .line 370
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    and-int/lit8 v3, v3, 0xe

    .line 375
    .line 376
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    sget-object v4, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 381
    .line 382
    invoke-virtual {v4, v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 387
    .line 388
    .line 389
    :goto_4
    return-object v13

    .line 390
    :pswitch_4
    move-object v14, v0

    .line 391
    check-cast v14, Landroidx/compose/ui/Modifier;

    .line 392
    .line 393
    move-object/from16 v0, p1

    .line 394
    .line 395
    check-cast v0, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 396
    .line 397
    move-object/from16 v1, p2

    .line 398
    .line 399
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 400
    .line 401
    move-object/from16 v8, p3

    .line 402
    .line 403
    check-cast v8, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    and-int/lit8 v0, v8, 0x11

    .line 413
    .line 414
    if-eq v0, v10, :cond_c

    .line 415
    .line 416
    move v0, v11

    .line 417
    goto :goto_5

    .line 418
    :cond_c
    move v0, v12

    .line 419
    :goto_5
    and-int/2addr v8, v11

    .line 420
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 421
    .line 422
    invoke-virtual {v1, v8, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_f

    .line 427
    .line 428
    const/high16 v0, 0x3f800000    # 1.0f

    .line 429
    .line 430
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v1, v0}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->b(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v1, v0}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 443
    .line 444
    invoke-static {v8, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    iget-wide v11, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 449
    .line 450
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 451
    .line 452
    .line 453
    move-result v10

    .line 454
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 455
    .line 456
    .line 457
    move-result-object v11

    .line 458
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 463
    .line 464
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 468
    .line 469
    .line 470
    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 471
    .line 472
    if-eqz v12, :cond_d

    .line 473
    .line 474
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 479
    .line 480
    .line 481
    :goto_6
    invoke-static {v1, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v1, v11, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    invoke-static {v1, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 492
    .line 493
    .line 494
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 498
    .line 499
    .line 500
    const/16 v0, 0x64

    .line 501
    .line 502
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 503
    .line 504
    .line 505
    move-result-object v16

    .line 506
    const-wide/16 v17, 0x0

    .line 507
    .line 508
    const/16 v19, 0x1c

    .line 509
    .line 510
    const/high16 v15, 0x40c00000    # 6.0f

    .line 511
    .line 512
    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    const-wide v9, 0xf2626262L

    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 522
    .line 523
    .line 524
    move-result-wide v9

    .line 525
    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 526
    .line 527
    invoke-static {v0, v9, v10, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    const/4 v2, 0x0

    .line 536
    invoke-static {v8, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 537
    .line 538
    .line 539
    move-result-object v8

    .line 540
    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 541
    .line 542
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 547
    .line 548
    .line 549
    move-result-object v9

    .line 550
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 555
    .line 556
    .line 557
    iget-boolean v10, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 558
    .line 559
    if-eqz v10, :cond_e

    .line 560
    .line 561
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 562
    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 566
    .line 567
    .line 568
    :goto_7
    invoke-static {v1, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 569
    .line 570
    .line 571
    invoke-static {v1, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 572
    .line 573
    .line 574
    invoke-static {v2, v1, v4, v1}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 575
    .line 576
    .line 577
    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 578
    .line 579
    .line 580
    const/16 v20, 0x0

    .line 581
    .line 582
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    sget-object v2, Lnet/blip/android/ui/home/ComposableSingletons$ConnectionStatusHUDKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 587
    .line 588
    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    const/4 v0, 0x1

    .line 592
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 596
    .line 597
    .line 598
    goto :goto_8

    .line 599
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 600
    .line 601
    .line 602
    :goto_8
    return-object v13

    .line 603
    :pswitch_5
    check-cast v0, Landroidx/compose/runtime/State;

    .line 604
    .line 605
    move-object/from16 v1, p1

    .line 606
    .line 607
    check-cast v1, Landroid/net/Uri;

    .line 608
    .line 609
    move-object/from16 v2, p2

    .line 610
    .line 611
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 612
    .line 613
    move-object/from16 v3, p3

    .line 614
    .line 615
    check-cast v3, Ljava/lang/Integer;

    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    check-cast v0, Ljava/lang/Number;

    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    and-int/lit8 v3, v3, 0xe

    .line 635
    .line 636
    invoke-static {v1, v0, v2, v3}, Lnet/blip/android/ui/gallery/GalleryScreenKt;->a(Landroid/net/Uri;FLandroidx/compose/runtime/Composer;I)V

    .line 637
    .line 638
    .line 639
    return-object v13

    .line 640
    :pswitch_6
    check-cast v0, Lra;

    .line 641
    .line 642
    move-object/from16 v1, p1

    .line 643
    .line 644
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 645
    .line 646
    move-object/from16 v1, p2

    .line 647
    .line 648
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 649
    .line 650
    move-object/from16 v2, p3

    .line 651
    .line 652
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 653
    .line 654
    sget v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    .line 655
    .line 656
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 657
    .line 658
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 659
    .line 660
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0, v3}, Lra;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    return-object v13

    .line 667
    :pswitch_7
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;

    .line 668
    .line 669
    move-object/from16 v1, p1

    .line 670
    .line 671
    check-cast v1, Ljava/lang/Integer;

    .line 672
    .line 673
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    move-object/from16 v2, p2

    .line 678
    .line 679
    check-cast v2, Ljava/lang/Integer;

    .line 680
    .line 681
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    move-object/from16 v3, p3

    .line 686
    .line 687
    check-cast v3, Ljava/lang/Boolean;

    .line 688
    .line 689
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    if-eqz v3, :cond_10

    .line 694
    .line 695
    goto :goto_9

    .line 696
    :cond_10
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->D:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 697
    .line 698
    invoke-interface {v4, v1}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    :goto_9
    if-eqz v3, :cond_11

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_11
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->D:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 706
    .line 707
    invoke-interface {v4, v2}, Landroidx/compose/ui/text/input/OffsetMapping;->a(I)I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    :goto_a
    iget-boolean v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->C:Z

    .line 712
    .line 713
    if-nez v4, :cond_12

    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_12
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 717
    .line 718
    iget-wide v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 719
    .line 720
    sget v6, Landroidx/compose/ui/text/TextRange;->c:I

    .line 721
    .line 722
    const/16 v6, 0x20

    .line 723
    .line 724
    shr-long v6, v4, v6

    .line 725
    .line 726
    long-to-int v6, v6

    .line 727
    if-ne v1, v6, :cond_13

    .line 728
    .line 729
    const-wide v6, 0xffffffffL

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    and-long/2addr v4, v6

    .line 735
    long-to-int v4, v4

    .line 736
    if-ne v2, v4, :cond_13

    .line 737
    .line 738
    :goto_b
    const/4 v11, 0x0

    .line 739
    goto :goto_e

    .line 740
    :cond_13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 741
    .line 742
    .line 743
    move-result v4

    .line 744
    if-ltz v4, :cond_16

    .line 745
    .line 746
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 751
    .line 752
    iget-object v5, v5, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 753
    .line 754
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 755
    .line 756
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 757
    .line 758
    .line 759
    move-result v5

    .line 760
    if-gt v4, v5, :cond_16

    .line 761
    .line 762
    if-nez v3, :cond_15

    .line 763
    .line 764
    if-ne v1, v2, :cond_14

    .line 765
    .line 766
    goto :goto_c

    .line 767
    :cond_14
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->E:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 768
    .line 769
    const/4 v4, 0x1

    .line 770
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->h(Z)V

    .line 771
    .line 772
    .line 773
    goto :goto_d

    .line 774
    :cond_15
    :goto_c
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->E:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 775
    .line 776
    const/4 v4, 0x0

    .line 777
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 778
    .line 779
    .line 780
    sget-object v4, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 781
    .line 782
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 783
    .line 784
    .line 785
    :goto_d
    iget-object v3, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->B:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 786
    .line 787
    iget-object v3, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 788
    .line 789
    new-instance v4, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 790
    .line 791
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->A:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 792
    .line 793
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 794
    .line 795
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 796
    .line 797
    .line 798
    move-result-wide v1

    .line 799
    invoke-direct {v4, v0, v1, v2, v9}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v3, v4}, Lt6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    const/4 v11, 0x1

    .line 806
    goto :goto_e

    .line 807
    :cond_16
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;->E:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 808
    .line 809
    const/4 v4, 0x0

    .line 810
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->u(Z)V

    .line 811
    .line 812
    .line 813
    sget-object v1, Landroidx/compose/foundation/text/HandleState;->j:Landroidx/compose/foundation/text/HandleState;

    .line 814
    .line 815
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->r(Landroidx/compose/foundation/text/HandleState;)V

    .line 816
    .line 817
    .line 818
    move v11, v4

    .line 819
    :goto_e
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    return-object v0

    .line 824
    :pswitch_8
    check-cast v0, Llh;

    .line 825
    .line 826
    move-object/from16 v1, p1

    .line 827
    .line 828
    check-cast v1, Ljava/lang/Throwable;

    .line 829
    .line 830
    move-object/from16 v2, p3

    .line 831
    .line 832
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 833
    .line 834
    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->o:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 835
    .line 836
    invoke-virtual {v0, v1}, Llh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    return-object v13

    .line 840
    :pswitch_9
    move v4, v12

    .line 841
    move-object v9, v0

    .line 842
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 843
    .line 844
    move-object/from16 v0, p1

    .line 845
    .line 846
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 847
    .line 848
    move-object/from16 v1, p2

    .line 849
    .line 850
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 851
    .line 852
    move-object/from16 v3, p3

    .line 853
    .line 854
    check-cast v3, Ljava/lang/Integer;

    .line 855
    .line 856
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 857
    .line 858
    .line 859
    move-result v3

    .line 860
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 861
    .line 862
    .line 863
    and-int/lit8 v0, v3, 0x11

    .line 864
    .line 865
    if-eq v0, v10, :cond_17

    .line 866
    .line 867
    const/4 v12, 0x1

    .line 868
    :goto_f
    const/16 v21, 0x1

    .line 869
    .line 870
    goto :goto_10

    .line 871
    :cond_17
    move v12, v4

    .line 872
    goto :goto_f

    .line 873
    :goto_10
    and-int/lit8 v0, v3, 0x1

    .line 874
    .line 875
    move-object v10, v1

    .line 876
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 877
    .line 878
    invoke-virtual {v10, v0, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    if-eqz v0, :cond_18

    .line 883
    .line 884
    const/high16 v0, 0x42800000    # 64.0f

    .line 885
    .line 886
    invoke-static {v8, v0, v2}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    invoke-static {}, Landroidx/compose/material/icons/rounded/CloudOffKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    const/16 v11, 0x6d86

    .line 895
    .line 896
    const/16 v12, 0x20

    .line 897
    .line 898
    const-string v5, "Search Failed"

    .line 899
    .line 900
    const-string v6, "You may not be seeing all results. Check your internet connection."

    .line 901
    .line 902
    const-string v7, "Try again"

    .line 903
    .line 904
    const/4 v8, 0x0

    .line 905
    invoke-static/range {v3 .. v12}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 906
    .line 907
    .line 908
    goto :goto_11

    .line 909
    :cond_18
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 910
    .line 911
    .line 912
    :goto_11
    return-object v13

    .line 913
    :pswitch_a
    move v4, v12

    .line 914
    check-cast v0, Lkotlin/Pair;

    .line 915
    .line 916
    move-object/from16 v1, p1

    .line 917
    .line 918
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 919
    .line 920
    move-object/from16 v2, p2

    .line 921
    .line 922
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 923
    .line 924
    move-object/from16 v3, p3

    .line 925
    .line 926
    check-cast v3, Ljava/lang/Integer;

    .line 927
    .line 928
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 933
    .line 934
    .line 935
    and-int/lit8 v1, v3, 0x11

    .line 936
    .line 937
    if-eq v1, v10, :cond_19

    .line 938
    .line 939
    const/4 v12, 0x1

    .line 940
    :goto_12
    const/16 v21, 0x1

    .line 941
    .line 942
    goto :goto_13

    .line 943
    :cond_19
    move v12, v4

    .line 944
    goto :goto_12

    .line 945
    :goto_13
    and-int/lit8 v1, v3, 0x1

    .line 946
    .line 947
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 948
    .line 949
    invoke-virtual {v2, v1, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 950
    .line 951
    .line 952
    move-result v1

    .line 953
    if-eqz v1, :cond_1a

    .line 954
    .line 955
    iget-object v0, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 956
    .line 957
    move-object v14, v0

    .line 958
    check-cast v14, Ljava/lang/String;

    .line 959
    .line 960
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 961
    .line 962
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 967
    .line 968
    iget-object v15, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 969
    .line 970
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 971
    .line 972
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 977
    .line 978
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 979
    .line 980
    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 981
    .line 982
    .line 983
    move-result-wide v18

    .line 984
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 985
    .line 986
    const/16 v26, 0x0

    .line 987
    .line 988
    const v27, 0xfffff8

    .line 989
    .line 990
    .line 991
    const-wide/16 v21, 0x0

    .line 992
    .line 993
    const-wide/16 v23, 0x0

    .line 994
    .line 995
    const/16 v25, 0x0

    .line 996
    .line 997
    move-wide/from16 v16, v0

    .line 998
    .line 999
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v16

    .line 1003
    const/16 v23, 0x0

    .line 1004
    .line 1005
    const/16 v24, 0x1fa

    .line 1006
    .line 1007
    const/4 v15, 0x0

    .line 1008
    const/16 v17, 0x0

    .line 1009
    .line 1010
    const/16 v18, 0x0

    .line 1011
    .line 1012
    const/16 v19, 0x0

    .line 1013
    .line 1014
    const/16 v20, 0x0

    .line 1015
    .line 1016
    const/16 v21, 0x0

    .line 1017
    .line 1018
    move-object/from16 v22, v2

    .line 1019
    .line 1020
    invoke-static/range {v14 .. v24}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1021
    .line 1022
    .line 1023
    goto :goto_14

    .line 1024
    :cond_1a
    move-object/from16 v22, v2

    .line 1025
    .line 1026
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1027
    .line 1028
    .line 1029
    :goto_14
    return-object v13

    .line 1030
    nop

    .line 1031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
