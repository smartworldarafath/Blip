.class public abstract Lnet/blip/android/ui/home/HomeScreenKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p1

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, -0x359bcfd7

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    :goto_0
    or-int v1, p2, v1

    .line 27
    .line 28
    and-int/lit8 v3, v1, 0x3

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-eq v3, v2, :cond_1

    .line 32
    .line 33
    move v2, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    :goto_1
    and-int/2addr v1, v4

    .line 37
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_10

    .line 42
    .line 43
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 44
    .line 45
    invoke-static {v1, v0}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lnet/blip/libblip/Core;

    .line 54
    .line 55
    iget-object v15, v1, Lnet/blip/libblip/Core;->b:Lc;

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v13, v1

    .line 64
    check-cast v13, Landroid/content/Context;

    .line 65
    .line 66
    sget-object v1, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v14, v1

    .line 73
    check-cast v14, Lnet/blip/libblip/Flavor;

    .line 74
    .line 75
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->s:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v3, v1

    .line 82
    check-cast v3, Landroidx/compose/ui/platform/UriHandler;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 89
    .line 90
    if-ne v1, v2, :cond_2

    .line 91
    .line 92
    invoke-static {v0}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    move-object v12, v1

    .line 100
    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    .line 101
    .line 102
    invoke-static {v0}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 103
    .line 104
    .line 105
    move-result-object v17

    .line 106
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 107
    .line 108
    invoke-static {v1, v0}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->c(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 109
    .line 110
    .line 111
    move-result-object v18

    .line 112
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v0}, Lnet/blip/shared/StringsKt;->a(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v0}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->b(Landroidx/compose/runtime/Composer;)Z

    .line 119
    .line 120
    .line 121
    move-result v19

    .line 122
    invoke-static {v0}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->c(Landroidx/compose/runtime/Composer;)Z

    .line 123
    .line 124
    .line 125
    move-result v16

    .line 126
    invoke-static {v0}, Lnet/blip/shared/RememberViewModelsKt;->a(Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/PeerPickerViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v7, v1, Lnet/blip/libblip/PeerPickerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 131
    .line 132
    invoke-static {v7, v0}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    iget-object v7, v1, Lnet/blip/libblip/PeerPickerViewModel;->e:Lkotlinx/coroutines/flow/StateFlow;

    .line 137
    .line 138
    invoke-static {v7, v0}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const/4 v11, 0x0

    .line 147
    if-ne v9, v2, :cond_3

    .line 148
    .line 149
    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 157
    .line 158
    const/4 v6, 0x6

    .line 159
    invoke-static {v9, v0, v6}, Lnet/blip/android/ui/home/TransferCancellationDialogKt;->a(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 160
    .line 161
    .line 162
    move-object/from16 v20, v11

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    if-ne v11, v2, :cond_4

    .line 169
    .line 170
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 178
    .line 179
    invoke-static {v11, v0, v6}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->b(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    if-ne v6, v2, :cond_5

    .line 187
    .line 188
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_5
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 198
    .line 199
    move-object/from16 v21, v3

    .line 200
    .line 201
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-ne v3, v2, :cond_6

    .line 206
    .line 207
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 217
    .line 218
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v22

    .line 222
    move-object/from16 v23, v4

    .line 223
    .line 224
    move-object/from16 v4, v22

    .line 225
    .line 226
    check-cast v4, Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v22

    .line 235
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    if-nez v22, :cond_8

    .line 240
    .line 241
    if-ne v5, v2, :cond_7

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_7
    move-object/from16 v22, v6

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_8
    :goto_2
    new-instance v5, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$1$1;

    .line 248
    .line 249
    move-object/from16 v22, v6

    .line 250
    .line 251
    move-object/from16 v6, v20

    .line 252
    .line 253
    invoke-direct {v5, v1, v3, v6}, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$1$1;-><init>(Lnet/blip/libblip/PeerPickerViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :goto_3
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 260
    .line 261
    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    check-cast v4, Ljava/lang/Boolean;

    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    if-ne v5, v2, :cond_9

    .line 279
    .line 280
    new-instance v5, Lo1;

    .line 281
    .line 282
    const/16 v2, 0x9

    .line 283
    .line 284
    invoke-direct {v5, v3, v2}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 291
    .line 292
    const/16 v2, 0x30

    .line 293
    .line 294
    const/4 v6, 0x0

    .line 295
    invoke-static {v4, v5, v0, v2, v6}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 296
    .line 297
    .line 298
    iget-object v2, v10, Lnet/blip/libblip/frontend/State;->B:Ljava/util/Map;

    .line 299
    .line 300
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    check-cast v2, Ljava/lang/Iterable;

    .line 305
    .line 306
    new-instance v4, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_b

    .line 320
    .line 321
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    move-object v6, v5

    .line 326
    check-cast v6, Lnet/blip/libblip/frontend/Transfer;

    .line 327
    .line 328
    iget-object v6, v6, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 329
    .line 330
    move-object/from16 p1, v0

    .line 331
    .line 332
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->n:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 333
    .line 334
    if-ne v6, v0, :cond_a

    .line 335
    .line 336
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :cond_a
    move-object/from16 v0, p1

    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_b
    move-object/from16 p1, v0

    .line 343
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-eqz v4, :cond_d

    .line 358
    .line 359
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    move-object v5, v4

    .line 364
    check-cast v5, Lnet/blip/libblip/frontend/Transfer;

    .line 365
    .line 366
    iget-object v5, v5, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 367
    .line 368
    sget-object v6, Lnet/blip/libblip/frontend/Transfer$Status;->v:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 369
    .line 370
    if-eq v5, v6, :cond_c

    .line 371
    .line 372
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_d
    new-instance v2, Lnet/blip/android/ui/home/HomeScreenKt$HomeScreen$$inlined$sortedBy$1;

    .line 377
    .line 378
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/lang/Iterable;)Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_f

    .line 403
    .line 404
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    move-object v6, v5

    .line 409
    check-cast v6, Lnet/blip/libblip/frontend/Transfer;

    .line 410
    .line 411
    iget-object v6, v6, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 412
    .line 413
    move-object/from16 v20, v0

    .line 414
    .line 415
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Status;->u:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 416
    .line 417
    if-ne v6, v0, :cond_e

    .line 418
    .line 419
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    :cond_e
    move-object/from16 v0, v20

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_f
    move-object/from16 v20, v0

    .line 426
    .line 427
    new-instance v0, Lh9;

    .line 428
    .line 429
    move-object/from16 v5, p0

    .line 430
    .line 431
    move-object/from16 v24, p1

    .line 432
    .line 433
    move-object v6, v3

    .line 434
    move-object/from16 v3, v21

    .line 435
    .line 436
    move-object/from16 v4, v23

    .line 437
    .line 438
    move-object/from16 v21, v11

    .line 439
    .line 440
    move-object/from16 v11, v20

    .line 441
    .line 442
    move-object/from16 v20, v9

    .line 443
    .line 444
    move-object/from16 v9, v22

    .line 445
    .line 446
    invoke-direct/range {v0 .. v21}, Lh9;-><init>(Lnet/blip/libblip/PeerPickerViewModel;Ljava/util/ArrayList;Landroidx/compose/ui/platform/UriHandler;Ljava/lang/String;Landroidx/navigation/NavController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lnet/blip/libblip/frontend/State;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lnet/blip/libblip/Flavor;Lkotlin/jvm/functions/Function1;ZLnet/blip/android/ui/util/NuancedPermissionState;Lnet/blip/android/ui/util/NuancedPermissionState;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 447
    .line 448
    .line 449
    move-object v6, v5

    .line 450
    const v1, 0x1f4e0d04

    .line 451
    .line 452
    .line 453
    move-object/from16 v3, v24

    .line 454
    .line 455
    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    const/16 v4, 0x30

    .line 460
    .line 461
    const/4 v5, 0x1

    .line 462
    const-wide/16 v0, 0x0

    .line 463
    .line 464
    invoke-static/range {v0 .. v5}, Lnet/blip/android/ui/util/FadeOutNavigationBarKt;->a(JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 465
    .line 466
    .line 467
    goto :goto_7

    .line 468
    :cond_10
    move-object v3, v0

    .line 469
    move-object v6, v5

    .line 470
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 471
    .line 472
    .line 473
    :goto_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    if-eqz v0, :cond_11

    .line 478
    .line 479
    new-instance v1, Ld;

    .line 480
    .line 481
    const/16 v2, 0xa

    .line 482
    .line 483
    move/from16 v3, p2

    .line 484
    .line 485
    invoke-direct {v1, v3, v2, v6}, Ld;-><init>(IILjava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 489
    .line 490
    :cond_11
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
