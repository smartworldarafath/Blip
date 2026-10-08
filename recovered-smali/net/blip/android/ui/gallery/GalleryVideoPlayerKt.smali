.class public abstract Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroid/net/Uri;ZLandroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v12, p3

    .line 11
    .line 12
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v0, 0x2b6a1c8e

    .line 15
    .line 16
    .line 17
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    or-int/lit8 v0, v4, 0x6

    .line 21
    .line 22
    and-int/lit8 v1, v4, 0x30

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

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
    const/16 v1, 0x10

    .line 36
    .line 37
    :goto_0
    or-int/2addr v0, v1

    .line 38
    :cond_1
    and-int/lit16 v1, v4, 0x180

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/16 v1, 0x100

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v1, 0x80

    .line 52
    .line 53
    :goto_1
    or-int/2addr v0, v1

    .line 54
    :cond_3
    and-int/lit16 v1, v0, 0x93

    .line 55
    .line 56
    const/16 v6, 0x92

    .line 57
    .line 58
    if-eq v1, v6, :cond_4

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    const/4 v1, 0x0

    .line 63
    :goto_2
    and-int/lit8 v6, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {v12, v6, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_14

    .line 70
    .line 71
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 84
    .line 85
    if-ne v8, v9, :cond_5

    .line 86
    .line 87
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 97
    .line 98
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    if-ne v10, v9, :cond_6

    .line 103
    .line 104
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-static {v10}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 114
    .line 115
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    if-ne v11, v9, :cond_7

    .line 120
    .line 121
    new-instance v11, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 122
    .line 123
    invoke-direct {v11, v6}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v11}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a()Landroidx/media3/exoplayer/ExoPlayer;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    new-instance v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 131
    .line 132
    new-instance v14, Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 133
    .line 134
    invoke-direct {v14, v6}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v13, v14}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DefaultDataSource$Factory;)V

    .line 138
    .line 139
    .line 140
    new-instance v6, Landroidx/media3/common/MediaItem$Builder;

    .line 141
    .line 142
    invoke-direct {v6}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v2, v6, Landroidx/media3/common/MediaItem$Builder;->b:Landroid/net/Uri;

    .line 146
    .line 147
    invoke-virtual {v6}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    iget-object v14, v6, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 152
    .line 153
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    new-instance v16, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 157
    .line 158
    iget-object v14, v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    .line 159
    .line 160
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object v14, v6, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 164
    .line 165
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object v14, v6, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 169
    .line 170
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget v14, v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->e:I

    .line 174
    .line 175
    iget-boolean v15, v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f:Z

    .line 176
    .line 177
    iget-object v5, v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->a:Landroidx/media3/datasource/DefaultDataSource$Factory;

    .line 178
    .line 179
    iget-object v7, v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->b:Lp;

    .line 180
    .line 181
    iget-object v13, v13, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->d:Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 182
    .line 183
    move-object/from16 v18, v5

    .line 184
    .line 185
    move-object/from16 v17, v6

    .line 186
    .line 187
    move-object/from16 v19, v7

    .line 188
    .line 189
    move-object/from16 v20, v13

    .line 190
    .line 191
    move/from16 v21, v14

    .line 192
    .line 193
    move/from16 v22, v15

    .line 194
    .line 195
    invoke-direct/range {v16 .. v22}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IZ)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v5, v16

    .line 199
    .line 200
    invoke-interface {v11, v5}, Landroidx/media3/exoplayer/ExoPlayer;->b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v11}, Landroidx/media3/common/Player;->o()V

    .line 204
    .line 205
    .line 206
    invoke-interface {v11}, Landroidx/media3/exoplayer/ExoPlayer;->d()V

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    invoke-interface {v11, v5}, Landroidx/media3/common/Player;->E(I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v11}, Landroidx/media3/exoplayer/ExoPlayer;->s()V

    .line 214
    .line 215
    .line 216
    sget-object v5, Landroidx/media3/exoplayer/SeekParameters;->c:Landroidx/media3/exoplayer/SeekParameters;

    .line 217
    .line 218
    invoke-interface {v11, v5}, Landroidx/media3/exoplayer/ExoPlayer;->p(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 219
    .line 220
    .line 221
    new-instance v5, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;

    .line 222
    .line 223
    invoke-direct {v5, v11, v10}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v11, v5}, Landroidx/media3/exoplayer/ExoPlayer;->M(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_7
    check-cast v11, Landroidx/media3/exoplayer/ExoPlayer;

    .line 233
    .line 234
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    check-cast v6, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    and-int/lit16 v0, v0, 0x380

    .line 252
    .line 253
    const/16 v13, 0x100

    .line 254
    .line 255
    if-ne v0, v13, :cond_8

    .line 256
    .line 257
    const/4 v0, 0x1

    .line 258
    goto :goto_3

    .line 259
    :cond_8
    const/4 v0, 0x0

    .line 260
    :goto_3
    or-int/2addr v0, v7

    .line 261
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    const/4 v13, 0x0

    .line 266
    if-nez v0, :cond_9

    .line 267
    .line 268
    if-ne v7, v9, :cond_a

    .line 269
    .line 270
    :cond_9
    new-instance v7, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$1$1;

    .line 271
    .line 272
    invoke-direct {v7, v11, v3, v8, v13}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$1$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;ZLandroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 279
    .line 280
    invoke-static {v5, v6, v7, v12}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    if-nez v0, :cond_b

    .line 292
    .line 293
    if-ne v5, v9, :cond_c

    .line 294
    .line 295
    :cond_b
    new-instance v5, Lw8;

    .line 296
    .line 297
    const/4 v0, 0x0

    .line 298
    invoke-direct {v5, v11, v0}, Lw8;-><init>(Landroidx/media3/exoplayer/ExoPlayer;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 305
    .line 306
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 307
    .line 308
    invoke-static {v0, v5, v12}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_d

    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    goto :goto_4

    .line 325
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 326
    .line 327
    :goto_4
    const/16 v7, 0xc00

    .line 328
    .line 329
    const/16 v10, 0x16

    .line 330
    .line 331
    invoke-static {v0, v13, v12, v7, v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    if-ne v7, v9, :cond_e

    .line 340
    .line 341
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_e
    move-object v15, v7

    .line 349
    check-cast v15, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 350
    .line 351
    const-wide/16 v6, 0x0

    .line 352
    .line 353
    const/4 v10, 0x7

    .line 354
    const/4 v14, 0x0

    .line 355
    invoke-static {v10, v6, v7, v14}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 356
    .line 357
    .line 358
    move-result-object v16

    .line 359
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    if-ne v6, v9, :cond_f

    .line 364
    .line 365
    new-instance v6, Lo1;

    .line 366
    .line 367
    const/16 v7, 0x8

    .line 368
    .line 369
    invoke-direct {v6, v8, v7}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    :cond_f
    move-object/from16 v19, v6

    .line 376
    .line 377
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 378
    .line 379
    const/16 v20, 0x1c

    .line 380
    .line 381
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 382
    .line 383
    const/16 v17, 0x0

    .line 384
    .line 385
    const/16 v18, 0x0

    .line 386
    .line 387
    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    move-object v15, v14

    .line 392
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 393
    .line 394
    const/4 v14, 0x0

    .line 395
    invoke-static {v10, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->T:J

    .line 400
    .line 401
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 406
    .line 407
    .line 408
    move-result-object v14

    .line 409
    invoke-static {v12, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 414
    .line 415
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 419
    .line 420
    .line 421
    iget-boolean v8, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 422
    .line 423
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 424
    .line 425
    if-eqz v8, :cond_10

    .line 426
    .line 427
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_10
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 432
    .line 433
    .line 434
    :goto_5
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 435
    .line 436
    invoke-static {v12, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 437
    .line 438
    .line 439
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 440
    .line 441
    invoke-static {v12, v14, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v13

    .line 448
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 449
    .line 450
    invoke-static {v12, v13, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 454
    .line 455
    .line 456
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 457
    .line 458
    invoke-static {v12, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    move-object/from16 v18, v0

    .line 466
    .line 467
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    if-nez v6, :cond_11

    .line 472
    .line 473
    if-ne v0, v9, :cond_12

    .line 474
    .line 475
    :cond_11
    new-instance v0, Lw8;

    .line 476
    .line 477
    const/4 v6, 0x1

    .line 478
    invoke-direct {v0, v11, v6}, Lw8;-><init>(Landroidx/media3/exoplayer/ExoPlayer;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    :cond_12
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 485
    .line 486
    const/4 v6, 0x0

    .line 487
    const/4 v9, 0x0

    .line 488
    invoke-static {v0, v9, v9, v12, v6}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->b(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 489
    .line 490
    .line 491
    const/high16 v0, 0x3f800000    # 1.0f

    .line 492
    .line 493
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 498
    .line 499
    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 500
    .line 501
    invoke-virtual {v6, v9, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    invoke-static {v12, v0}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->b(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    const/high16 v6, 0x41c00000    # 24.0f

    .line 510
    .line 511
    const/4 v9, 0x2

    .line 512
    const/4 v3, 0x0

    .line 513
    invoke-static {v0, v6, v3, v9}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    const/high16 v3, 0x42600000    # 56.0f

    .line 518
    .line 519
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    const/4 v6, 0x0

    .line 524
    invoke-static {v0, v11, v12, v6}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/Composer;I)V

    .line 525
    .line 526
    .line 527
    const/high16 v0, 0x3f800000    # 1.0f

    .line 528
    .line 529
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Ljava/lang/Number;

    .line 538
    .line 539
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    invoke-static {v3, v0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 548
    .line 549
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 554
    .line 555
    iget-wide v3, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->m:J

    .line 556
    .line 557
    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 558
    .line 559
    invoke-static {v0, v3, v4, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 564
    .line 565
    const/4 v6, 0x0

    .line 566
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    move-object/from16 p0, v10

    .line 571
    .line 572
    iget-wide v9, v12, Landroidx/compose/runtime/GapComposer;->T:J

    .line 573
    .line 574
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 587
    .line 588
    .line 589
    iget-boolean v9, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 590
    .line 591
    if-eqz v9, :cond_13

    .line 592
    .line 593
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 594
    .line 595
    .line 596
    goto :goto_6

    .line 597
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 598
    .line 599
    .line 600
    :goto_6
    invoke-static {v12, v3, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 601
    .line 602
    .line 603
    invoke-static {v12, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 604
    .line 605
    .line 606
    invoke-static {v4, v12, v14, v12}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 607
    .line 608
    .line 609
    invoke-static {v12, v0, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 610
    .line 611
    .line 612
    const/high16 v0, 0x3f800000    # 1.0f

    .line 613
    .line 614
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    check-cast v0, Landroid/content/Context;

    .line 623
    .line 624
    invoke-static {v0}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    new-instance v5, Lcoil3/compose/internal/AsyncImageState;

    .line 629
    .line 630
    sget-object v1, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 631
    .line 632
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    check-cast v1, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    .line 637
    .line 638
    invoke-direct {v5, v2, v1, v0}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V

    .line 639
    .line 640
    .line 641
    const v13, 0x1801b0

    .line 642
    .line 643
    .line 644
    const/4 v14, 0x0

    .line 645
    const/4 v6, 0x0

    .line 646
    sget-object v8, Lcoil3/compose/AsyncImagePainter;->E:Lh;

    .line 647
    .line 648
    const/4 v9, 0x0

    .line 649
    sget-object v11, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    .line 650
    .line 651
    move-object/from16 v10, p0

    .line 652
    .line 653
    invoke-static/range {v5 .. v14}, Lcoil3/compose/AsyncImageKt;->a(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;II)V

    .line 654
    .line 655
    .line 656
    const/4 v6, 0x1

    .line 657
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 661
    .line 662
    .line 663
    move-object v1, v15

    .line 664
    goto :goto_7

    .line 665
    :cond_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 666
    .line 667
    .line 668
    move-object/from16 v1, p0

    .line 669
    .line 670
    :goto_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    if-eqz v6, :cond_15

    .line 675
    .line 676
    new-instance v0, Lc2;

    .line 677
    .line 678
    const/4 v5, 0x2

    .line 679
    move/from16 v3, p2

    .line 680
    .line 681
    move/from16 v4, p4

    .line 682
    .line 683
    invoke-direct/range {v0 .. v5}, Lc2;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZII)V

    .line 684
    .line 685
    .line 686
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 687
    .line 688
    :cond_15
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v14, p2

    .line 8
    .line 9
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v1, -0x57acd13

    .line 12
    .line 13
    .line 14
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x2

    .line 26
    :goto_0
    or-int/2addr v1, v7

    .line 27
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v19, 0x10

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/16 v3, 0x20

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move/from16 v3, v19

    .line 39
    .line 40
    :goto_1
    or-int/2addr v1, v3

    .line 41
    and-int/lit8 v3, v1, 0x13

    .line 42
    .line 43
    const/16 v4, 0x12

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    if-eq v3, v4, :cond_2

    .line 47
    .line 48
    move v3, v5

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v3, 0x0

    .line 51
    :goto_2
    and-int/2addr v1, v5

    .line 52
    invoke-virtual {v14, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_e

    .line 57
    .line 58
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x0

    .line 63
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 64
    .line 65
    if-ne v1, v4, :cond_3

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 79
    .line 80
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    if-ne v6, v4, :cond_4

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-nez v8, :cond_5

    .line 105
    .line 106
    if-ne v9, v4, :cond_6

    .line 107
    .line 108
    :cond_5
    new-instance v9, Lb;

    .line 109
    .line 110
    const/16 v8, 0xe

    .line 111
    .line 112
    invoke-direct {v9, v8, v2, v1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    invoke-static {v2, v9, v14}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-ne v8, v4, :cond_7

    .line 128
    .line 129
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    move-object/from16 v20, v8

    .line 139
    .line 140
    check-cast v20, Landroidx/compose/runtime/MutableState;

    .line 141
    .line 142
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    check-cast v8, Ljava/lang/Float;

    .line 147
    .line 148
    if-eqz v8, :cond_8

    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    :goto_3
    move/from16 v21, v8

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    goto :goto_3

    .line 168
    :goto_4
    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    .line 169
    .line 170
    .line 171
    move-result-wide v8

    .line 172
    long-to-float v8, v8

    .line 173
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    invoke-static {v3, v8}, Lkotlin/ranges/RangesKt;->g(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-interface {v8}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 186
    .line 187
    .line 188
    move-result v22

    .line 189
    const/high16 v8, 0x41800000    # 16.0f

    .line 190
    .line 191
    invoke-static {v8}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    const/16 v9, 0x36

    .line 196
    .line 197
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 198
    .line 199
    invoke-static {v8, v10, v14, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 204
    .line 205
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 218
    .line 219
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 223
    .line 224
    .line 225
    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 226
    .line 227
    if-eqz v12, :cond_9

    .line 228
    .line 229
    sget-object v12, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 230
    .line 231
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 236
    .line 237
    .line 238
    :goto_5
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 239
    .line 240
    invoke-static {v14, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 241
    .line 242
    .line 243
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 244
    .line 245
    invoke-static {v14, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 253
    .line 254
    invoke-static {v14, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 258
    .line 259
    .line 260
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 261
    .line 262
    invoke-static {v14, v11, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    .line 264
    .line 265
    invoke-static/range {v21 .. v21}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;->c(F)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    sget-object v9, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 270
    .line 271
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    check-cast v10, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 276
    .line 277
    iget-object v10, v10, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 278
    .line 279
    sget-wide v24, Landroidx/compose/ui/graphics/Color;->d:J

    .line 280
    .line 281
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 282
    .line 283
    .line 284
    move-result-wide v26

    .line 285
    const/16 v34, 0x0

    .line 286
    .line 287
    const v35, 0xfffffc

    .line 288
    .line 289
    .line 290
    const/16 v28, 0x0

    .line 291
    .line 292
    const-wide/16 v29, 0x0

    .line 293
    .line 294
    const-wide/16 v31, 0x0

    .line 295
    .line 296
    const/16 v33, 0x0

    .line 297
    .line 298
    move-object/from16 v23, v10

    .line 299
    .line 300
    invoke-static/range {v23 .. v35}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    const/16 v17, 0x0

    .line 305
    .line 306
    const/16 v18, 0x1fa

    .line 307
    .line 308
    move-object v11, v9

    .line 309
    const/4 v9, 0x0

    .line 310
    move-object v12, v11

    .line 311
    const/4 v11, 0x0

    .line 312
    move-object v13, v12

    .line 313
    const/4 v12, 0x0

    .line 314
    move-object v15, v13

    .line 315
    const/4 v13, 0x0

    .line 316
    move-object/from16 v16, v14

    .line 317
    .line 318
    const/4 v14, 0x0

    .line 319
    move-object/from16 v23, v15

    .line 320
    .line 321
    const/4 v15, 0x0

    .line 322
    move-object/from16 v36, v23

    .line 323
    .line 324
    move-object/from16 v23, v6

    .line 325
    .line 326
    move-wide/from16 v5, v24

    .line 327
    .line 328
    invoke-static/range {v8 .. v18}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 329
    .line 330
    .line 331
    sget-object v8, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 332
    .line 333
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 334
    .line 335
    .line 336
    move-result-object v17

    .line 337
    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    .line 338
    .line 339
    .line 340
    move-result-wide v8

    .line 341
    long-to-float v8, v8

    .line 342
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    invoke-static {v3, v8}, Lkotlin/ranges/RangesKt;->g(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 347
    .line 348
    .line 349
    move-result-object v18

    .line 350
    const v3, 0x3f59999a    # 0.85f

    .line 351
    .line 352
    .line 353
    invoke-static {v5, v6, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 354
    .line 355
    .line 356
    move-result-wide v10

    .line 357
    const v3, 0x3eb33333    # 0.35f

    .line 358
    .line 359
    .line 360
    invoke-static {v5, v6, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 361
    .line 362
    .line 363
    move-result-wide v12

    .line 364
    const/16 v15, 0xd86

    .line 365
    .line 366
    move-object/from16 v14, v16

    .line 367
    .line 368
    const/16 v16, 0x3f2

    .line 369
    .line 370
    move-wide v8, v5

    .line 371
    invoke-static/range {v8 .. v16}, Landroidx/compose/material/SliderDefaults;->a(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SliderColors;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    move-wide/from16 v24, v8

    .line 376
    .line 377
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    if-nez v3, :cond_a

    .line 386
    .line 387
    if-ne v5, v4, :cond_b

    .line 388
    .line 389
    :cond_a
    move-object v5, v1

    .line 390
    goto :goto_6

    .line 391
    :cond_b
    move-object v9, v4

    .line 392
    move-object/from16 v4, v20

    .line 393
    .line 394
    move-object/from16 v3, v23

    .line 395
    .line 396
    const/4 v8, 0x1

    .line 397
    goto :goto_7

    .line 398
    :goto_6
    new-instance v1, Ls2;

    .line 399
    .line 400
    const/4 v6, 0x3

    .line 401
    move-object v9, v4

    .line 402
    move-object/from16 v4, v20

    .line 403
    .line 404
    move-object/from16 v3, v23

    .line 405
    .line 406
    const/4 v8, 0x1

    .line 407
    invoke-direct/range {v1 .. v6}, Ls2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    move-object v5, v1

    .line 414
    :goto_7
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 415
    .line 416
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    if-nez v1, :cond_c

    .line 425
    .line 426
    if-ne v6, v9, :cond_d

    .line 427
    .line 428
    :cond_c
    new-instance v6, Ln1;

    .line 429
    .line 430
    invoke-direct {v6, v2, v3, v4}, Ln1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_d
    move-object v13, v6

    .line 437
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 438
    .line 439
    const/16 v16, 0x0

    .line 440
    .line 441
    const/4 v11, 0x0

    .line 442
    move-object v9, v5

    .line 443
    move v1, v8

    .line 444
    move-object v15, v14

    .line 445
    move-object/from16 v12, v18

    .line 446
    .line 447
    move/from16 v8, v21

    .line 448
    .line 449
    move-object v14, v10

    .line 450
    move-object/from16 v10, v17

    .line 451
    .line 452
    invoke-static/range {v8 .. v16}, Landroidx/compose/material/SliderKt;->b(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;I)V

    .line 453
    .line 454
    .line 455
    move-object v14, v15

    .line 456
    invoke-static/range {v22 .. v22}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt;->c(F)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    move-object/from16 v12, v36

    .line 461
    .line 462
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 467
    .line 468
    iget-object v3, v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 469
    .line 470
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v26

    .line 474
    const/16 v34, 0x0

    .line 475
    .line 476
    const v35, 0xfffffc

    .line 477
    .line 478
    .line 479
    const/16 v28, 0x0

    .line 480
    .line 481
    const-wide/16 v29, 0x0

    .line 482
    .line 483
    const-wide/16 v31, 0x0

    .line 484
    .line 485
    const/16 v33, 0x0

    .line 486
    .line 487
    move-object/from16 v23, v3

    .line 488
    .line 489
    invoke-static/range {v23 .. v35}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 490
    .line 491
    .line 492
    move-result-object v10

    .line 493
    const/16 v17, 0x0

    .line 494
    .line 495
    const/16 v18, 0x1fa

    .line 496
    .line 497
    const/4 v9, 0x0

    .line 498
    const/4 v12, 0x0

    .line 499
    const/4 v13, 0x0

    .line 500
    move-object/from16 v16, v14

    .line 501
    .line 502
    const/4 v14, 0x0

    .line 503
    const/4 v15, 0x0

    .line 504
    invoke-static/range {v8 .. v18}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 505
    .line 506
    .line 507
    move-object/from16 v14, v16

    .line 508
    .line 509
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 514
    .line 515
    .line 516
    :goto_8
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    if-eqz v1, :cond_f

    .line 521
    .line 522
    new-instance v3, La0;

    .line 523
    .line 524
    const/16 v4, 0xc

    .line 525
    .line 526
    invoke-direct {v3, v7, v4, v0, v2}, La0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    iput-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 530
    .line 531
    :cond_f
    return-void
.end method

.method public static final c(F)Ljava/lang/String;
    .locals 3

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    .line 3
    div-float/2addr p0, v0

    .line 4
    const/high16 v0, 0x42700000    # 60.0f

    .line 5
    .line 6
    div-float v0, p0, v0

    .line 7
    .line 8
    float-to-double v0, v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-float v0, v0

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    float-to-double v1, p0

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    double-to-float p0, v1

    .line 24
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "%02.0f:%02.0f"

    .line 38
    .line 39
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
