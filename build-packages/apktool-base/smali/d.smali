.class public final synthetic Ld;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 12
    iput p2, p0, Ld;->j:I

    iput-object p3, p0, Ld;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Ld;->j:I

    iput-object p2, p0, Ld;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V
    .locals 0

    .line 1
    const/16 p1, 0xd

    .line 2
    .line 3
    iput p1, p0, Ld;->j:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Ld;->k:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/shared/Paintable;)V
    .locals 1

    .line 13
    const/16 v0, 0xf

    iput v0, p0, Ld;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Ld;->j:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/compose/ui/BiasAlignment;

    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 21
    .line 22
    move-object v6, v1

    .line 23
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    iget-wide v1, v2, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 28
    .line 29
    move-wide/from16 v18, v3

    .line 30
    .line 31
    move-wide v4, v1

    .line 32
    move-wide/from16 v2, v18

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/BiasAlignment;->a(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 40
    .line 41
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :pswitch_0
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 48
    .line 49
    move-object/from16 v2, p1

    .line 50
    .line 51
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 52
    .line 53
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    iget-wide v1, v2, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 56
    .line 57
    const-wide v3, 0xffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v1, v3

    .line 63
    long-to-int v1, v1

    .line 64
    invoke-virtual {v0, v5, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;->a(II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v0, v0

    .line 69
    and-long/2addr v0, v3

    .line 70
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 71
    .line 72
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :pswitch_1
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lio/ktor/http/URLBuilder;

    .line 79
    .line 80
    move-object/from16 v2, p1

    .line 81
    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    check-cast v1, Ljava/util/List;

    .line 85
    .line 86
    sget-object v3, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lio/ktor/http/URLBuilder;->i:Lio/ktor/http/ParametersBuilderImpl;

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lio/ktor/util/StringValuesBuilderImpl;->a(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object v0

    .line 102
    :pswitch_2
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 105
    .line 106
    move-object/from16 v2, p1

    .line 107
    .line 108
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 109
    .line 110
    check-cast v1, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope;->a(ILandroidx/compose/runtime/Composer;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object v0

    .line 125
    :pswitch_3
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Landroid/app/RemoteAction;

    .line 128
    .line 129
    move-object/from16 v2, p1

    .line 130
    .line 131
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 132
    .line 133
    check-cast v1, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 139
    .line 140
    const v1, -0x520d2714

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :pswitch_4
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 161
    .line 162
    move-object/from16 v2, p1

    .line 163
    .line 164
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 165
    .line 166
    check-cast v1, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 172
    .line 173
    const v1, 0x38a0c7d5

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_5
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 194
    .line 195
    move-object/from16 v2, p1

    .line 196
    .line 197
    check-cast v2, Ljava/util/Set;

    .line 198
    .line 199
    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 200
    .line 201
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 202
    .line 203
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    if-nez v7, :cond_0

    .line 208
    .line 209
    move-object v8, v2

    .line 210
    check-cast v8, Ljava/util/Collection;

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_0
    instance-of v8, v7, Ljava/util/Set;

    .line 214
    .line 215
    if-eqz v8, :cond_1

    .line 216
    .line 217
    new-array v8, v4, [Ljava/util/Set;

    .line 218
    .line 219
    aput-object v7, v8, v5

    .line 220
    .line 221
    aput-object v2, v8, v6

    .line 222
    .line 223
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    goto :goto_1

    .line 228
    :cond_1
    instance-of v8, v7, Ljava/util/List;

    .line 229
    .line 230
    if-eqz v8, :cond_5

    .line 231
    .line 232
    move-object v8, v7

    .line 233
    check-cast v8, Ljava/util/Collection;

    .line 234
    .line 235
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    :cond_2
    :goto_1
    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_4

    .line 248
    .line 249
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->d()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_3

    .line 254
    .line 255
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->a:Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    new-instance v2, Landroidx/compose/runtime/snapshots/b;

    .line 258
    .line 259
    invoke-direct {v2, v0}, Landroidx/compose/runtime/snapshots/b;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    :cond_3
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    if-eq v9, v7, :cond_2

    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_5
    const-string v0, "Unexpected notification"

    .line 276
    .line 277
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lf7;->h()V

    .line 281
    .line 282
    .line 283
    :goto_2
    return-object v3

    .line 284
    :pswitch_6
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Landroidx/compose/ui/platform/UriHandler;

    .line 287
    .line 288
    move-object/from16 v2, p1

    .line 289
    .line 290
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 291
    .line 292
    check-cast v1, Ljava/lang/Integer;

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 299
    .line 300
    and-int/lit8 v7, v1, 0x3

    .line 301
    .line 302
    if-eq v7, v4, :cond_6

    .line 303
    .line 304
    move v4, v6

    .line 305
    goto :goto_3

    .line 306
    :cond_6
    move v4, v5

    .line 307
    :goto_3
    and-int/2addr v1, v6

    .line 308
    move-object v14, v2

    .line 309
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 310
    .line 311
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_d

    .line 316
    .line 317
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 318
    .line 319
    invoke-static {v14}, Lnet/blip/shared/StringsKt;->a(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    sget-object v8, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 324
    .line 325
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    or-int/2addr v2, v4

    .line 334
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    if-nez v2, :cond_7

    .line 339
    .line 340
    if-ne v4, v3, :cond_8

    .line 341
    .line 342
    :cond_7
    new-instance v4, Lf9;

    .line 343
    .line 344
    invoke-direct {v4, v0, v1, v6}, Lf9;-><init>(Landroidx/compose/ui/platform/UriHandler;Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_8
    move-object v11, v4

    .line 351
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 352
    .line 353
    sget-object v13, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 354
    .line 355
    const v15, 0x180030

    .line 356
    .line 357
    .line 358
    const/16 v16, 0x2d

    .line 359
    .line 360
    const/4 v7, 0x0

    .line 361
    const/4 v9, 0x0

    .line 362
    const/4 v10, 0x0

    .line 363
    const/4 v12, 0x0

    .line 364
    invoke-static/range {v7 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 365
    .line 366
    .line 367
    sget-object v8, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 368
    .line 369
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    if-nez v1, :cond_9

    .line 378
    .line 379
    if-ne v2, v3, :cond_a

    .line 380
    .line 381
    :cond_9
    new-instance v2, Lgf;

    .line 382
    .line 383
    invoke-direct {v2, v0, v5}, Lgf;-><init>(Landroidx/compose/ui/platform/UriHandler;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    :cond_a
    move-object v11, v2

    .line 390
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 391
    .line 392
    sget-object v13, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 393
    .line 394
    const v15, 0x180030

    .line 395
    .line 396
    .line 397
    const/16 v16, 0x2d

    .line 398
    .line 399
    const/4 v7, 0x0

    .line 400
    const/4 v9, 0x0

    .line 401
    const/4 v10, 0x0

    .line 402
    const/4 v12, 0x0

    .line 403
    invoke-static/range {v7 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 404
    .line 405
    .line 406
    sget-object v8, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 407
    .line 408
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-nez v1, :cond_b

    .line 417
    .line 418
    if-ne v2, v3, :cond_c

    .line 419
    .line 420
    :cond_b
    new-instance v2, Lgf;

    .line 421
    .line 422
    invoke-direct {v2, v0, v6}, Lgf;-><init>(Landroidx/compose/ui/platform/UriHandler;I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    :cond_c
    move-object v11, v2

    .line 429
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 430
    .line 431
    sget-object v13, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 432
    .line 433
    const v15, 0x180030

    .line 434
    .line 435
    .line 436
    const/16 v16, 0x2d

    .line 437
    .line 438
    const/4 v7, 0x0

    .line 439
    const/4 v9, 0x0

    .line 440
    const/4 v10, 0x0

    .line 441
    const/4 v12, 0x0

    .line 442
    invoke-static/range {v7 .. v16}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :cond_d
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 447
    .line 448
    .line 449
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 450
    .line 451
    return-object v0

    .line 452
    :pswitch_7
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v0, Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 455
    .line 456
    move-object/from16 v2, p1

    .line 457
    .line 458
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 459
    .line 460
    check-cast v1, Ljava/lang/Integer;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    and-int/lit8 v3, v1, 0x3

    .line 467
    .line 468
    if-eq v3, v4, :cond_e

    .line 469
    .line 470
    move v5, v6

    .line 471
    :cond_e
    and-int/2addr v1, v6

    .line 472
    move-object v11, v2

    .line 473
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 474
    .line 475
    invoke-virtual {v11, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_10

    .line 480
    .line 481
    const-string v7, "Notifications"

    .line 482
    .line 483
    iget-boolean v0, v0, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 484
    .line 485
    if-eqz v0, :cond_f

    .line 486
    .line 487
    const-string v0, "On"

    .line 488
    .line 489
    :goto_5
    move-object v8, v0

    .line 490
    goto :goto_6

    .line 491
    :cond_f
    const-string v0, "Tap to turn on"

    .line 492
    .line 493
    goto :goto_5

    .line 494
    :goto_6
    const/16 v12, 0x30

    .line 495
    .line 496
    const/16 v13, 0x9

    .line 497
    .line 498
    const/4 v6, 0x0

    .line 499
    const-wide/16 v9, 0x0

    .line 500
    .line 501
    invoke-static/range {v6 .. v13}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 502
    .line 503
    .line 504
    goto :goto_7

    .line 505
    :cond_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 506
    .line 507
    .line 508
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 509
    .line 510
    return-object v0

    .line 511
    :pswitch_8
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 514
    .line 515
    move-object/from16 v2, p1

    .line 516
    .line 517
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 518
    .line 519
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 520
    .line 521
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 522
    .line 523
    .line 524
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 525
    .line 526
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 527
    .line 528
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 529
    .line 530
    return-object v0

    .line 531
    :pswitch_9
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 534
    .line 535
    move-object/from16 v2, p1

    .line 536
    .line 537
    check-cast v2, Ljava/lang/Integer;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 544
    .line 545
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 546
    .line 547
    .line 548
    move-result-object v4

    .line 549
    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->n:Lkotlin/coroutines/CoroutineContext;

    .line 550
    .line 551
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    sget-object v5, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 556
    .line 557
    if-eq v4, v5, :cond_12

    .line 558
    .line 559
    if-eq v1, v0, :cond_11

    .line 560
    .line 561
    const/high16 v2, -0x80000000

    .line 562
    .line 563
    goto :goto_b

    .line 564
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 565
    .line 566
    goto :goto_b

    .line 567
    :cond_12
    move-object v7, v0

    .line 568
    check-cast v7, Lkotlinx/coroutines/Job;

    .line 569
    .line 570
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 571
    .line 572
    :goto_8
    if-nez v1, :cond_13

    .line 573
    .line 574
    goto :goto_a

    .line 575
    :cond_13
    if-ne v1, v7, :cond_14

    .line 576
    .line 577
    goto :goto_9

    .line 578
    :cond_14
    instance-of v0, v1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 579
    .line 580
    if-nez v0, :cond_16

    .line 581
    .line 582
    :goto_9
    move-object v3, v1

    .line 583
    :goto_a
    if-ne v3, v7, :cond_15

    .line 584
    .line 585
    if-nez v7, :cond_11

    .line 586
    .line 587
    :goto_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    return-object v0

    .line 592
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 593
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 597
    .line 598
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    const-string v2, ", expected child of "

    .line 605
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 613
    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    throw v0

    .line 629
    :cond_16
    check-cast v1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 630
    .line 631
    sget-object v0, Lkotlinx/coroutines/JobSupport;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    .line 638
    .line 639
    if-eqz v0, :cond_17

    .line 640
    .line 641
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    move-object v1, v0

    .line 646
    goto :goto_8

    .line 647
    :cond_17
    move-object v1, v3

    .line 648
    goto :goto_8

    .line 649
    :pswitch_a
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .line 652
    .line 653
    move-object/from16 v2, p1

    .line 654
    .line 655
    check-cast v2, Ljava/util/Set;

    .line 656
    .line 657
    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 658
    .line 659
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 660
    .line 661
    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v7, v0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 663
    .line 664
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    check-cast v7, Landroidx/compose/runtime/Recomposer$State;

    .line 669
    .line 670
    sget-object v8, Landroidx/compose/runtime/Recomposer$State;->n:Landroidx/compose/runtime/Recomposer$State;

    .line 671
    .line 672
    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    if-ltz v7, :cond_1f

    .line 677
    .line 678
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 679
    .line 680
    instance-of v7, v2, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 681
    .line 682
    if-eqz v7, :cond_1c

    .line 683
    .line 684
    check-cast v2, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 685
    .line 686
    iget-object v2, v2, Landroidx/compose/runtime/collection/ScatterSetWrapper;->j:Landroidx/collection/ScatterSet;

    .line 687
    .line 688
    iget-object v7, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 689
    .line 690
    iget-object v2, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 691
    .line 692
    array-length v8, v2

    .line 693
    sub-int/2addr v8, v4

    .line 694
    if-ltz v8, :cond_1e

    .line 695
    .line 696
    move v4, v5

    .line 697
    :goto_c
    aget-wide v9, v2, v4

    .line 698
    .line 699
    not-long v11, v9

    .line 700
    const/4 v13, 0x7

    .line 701
    shl-long/2addr v11, v13

    .line 702
    and-long/2addr v11, v9

    .line 703
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    and-long/2addr v11, v13

    .line 709
    cmp-long v11, v11, v13

    .line 710
    .line 711
    if-eqz v11, :cond_1b

    .line 712
    .line 713
    sub-int v11, v4, v8

    .line 714
    .line 715
    not-int v11, v11

    .line 716
    ushr-int/lit8 v11, v11, 0x1f

    .line 717
    .line 718
    const/16 v12, 0x8

    .line 719
    .line 720
    rsub-int/lit8 v11, v11, 0x8

    .line 721
    .line 722
    move v13, v5

    .line 723
    :goto_d
    if-ge v13, v11, :cond_1a

    .line 724
    .line 725
    const-wide/16 v14, 0xff

    .line 726
    .line 727
    and-long/2addr v14, v9

    .line 728
    const-wide/16 v16, 0x80

    .line 729
    .line 730
    cmp-long v14, v14, v16

    .line 731
    .line 732
    if-gez v14, :cond_19

    .line 733
    .line 734
    shl-int/lit8 v14, v4, 0x3

    .line 735
    .line 736
    add-int/2addr v14, v13

    .line 737
    aget-object v14, v7, v14

    .line 738
    .line 739
    instance-of v15, v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 740
    .line 741
    if-eqz v15, :cond_18

    .line 742
    .line 743
    move-object v15, v14

    .line 744
    check-cast v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 745
    .line 746
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->h(I)Z

    .line 747
    .line 748
    .line 749
    move-result v15

    .line 750
    if-nez v15, :cond_18

    .line 751
    .line 752
    goto :goto_e

    .line 753
    :catchall_0
    move-exception v0

    .line 754
    goto :goto_10

    .line 755
    :cond_18
    invoke-virtual {v3, v14}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    :cond_19
    :goto_e
    shr-long/2addr v9, v12

    .line 759
    add-int/lit8 v13, v13, 0x1

    .line 760
    .line 761
    goto :goto_d

    .line 762
    :cond_1a
    if-ne v11, v12, :cond_1e

    .line 763
    .line 764
    :cond_1b
    if-eq v4, v8, :cond_1e

    .line 765
    .line 766
    add-int/lit8 v4, v4, 0x1

    .line 767
    .line 768
    goto :goto_c

    .line 769
    :cond_1c
    check-cast v2, Ljava/lang/Iterable;

    .line 770
    .line 771
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 776
    .line 777
    .line 778
    move-result v4

    .line 779
    if-eqz v4, :cond_1e

    .line 780
    .line 781
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    instance-of v5, v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 786
    .line 787
    if-eqz v5, :cond_1d

    .line 788
    .line 789
    move-object v5, v4

    .line 790
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 791
    .line 792
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->h(I)Z

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    if-nez v5, :cond_1d

    .line 797
    .line 798
    goto :goto_f

    .line 799
    :cond_1d
    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    goto :goto_f

    .line 803
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 804
    .line 805
    .line 806
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :cond_1f
    monitor-exit v1

    .line 808
    if-eqz v3, :cond_20

    .line 809
    .line 810
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 811
    .line 812
    check-cast v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 813
    .line 814
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    :cond_20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 818
    .line 819
    return-object v0

    .line 820
    :goto_10
    monitor-exit v1

    .line 821
    throw v0

    .line 822
    :pswitch_b
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v0, Landroidx/compose/ui/window/PopupLayout;

    .line 825
    .line 826
    move-object/from16 v2, p1

    .line 827
    .line 828
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 829
    .line 830
    check-cast v1, Ljava/lang/Integer;

    .line 831
    .line 832
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 833
    .line 834
    .line 835
    sget-object v1, Landroidx/compose/ui/window/PopupLayout;->N:Lwc;

    .line 836
    .line 837
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/window/PopupLayout;->a(ILandroidx/compose/runtime/Composer;)V

    .line 842
    .line 843
    .line 844
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 845
    .line 846
    return-object v0

    .line 847
    :pswitch_c
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 848
    .line 849
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 850
    .line 851
    check-cast v0, Lnet/blip/shared/Paintable;

    .line 852
    .line 853
    move-object/from16 v3, p1

    .line 854
    .line 855
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 856
    .line 857
    check-cast v1, Ljava/lang/Integer;

    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    and-int/lit8 v7, v1, 0x3

    .line 864
    .line 865
    if-eq v7, v4, :cond_21

    .line 866
    .line 867
    move v4, v6

    .line 868
    goto :goto_11

    .line 869
    :cond_21
    move v4, v5

    .line 870
    :goto_11
    and-int/2addr v1, v6

    .line 871
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 872
    .line 873
    invoke-virtual {v3, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    if-eqz v1, :cond_24

    .line 878
    .line 879
    sget-object v1, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 880
    .line 881
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    check-cast v1, Lnet/blip/shared/AvatarTheme;

    .line 886
    .line 887
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 888
    .line 889
    invoke-virtual {v1, v3}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v4

    .line 897
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v6

    .line 901
    if-nez v4, :cond_22

    .line 902
    .line 903
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 904
    .line 905
    if-ne v6, v4, :cond_23

    .line 906
    .line 907
    :cond_22
    new-instance v6, Lma;

    .line 908
    .line 909
    const/16 v4, 0x9

    .line 910
    .line 911
    invoke-direct {v6, v4, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 915
    .line 916
    .line 917
    :cond_23
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 918
    .line 919
    invoke-static {v2, v1, v6, v3, v5}, Lnet/blip/shared/AvatarKt;->e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 920
    .line 921
    .line 922
    goto :goto_12

    .line 923
    :cond_24
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 924
    .line 925
    .line 926
    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 927
    .line 928
    return-object v0

    .line 929
    :pswitch_d
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 930
    .line 931
    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 932
    .line 933
    move-object/from16 v2, p1

    .line 934
    .line 935
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 936
    .line 937
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 938
    .line 939
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 940
    .line 941
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/text/TextDragObserver;->e(J)V

    .line 942
    .line 943
    .line 944
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 945
    .line 946
    return-object v0

    .line 947
    :pswitch_e
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 948
    .line 949
    move-object v7, v0

    .line 950
    check-cast v7, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 951
    .line 952
    move-object/from16 v8, p1

    .line 953
    .line 954
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 955
    .line 956
    move-object v0, v1

    .line 957
    check-cast v0, Landroidx/compose/ui/unit/Constraints;

    .line 958
    .line 959
    iget-wide v1, v0, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 960
    .line 961
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    const v2, 0x7fffffff

    .line 966
    .line 967
    .line 968
    if-eq v1, v2, :cond_25

    .line 969
    .line 970
    goto :goto_13

    .line 971
    :cond_25
    const-string v1, "LazyVerticalGrid\'s width should be bound by parent."

    .line 972
    .line 973
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    :goto_13
    iget-wide v0, v0, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 977
    .line 978
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 979
    .line 980
    .line 981
    move-result v9

    .line 982
    invoke-interface {v7}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    invoke-interface {v8, v0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    add-int v1, v9, v0

    .line 991
    .line 992
    const/high16 v2, 0x43200000    # 160.0f

    .line 993
    .line 994
    invoke-interface {v8, v2}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 995
    .line 996
    .line 997
    move-result v2

    .line 998
    add-int/2addr v2, v0

    .line 999
    div-int/2addr v1, v2

    .line 1000
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    add-int/lit8 v2, v1, -0x1

    .line 1005
    .line 1006
    mul-int/2addr v2, v0

    .line 1007
    sub-int v0, v9, v2

    .line 1008
    .line 1009
    div-int v2, v0, v1

    .line 1010
    .line 1011
    rem-int/2addr v0, v1

    .line 1012
    new-instance v3, Ljava/util/ArrayList;

    .line 1013
    .line 1014
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1015
    .line 1016
    .line 1017
    move v4, v5

    .line 1018
    :goto_14
    if-ge v4, v1, :cond_27

    .line 1019
    .line 1020
    if-ge v4, v0, :cond_26

    .line 1021
    .line 1022
    move v10, v6

    .line 1023
    goto :goto_15

    .line 1024
    :cond_26
    move v10, v5

    .line 1025
    :goto_15
    add-int/2addr v10, v2

    .line 1026
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v10

    .line 1030
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    add-int/lit8 v4, v4, 0x1

    .line 1034
    .line 1035
    goto :goto_14

    .line 1036
    :cond_27
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->W(Ljava/util/List;)[I

    .line 1037
    .line 1038
    .line 1039
    move-result-object v10

    .line 1040
    array-length v0, v10

    .line 1041
    new-array v12, v0, [I

    .line 1042
    .line 1043
    sget-object v11, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1044
    .line 1045
    invoke-interface/range {v7 .. v12}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1046
    .line 1047
    .line 1048
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 1049
    .line 1050
    invoke-direct {v0, v10, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;-><init>([I[I)V

    .line 1051
    .line 1052
    .line 1053
    return-object v0

    .line 1054
    :pswitch_f
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1055
    .line 1056
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 1057
    .line 1058
    move-object/from16 v2, p1

    .line 1059
    .line 1060
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1061
    .line 1062
    check-cast v1, Ljava/lang/Integer;

    .line 1063
    .line 1064
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1065
    .line 1066
    .line 1067
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/core/InfiniteTransition;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1072
    .line 1073
    .line 1074
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1075
    .line 1076
    return-object v0

    .line 1077
    :pswitch_10
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1078
    .line 1079
    check-cast v0, Lnet/blip/libblip/frontend/State;

    .line 1080
    .line 1081
    move-object/from16 v2, p1

    .line 1082
    .line 1083
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1084
    .line 1085
    check-cast v1, Ljava/lang/Integer;

    .line 1086
    .line 1087
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    and-int/lit8 v7, v1, 0x3

    .line 1092
    .line 1093
    if-eq v7, v4, :cond_28

    .line 1094
    .line 1095
    move v4, v6

    .line 1096
    goto :goto_16

    .line 1097
    :cond_28
    move v4, v5

    .line 1098
    :goto_16
    and-int/2addr v1, v6

    .line 1099
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1100
    .line 1101
    invoke-virtual {v2, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v1

    .line 1105
    if-eqz v1, :cond_2b

    .line 1106
    .line 1107
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 1108
    .line 1109
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1110
    .line 1111
    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1116
    .line 1117
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 1118
    .line 1119
    .line 1120
    move-result v7

    .line 1121
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v8

    .line 1125
    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v4

    .line 1129
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1130
    .line 1131
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    .line 1133
    .line 1134
    sget-object v9, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 1135
    .line 1136
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1137
    .line 1138
    .line 1139
    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1140
    .line 1141
    if-eqz v10, :cond_29

    .line 1142
    .line 1143
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1144
    .line 1145
    .line 1146
    goto :goto_17

    .line 1147
    :cond_29
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1148
    .line 1149
    .line 1150
    :goto_17
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 1151
    .line 1152
    invoke-static {v2, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1153
    .line 1154
    .line 1155
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 1156
    .line 1157
    invoke-static {v2, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1158
    .line 1159
    .line 1160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v1

    .line 1164
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 1165
    .line 1166
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1170
    .line 1171
    .line 1172
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 1173
    .line 1174
    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1175
    .line 1176
    .line 1177
    iget-object v0, v0, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 1178
    .line 1179
    if-eqz v0, :cond_2a

    .line 1180
    .line 1181
    iget-object v0, v0, Lnet/blip/libblip/frontend/Messaging;->m:Lnet/blip/libblip/frontend/MessagingStatus;

    .line 1182
    .line 1183
    if-eqz v0, :cond_2a

    .line 1184
    .line 1185
    invoke-static {v0, v2, v5}, Lnet/blip/android/ui/home/ConnectionStatusHUDKt;->a(Lnet/blip/libblip/frontend/MessagingStatus;Landroidx/compose/runtime/Composer;I)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_18

    .line 1192
    :cond_2a
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 1193
    .line 1194
    const-string v1, "state missing messaging"

    .line 1195
    .line 1196
    new-array v2, v5, [Lkotlin/Pair;

    .line 1197
    .line 1198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1199
    .line 1200
    .line 1201
    invoke-static {v1, v2}, Lnet/blip/libblip/Logger;->j(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1202
    .line 1203
    .line 1204
    throw v3

    .line 1205
    :cond_2b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1206
    .line 1207
    .line 1208
    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1209
    .line 1210
    return-object v0

    .line 1211
    :pswitch_11
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1212
    .line 1213
    check-cast v0, Landroidx/navigation/NavController;

    .line 1214
    .line 1215
    move-object/from16 v2, p1

    .line 1216
    .line 1217
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1218
    .line 1219
    check-cast v1, Ljava/lang/Integer;

    .line 1220
    .line 1221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    .line 1223
    .line 1224
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1225
    .line 1226
    .line 1227
    move-result v1

    .line 1228
    invoke-static {v0, v2, v1}, Lnet/blip/android/ui/home/HomeScreenKt;->a(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    .line 1229
    .line 1230
    .line 1231
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1232
    .line 1233
    return-object v0

    .line 1234
    :pswitch_12
    move-object/from16 v0, p1

    .line 1235
    .line 1236
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1237
    .line 1238
    check-cast v1, Ljava/lang/Integer;

    .line 1239
    .line 1240
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1241
    .line 1242
    .line 1243
    move-result v1

    .line 1244
    and-int/lit8 v2, v1, 0x3

    .line 1245
    .line 1246
    if-eq v2, v4, :cond_2c

    .line 1247
    .line 1248
    move v5, v6

    .line 1249
    :cond_2c
    and-int/2addr v1, v6

    .line 1250
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1251
    .line 1252
    invoke-virtual {v0, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1253
    .line 1254
    .line 1255
    move-result v1

    .line 1256
    if-nez v1, :cond_2d

    .line 1257
    .line 1258
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1259
    .line 1260
    .line 1261
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1262
    .line 1263
    return-object v0

    .line 1264
    :cond_2d
    throw v3

    .line 1265
    :pswitch_13
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1266
    .line 1267
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    .line 1268
    .line 1269
    move-object/from16 v2, p1

    .line 1270
    .line 1271
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1272
    .line 1273
    check-cast v1, Ljava/lang/Integer;

    .line 1274
    .line 1275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1276
    .line 1277
    .line 1278
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1279
    .line 1280
    .line 1281
    move-result v1

    .line 1282
    invoke-static {v0, v2, v1}, Landroidx/navigation/compose/DialogHostKt;->a(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    .line 1283
    .line 1284
    .line 1285
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1286
    .line 1287
    return-object v0

    .line 1288
    :pswitch_14
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1289
    .line 1290
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1291
    .line 1292
    move-object/from16 v2, p1

    .line 1293
    .line 1294
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1295
    .line 1296
    check-cast v1, Ljava/lang/Integer;

    .line 1297
    .line 1298
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1299
    .line 1300
    .line 1301
    sget-object v1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 1302
    .line 1303
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1304
    .line 1305
    const v1, 0x27b3a34e

    .line 1306
    .line 1307
    .line 1308
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->b:Ljava/lang/String;

    .line 1312
    .line 1313
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1314
    .line 1315
    .line 1316
    return-object v0

    .line 1317
    :pswitch_15
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1318
    .line 1319
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1320
    .line 1321
    move-object/from16 v2, p1

    .line 1322
    .line 1323
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1324
    .line 1325
    check-cast v1, Ljava/lang/Integer;

    .line 1326
    .line 1327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1331
    .line 1332
    .line 1333
    move-result v1

    .line 1334
    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->d(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 1335
    .line 1336
    .line 1337
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1338
    .line 1339
    return-object v0

    .line 1340
    :pswitch_16
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1341
    .line 1342
    check-cast v0, Lnet/blip/libblip/frontend/MessagingStatus;

    .line 1343
    .line 1344
    move-object/from16 v2, p1

    .line 1345
    .line 1346
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1347
    .line 1348
    check-cast v1, Ljava/lang/Integer;

    .line 1349
    .line 1350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1351
    .line 1352
    .line 1353
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1354
    .line 1355
    .line 1356
    move-result v1

    .line 1357
    invoke-static {v0, v2, v1}, Lnet/blip/android/ui/home/ConnectionStatusHUDKt;->a(Lnet/blip/libblip/frontend/MessagingStatus;Landroidx/compose/runtime/Composer;I)V

    .line 1358
    .line 1359
    .line 1360
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1361
    .line 1362
    return-object v0

    .line 1363
    :pswitch_17
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1364
    .line 1365
    check-cast v0, Landroidx/compose/runtime/composer/RememberManager;

    .line 1366
    .line 1367
    move-object/from16 v2, p1

    .line 1368
    .line 1369
    check-cast v2, Ljava/lang/Integer;

    .line 1370
    .line 1371
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1372
    .line 1373
    .line 1374
    instance-of v2, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1375
    .line 1376
    if-eqz v2, :cond_2f

    .line 1377
    .line 1378
    move-object v2, v1

    .line 1379
    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1380
    .line 1381
    move-object v3, v0

    .line 1382
    check-cast v3, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 1383
    .line 1384
    iget-object v4, v3, Landroidx/compose/runtime/internal/RememberEventDispatcher;->h:Landroidx/collection/MutableScatterSet;

    .line 1385
    .line 1386
    if-nez v4, :cond_2e

    .line 1387
    .line 1388
    sget-object v4, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 1389
    .line 1390
    new-instance v4, Landroidx/collection/MutableScatterSet;

    .line 1391
    .line 1392
    invoke-direct {v4}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 1393
    .line 1394
    .line 1395
    iput-object v4, v3, Landroidx/compose/runtime/internal/RememberEventDispatcher;->h:Landroidx/collection/MutableScatterSet;

    .line 1396
    .line 1397
    :cond_2e
    invoke-virtual {v4, v2}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    .line 1398
    .line 1399
    .line 1400
    iget-object v3, v3, Landroidx/compose/runtime/internal/RememberEventDispatcher;->f:Landroidx/compose/runtime/collection/MutableVector;

    .line 1401
    .line 1402
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1403
    .line 1404
    .line 1405
    :cond_2f
    instance-of v2, v1, Landroidx/compose/runtime/RememberObserverHolder;

    .line 1406
    .line 1407
    if-eqz v2, :cond_30

    .line 1408
    .line 1409
    move-object v2, v1

    .line 1410
    check-cast v2, Landroidx/compose/runtime/RememberObserverHolder;

    .line 1411
    .line 1412
    check-cast v0, Landroidx/compose/runtime/internal/RememberEventDispatcher;

    .line 1413
    .line 1414
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->e(Landroidx/compose/runtime/RememberObserverHolder;)V

    .line 1415
    .line 1416
    .line 1417
    :cond_30
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1418
    .line 1419
    if-eqz v0, :cond_31

    .line 1420
    .line 1421
    move-object v0, v1

    .line 1422
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1423
    .line 1424
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->d()V

    .line 1425
    .line 1426
    .line 1427
    :cond_31
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1428
    .line 1429
    return-object v0

    .line 1430
    :pswitch_18
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1431
    .line 1432
    check-cast v0, Landroidx/compose/ui/platform/ComposeView;

    .line 1433
    .line 1434
    move-object/from16 v2, p1

    .line 1435
    .line 1436
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1437
    .line 1438
    check-cast v1, Ljava/lang/Integer;

    .line 1439
    .line 1440
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    .line 1442
    .line 1443
    sget v1, Landroidx/compose/ui/platform/ComposeView;->v:I

    .line 1444
    .line 1445
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1446
    .line 1447
    .line 1448
    move-result v1

    .line 1449
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ComposeView;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1450
    .line 1451
    .line 1452
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1453
    .line 1454
    return-object v0

    .line 1455
    :pswitch_19
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1456
    .line 1457
    check-cast v0, Landroidx/compose/ui/text/TextInclusionStrategy;

    .line 1458
    .line 1459
    move-object/from16 v2, p1

    .line 1460
    .line 1461
    check-cast v2, Landroid/graphics/RectF;

    .line 1462
    .line 1463
    check-cast v1, Landroid/graphics/RectF;

    .line 1464
    .line 1465
    invoke-static {v2}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v2

    .line 1469
    invoke-static {v1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v1

    .line 1473
    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/text/TextInclusionStrategy;->a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 1474
    .line 1475
    .line 1476
    move-result v0

    .line 1477
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v0

    .line 1481
    return-object v0

    .line 1482
    :pswitch_1a
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1483
    .line 1484
    check-cast v0, Lkotlin/Pair;

    .line 1485
    .line 1486
    move-object/from16 v2, p1

    .line 1487
    .line 1488
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1489
    .line 1490
    check-cast v1, Ljava/lang/Integer;

    .line 1491
    .line 1492
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1493
    .line 1494
    .line 1495
    move-result v1

    .line 1496
    and-int/lit8 v3, v1, 0x3

    .line 1497
    .line 1498
    if-eq v3, v4, :cond_32

    .line 1499
    .line 1500
    move v3, v6

    .line 1501
    goto :goto_19

    .line 1502
    :cond_32
    move v3, v5

    .line 1503
    :goto_19
    and-int/2addr v1, v6

    .line 1504
    move-object v10, v2

    .line 1505
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1506
    .line 1507
    invoke-virtual {v10, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1508
    .line 1509
    .line 1510
    move-result v1

    .line 1511
    if-eqz v1, :cond_33

    .line 1512
    .line 1513
    iget-object v1, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 1514
    .line 1515
    move-object v6, v1

    .line 1516
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 1517
    .line 1518
    new-instance v1, Lb0;

    .line 1519
    .line 1520
    invoke-direct {v1, v5, v0}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 1521
    .line 1522
    .line 1523
    const v0, 0x4f2268d8

    .line 1524
    .line 1525
    .line 1526
    invoke-static {v0, v1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v9

    .line 1530
    const/16 v11, 0x1fe

    .line 1531
    .line 1532
    const/4 v7, 0x0

    .line 1533
    const/4 v8, 0x0

    .line 1534
    invoke-static/range {v6 .. v11}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 1535
    .line 1536
    .line 1537
    goto :goto_1a

    .line 1538
    :cond_33
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1539
    .line 1540
    .line 1541
    :goto_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1542
    .line 1543
    return-object v0

    .line 1544
    :pswitch_1b
    iget-object v0, v0, Ld;->k:Ljava/lang/Object;

    .line 1545
    .line 1546
    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 1547
    .line 1548
    move-object/from16 v2, p1

    .line 1549
    .line 1550
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1551
    .line 1552
    check-cast v1, Ljava/lang/Integer;

    .line 1553
    .line 1554
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1555
    .line 1556
    .line 1557
    move-result v1

    .line 1558
    sget v3, Landroidx/compose/ui/platform/AbstractComposeView;->s:I

    .line 1559
    .line 1560
    and-int/lit8 v3, v1, 0x3

    .line 1561
    .line 1562
    if-eq v3, v4, :cond_34

    .line 1563
    .line 1564
    move v3, v6

    .line 1565
    goto :goto_1b

    .line 1566
    :cond_34
    move v3, v5

    .line 1567
    :goto_1b
    and-int/2addr v1, v6

    .line 1568
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1569
    .line 1570
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v1

    .line 1574
    if-eqz v1, :cond_35

    .line 1575
    .line 1576
    invoke-virtual {v0, v5, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1577
    .line 1578
    .line 1579
    goto :goto_1c

    .line 1580
    :cond_35
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1581
    .line 1582
    .line 1583
    :goto_1c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1584
    .line 1585
    return-object v0

    .line 1586
    nop

    .line 1587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
