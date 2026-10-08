.class public abstract Landroidx/compose/ui/viewinterop/AndroidView_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lh;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a:Lh;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V
    .locals 22

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v9, p1

    .line 8
    .line 9
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, -0xabaf393

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v0, 0x6

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

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
    or-int/2addr v2, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v2, v0

    .line 33
    :goto_1
    and-int/lit8 v3, v0, 0x30

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v2, v3

    .line 49
    :cond_3
    or-int/lit16 v2, v2, 0x180

    .line 50
    .line 51
    and-int/lit16 v3, v0, 0xc00

    .line 52
    .line 53
    sget-object v12, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a:Lh;

    .line 54
    .line 55
    if-nez v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    const/16 v3, 0x800

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    const/16 v3, 0x400

    .line 67
    .line 68
    :goto_3
    or-int/2addr v2, v3

    .line 69
    :cond_5
    and-int/lit16 v3, v0, 0x6000

    .line 70
    .line 71
    if-nez v3, :cond_7

    .line 72
    .line 73
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    const/16 v3, 0x4000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v3, 0x2000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v2, v3

    .line 85
    :cond_7
    and-int/lit16 v3, v2, 0x2493

    .line 86
    .line 87
    const/16 v5, 0x2492

    .line 88
    .line 89
    if-eq v3, v5, :cond_8

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    goto :goto_5

    .line 93
    :cond_8
    const/4 v3, 0x0

    .line 94
    :goto_5
    and-int/lit8 v5, v2, 0x1

    .line 95
    .line 96
    invoke-virtual {v9, v5, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_f

    .line 101
    .line 102
    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 103
    .line 104
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    sget-object v3, Landroidx/compose/ui/viewinterop/FocusGroupPropertiesElement;->b:Landroidx/compose/ui/viewinterop/FocusGroupPropertiesElement;

    .line 109
    .line 110
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v5, Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;->b:Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;

    .line 115
    .line 116
    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    sget-object v5, Landroidx/compose/ui/viewinterop/FocusTargetPropertiesElement;->b:Landroidx/compose/ui/viewinterop/FocusTargetPropertiesElement;

    .line 121
    .line 122
    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    sget-object v5, Landroidx/compose/ui/viewinterop/FocusTargetInteropElement;->b:Landroidx/compose/ui/viewinterop/FocusTargetInteropElement;

    .line 127
    .line 128
    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v9, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 137
    .line 138
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 143
    .line 144
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 145
    .line 146
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 151
    .line 152
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    sget-object v8, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 157
    .line 158
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    check-cast v8, Landroidx/lifecycle/LifecycleOwner;

    .line 163
    .line 164
    sget-object v13, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 165
    .line 166
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    check-cast v13, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 171
    .line 172
    const v10, 0x4e5ddecf    # 9.3059168E8f

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 176
    .line 177
    .line 178
    and-int/lit8 v2, v2, 0xe

    .line 179
    .line 180
    move/from16 v16, v15

    .line 181
    .line 182
    iget-wide v14, v9, Landroidx/compose/runtime/GapComposer;->T:J

    .line 183
    .line 184
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    sget-object v15, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 189
    .line 190
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    check-cast v15, Landroid/content/Context;

    .line 195
    .line 196
    move-object/from16 v17, v5

    .line 197
    .line 198
    invoke-static {v9}, Landroidx/compose/runtime/ComposablesKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    sget-object v10, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 203
    .line 204
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    check-cast v10, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 209
    .line 210
    sget-object v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 211
    .line 212
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    check-cast v11, Landroid/view/View;

    .line 217
    .line 218
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v18

    .line 222
    and-int/lit8 v19, v2, 0xe

    .line 223
    .line 224
    move-object/from16 v20, v15

    .line 225
    .line 226
    const/16 v21, 0x6

    .line 227
    .line 228
    xor-int/lit8 v15, v19, 0x6

    .line 229
    .line 230
    move/from16 v19, v2

    .line 231
    .line 232
    const/4 v2, 0x4

    .line 233
    if-le v15, v2, :cond_9

    .line 234
    .line 235
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v15

    .line 239
    if-nez v15, :cond_a

    .line 240
    .line 241
    :cond_9
    and-int/lit8 v15, v19, 0x6

    .line 242
    .line 243
    if-ne v15, v2, :cond_b

    .line 244
    .line 245
    :cond_a
    const/4 v2, 0x1

    .line 246
    goto :goto_6

    .line 247
    :cond_b
    const/4 v2, 0x0

    .line 248
    :goto_6
    or-int v2, v18, v2

    .line 249
    .line 250
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    or-int/2addr v2, v15

    .line 255
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    or-int/2addr v2, v15

    .line 260
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    or-int/2addr v2, v15

    .line 265
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    or-int/2addr v2, v15

    .line 270
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v15

    .line 274
    if-nez v2, :cond_d

    .line 275
    .line 276
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 277
    .line 278
    if-ne v15, v2, :cond_c

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_c
    move-object v11, v3

    .line 282
    move-object v10, v8

    .line 283
    move-object v2, v15

    .line 284
    move-object/from16 v14, v17

    .line 285
    .line 286
    move-object v15, v6

    .line 287
    move-object/from16 v17, v7

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_d
    :goto_7
    new-instance v2, Lr2;

    .line 291
    .line 292
    move-object/from16 v15, v17

    .line 293
    .line 294
    move-object/from16 v17, v7

    .line 295
    .line 296
    move v7, v14

    .line 297
    move-object v14, v15

    .line 298
    move-object v15, v6

    .line 299
    move-object v6, v10

    .line 300
    move-object v10, v8

    .line 301
    move-object v8, v11

    .line 302
    move-object v11, v3

    .line 303
    move-object/from16 v3, v20

    .line 304
    .line 305
    invoke-direct/range {v2 .. v8}, Lr2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer$CompositionContextImpl;Landroidx/compose/runtime/saveable/SaveableStateRegistry;ILandroid/view/View;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :goto_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 312
    .line 313
    const/16 v3, 0x7d

    .line 314
    .line 315
    const/4 v5, 0x0

    .line 316
    const/4 v6, 0x1

    .line 317
    invoke-virtual {v9, v3, v6, v5, v5}, Landroidx/compose/runtime/GapComposer;->R(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iput-boolean v6, v9, Landroidx/compose/runtime/GapComposer;->r:Z

    .line 321
    .line 322
    move-object/from16 v3, v17

    .line 323
    .line 324
    iget-boolean v5, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 325
    .line 326
    if-eqz v5, :cond_e

    .line 327
    .line 328
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 333
    .line 334
    .line 335
    :goto_9
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 341
    .line 342
    invoke-static {v9, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 343
    .line 344
    .line 345
    new-instance v2, Lk0;

    .line 346
    .line 347
    const/4 v3, 0x4

    .line 348
    invoke-direct {v2, v3}, Lk0;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v9, v11, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    new-instance v2, Lk0;

    .line 355
    .line 356
    const/4 v3, 0x5

    .line 357
    invoke-direct {v2, v3}, Lk0;-><init>(I)V

    .line 358
    .line 359
    .line 360
    invoke-static {v9, v14, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 361
    .line 362
    .line 363
    new-instance v2, Lk0;

    .line 364
    .line 365
    move/from16 v3, v21

    .line 366
    .line 367
    invoke-direct {v2, v3}, Lk0;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-static {v9, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 371
    .line 372
    .line 373
    new-instance v2, Lk0;

    .line 374
    .line 375
    const/4 v3, 0x7

    .line 376
    invoke-direct {v2, v3}, Lk0;-><init>(I)V

    .line 377
    .line 378
    .line 379
    invoke-static {v9, v13, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 380
    .line 381
    .line 382
    new-instance v2, Lk0;

    .line 383
    .line 384
    const/4 v10, 0x1

    .line 385
    invoke-direct {v2, v10}, Lk0;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-static {v9, v15, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 389
    .line 390
    .line 391
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 396
    .line 397
    invoke-static {v9, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 398
    .line 399
    .line 400
    new-instance v2, Lk0;

    .line 401
    .line 402
    const/4 v3, 0x2

    .line 403
    invoke-direct {v2, v3}, Lk0;-><init>(I)V

    .line 404
    .line 405
    .line 406
    invoke-static {v9, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Lk0;

    .line 410
    .line 411
    const/4 v3, 0x3

    .line 412
    invoke-direct {v2, v3}, Lk0;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-static {v9, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    const/4 v10, 0x1

    .line 419
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 420
    .line 421
    .line 422
    const/4 v2, 0x0

    .line 423
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 424
    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 428
    .line 429
    .line 430
    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    if-eqz v2, :cond_10

    .line 435
    .line 436
    new-instance v3, Lq2;

    .line 437
    .line 438
    invoke-direct {v3, v4, v1, v0}, Lq2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 439
    .line 440
    .line 441
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 442
    .line 443
    :cond_10
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x6a521d79

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p4

    .line 19
    or-int/lit16 v0, v0, 0x1b0

    .line 20
    .line 21
    and-int/lit16 v1, v0, 0x93

    .line 22
    .line 23
    const/16 v2, 0x92

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    and-int/lit8 p1, v0, 0xe

    .line 39
    .line 40
    or-int/lit16 p1, p1, 0x6c30

    .line 41
    .line 42
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 43
    .line 44
    invoke-static {p1, p3, p2, p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->a:Lh;

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    move-object v2, p2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 53
    .line 54
    .line 55
    move-object v2, p1

    .line 56
    move-object v3, p2

    .line 57
    :goto_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    new-instance v0, Lu;

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    move-object v1, p0

    .line 67
    move v4, p4

    .line 68
    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public static final c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Required value was null."

    .line 7
    .line 8
    invoke-static {p0}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method
