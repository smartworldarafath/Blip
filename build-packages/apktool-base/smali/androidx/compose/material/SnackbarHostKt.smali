.class public abstract Landroidx/compose/material/SnackbarHostKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x50b985f0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p2, 0x6

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    and-int/lit8 v0, p2, 0x8

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x2

    .line 32
    :goto_1
    or-int/2addr v0, p2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v0, p2

    .line 35
    :goto_2
    and-int/lit8 v2, p2, 0x30

    .line 36
    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    const/16 v2, 0x10

    .line 49
    .line 50
    :goto_3
    or-int/2addr v0, v2

    .line 51
    :cond_4
    and-int/lit16 v2, p2, 0x180

    .line 52
    .line 53
    if-nez v2, :cond_6

    .line 54
    .line 55
    sget-object v2, Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    const/16 v2, 0x100

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_5
    const/16 v2, 0x80

    .line 67
    .line 68
    :goto_4
    or-int/2addr v0, v2

    .line 69
    :cond_6
    and-int/lit16 v2, v0, 0x93

    .line 70
    .line 71
    const/16 v3, 0x92

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    const/4 v5, 0x0

    .line 75
    if-eq v2, v3, :cond_7

    .line 76
    .line 77
    move v2, v4

    .line 78
    goto :goto_5

    .line 79
    :cond_7
    move v2, v5

    .line 80
    :goto_5
    and-int/2addr v0, v4

    .line 81
    invoke-virtual {p1, v0, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_15

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 92
    .line 93
    if-ne v0, v2, :cond_8

    .line 94
    .line 95
    new-instance v0, Landroidx/compose/material/FadeInFadeOutState;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v2, Ljava/lang/Object;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Landroidx/compose/material/FadeInFadeOutState;->a:Ljava/lang/Object;

    .line 106
    .line 107
    new-instance v2, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v2, v0, Landroidx/compose/material/FadeInFadeOutState;->b:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_8
    check-cast v0, Landroidx/compose/material/FadeInFadeOutState;

    .line 118
    .line 119
    const/4 v2, 0x7

    .line 120
    invoke-static {v2, p1}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, v0, Landroidx/compose/material/FadeInFadeOutState;->a:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v6, v0, Landroidx/compose/material/FadeInFadeOutState;->b:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_f

    .line 133
    .line 134
    const v3, 0x58f55df

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 138
    .line 139
    .line 140
    iput-object v1, v0, Landroidx/compose/material/FadeInFadeOutState;->a:Ljava/lang/Object;

    .line 141
    .line 142
    new-instance v3, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    move v8, v5

    .line 156
    :goto_6
    if-ge v8, v7, :cond_9

    .line 157
    .line 158
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 163
    .line 164
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    add-int/lit8 v8, v8, 0x1

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_a

    .line 183
    .line 184
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 188
    .line 189
    .line 190
    new-instance v3, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    move v9, v5

    .line 204
    :goto_7
    if-ge v9, v8, :cond_c

    .line 205
    .line 206
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    if-eqz v10, :cond_b

    .line 211
    .line 212
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    move v9, v5

    .line 223
    :goto_8
    if-ge v9, v8, :cond_e

    .line 224
    .line 225
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    if-nez v10, :cond_d

    .line 230
    .line 231
    new-instance v10, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 232
    .line 233
    new-instance v11, Landroidx/compose/material/i;

    .line 234
    .line 235
    invoke-direct {v11, v7, v0, v2}, Landroidx/compose/material/i;-><init>(Ljava/util/ArrayList;Landroidx/compose/material/FadeInFadeOutState;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const v12, -0x3d89679e

    .line 239
    .line 240
    .line 241
    invoke-static {v12, v11, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-direct {v10, v11}, Landroidx/compose/material/FadeInFadeOutAnimationItem;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    add-int/lit8 v9, v9, 0x1

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_d
    invoke-static {}, Lio/sentry/d;->i()V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_e
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_f
    const v2, 0x5b707b2

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 269
    .line 270
    .line 271
    :goto_9
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 272
    .line 273
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-static {p1}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-static {p1, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 290
    .line 291
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 295
    .line 296
    .line 297
    iget-boolean v9, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 298
    .line 299
    if-eqz v9, :cond_10

    .line 300
    .line 301
    sget-object v9, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 302
    .line 303
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 304
    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_10
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 308
    .line 309
    .line 310
    :goto_a
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 311
    .line 312
    invoke-static {p1, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 313
    .line 314
    .line 315
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 316
    .line 317
    invoke-static {p1, v7, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    iget-boolean v2, p1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 321
    .line 322
    if-nez v2, :cond_11

    .line 323
    .line 324
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-nez v2, :cond_12

    .line 337
    .line 338
    :cond_11
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 339
    .line 340
    invoke-static {v3, p1, v3, v2}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 341
    .line 342
    .line 343
    :cond_12
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 344
    .line 345
    invoke-static {p1, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->w()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    if-eqz v2, :cond_14

    .line 353
    .line 354
    iget v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 355
    .line 356
    or-int/2addr v3, v4

    .line 357
    iput v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->b:I

    .line 358
    .line 359
    iput-object v2, v0, Landroidx/compose/material/FadeInFadeOutState;->c:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 360
    .line 361
    const v0, -0x68c4deca

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    move v2, v5

    .line 372
    :goto_b
    if-ge v2, v0, :cond_13

    .line 373
    .line 374
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    iget-object v3, v3, Landroidx/compose/material/FadeInFadeOutAnimationItem;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 384
    .line 385
    const v7, -0x5a553bb6

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v7, v1}, Landroidx/compose/runtime/GapComposer;->U(ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    new-instance v7, Lcf;

    .line 392
    .line 393
    const/16 v8, 0x11

    .line 394
    .line 395
    invoke-direct {v7, v8, v5}, Lcf;-><init>(IB)V

    .line 396
    .line 397
    .line 398
    const v8, 0x7840dcef

    .line 399
    .line 400
    .line 401
    invoke-static {v8, v7, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    const/4 v8, 0x6

    .line 406
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    invoke-virtual {v3, v7, p1, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 414
    .line 415
    .line 416
    add-int/lit8 v2, v2, 0x1

    .line 417
    .line 418
    goto :goto_b

    .line 419
    :cond_13
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 423
    .line 424
    .line 425
    goto :goto_c

    .line 426
    :cond_14
    const-string p0, "no recompose scope found"

    .line 427
    .line 428
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :cond_15
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 433
    .line 434
    .line 435
    :goto_c
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    if-eqz p1, :cond_16

    .line 440
    .line 441
    new-instance v0, Lx0;

    .line 442
    .line 443
    invoke-direct {v0, p0, p2}, Lx0;-><init>(Landroidx/compose/ui/Modifier;I)V

    .line 444
    .line 445
    .line 446
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 447
    .line 448
    :cond_16
    return-void
.end method

.method public static final b(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x50888a6f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    or-int/lit16 v0, v0, 0x1b0

    .line 26
    .line 27
    and-int/lit16 v1, v0, 0x93

    .line 28
    .line 29
    const/16 v2, 0x92

    .line 30
    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 37
    .line 38
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_7

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/compose/material/SnackbarHostState;->a:Landroidx/compose/runtime/MutableState;

    .line 45
    .line 46
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    sget-object p1, Landroidx/compose/ui/platform/CompositionLocalsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 55
    .line 56
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    or-int/2addr v1, v2

    .line 72
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 79
    .line 80
    if-ne v2, v1, :cond_4

    .line 81
    .line 82
    :cond_3
    new-instance v2, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$1$1;

    .line 83
    .line 84
    invoke-direct {v2, p1, p2}, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$1$1;-><init>(Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 91
    .line 92
    invoke-static {p3, p2, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Landroidx/compose/material/SnackbarHostState;->a:Landroidx/compose/runtime/MutableState;

    .line 96
    .line 97
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    and-int/lit16 p1, v0, 0x3f0

    .line 106
    .line 107
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 108
    .line 109
    invoke-static {p2, p3, p1}, Landroidx/compose/material/SnackbarHostKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 113
    .line 114
    move-object v3, p1

    .line 115
    move-object v2, p2

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-static {}, Lio/sentry/d;->i()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    invoke-static {}, Lio/sentry/d;->i()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 126
    .line 127
    .line 128
    move-object v2, p1

    .line 129
    move-object v3, p2

    .line 130
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_8

    .line 135
    .line 136
    new-instance v0, Lb1;

    .line 137
    .line 138
    const/16 v5, 0xd

    .line 139
    .line 140
    move-object v1, p0

    .line 141
    move v4, p4

    .line 142
    invoke-direct/range {v0 .. v5}, Lb1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 146
    .line 147
    :cond_8
    return-void
.end method
