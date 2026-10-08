.class public final synthetic Li1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;ZLandroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/State;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Li1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li1;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Li1;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p3, p0, Li1;->k:Z

    .line 12
    .line 13
    iput-object p4, p0, Li1;->n:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Li1;->o:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/PeerPickerContent;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Li1;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li1;->k:Z

    iput-object p2, p0, Li1;->l:Ljava/lang/Object;

    iput-object p3, p0, Li1;->m:Ljava/lang/Object;

    iput-object p4, p0, Li1;->n:Ljava/lang/Object;

    iput-object p5, p0, Li1;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Li1;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/16 v3, 0x180

    .line 8
    .line 9
    iget-object v4, v0, Li1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Li1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iget-boolean v6, v0, Li1;->k:Z

    .line 14
    .line 15
    iget-object v7, v0, Li1;->m:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Li1;->l:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 24
    .line 25
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 26
    .line 27
    check-cast v5, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 28
    .line 29
    check-cast v4, Landroidx/compose/runtime/State;

    .line 30
    .line 31
    move-object/from16 v1, p1

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    .line 34
    .line 35
    move-object/from16 v9, p2

    .line 36
    .line 37
    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .line 38
    .line 39
    move-object/from16 v10, p3

    .line 40
    .line 41
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 42
    .line 43
    move-object/from16 v11, p4

    .line 44
    .line 45
    check-cast v11, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, Landroidx/compose/animation/core/SeekableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    .line 51
    .line 52
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v6, :cond_3

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-interface {v0, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    move-object v6, v4

    .line 92
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 93
    .line 94
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 v4, 0x0

    .line 102
    :goto_0
    move-object v9, v4

    .line 103
    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .line 104
    .line 105
    :cond_3
    :goto_1
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 106
    .line 107
    if-nez v9, :cond_4

    .line 108
    .line 109
    const v0, 0x33ff2b67

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    const v0, -0x48a53026

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 123
    .line 124
    .line 125
    new-instance v0, La0;

    .line 126
    .line 127
    const/16 v4, 0x12

    .line 128
    .line 129
    invoke-direct {v0, v4, v9, v1}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const v1, -0x43d52dcf

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v9, v5, v0, v10, v3}, Landroidx/navigation/compose/NavBackStackEntryProviderKt;->a(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-object v2

    .line 146
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    move-object v12, v7

    .line 149
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 150
    .line 151
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 152
    .line 153
    move-object v15, v4

    .line 154
    check-cast v15, Lnet/blip/libblip/PeerPickerContent;

    .line 155
    .line 156
    move-object/from16 v1, p1

    .line 157
    .line 158
    check-cast v1, Lnet/blip/shared/SelectableLazyItemScope;

    .line 159
    .line 160
    move-object/from16 v11, p2

    .line 161
    .line 162
    check-cast v11, Lnet/blip/libblip/Peer;

    .line 163
    .line 164
    move-object/from16 v4, p3

    .line 165
    .line 166
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 167
    .line 168
    move-object/from16 v7, p4

    .line 169
    .line 170
    check-cast v7, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 183
    .line 184
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 185
    .line 186
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    move-object v10, v1

    .line 191
    check-cast v10, Landroid/content/Context;

    .line 192
    .line 193
    if-eqz v6, :cond_5

    .line 194
    .line 195
    instance-of v6, v11, Lnet/blip/libblip/Peer$User;

    .line 196
    .line 197
    if-eqz v6, :cond_5

    .line 198
    .line 199
    move-object v6, v11

    .line 200
    check-cast v6, Lnet/blip/libblip/Peer$User;

    .line 201
    .line 202
    iget-object v6, v6, Lnet/blip/libblip/Peer$User;->j:Lnet/blip/libblip/User;

    .line 203
    .line 204
    iget-boolean v6, v6, Lnet/blip/libblip/User;->r:Z

    .line 205
    .line 206
    if-nez v6, :cond_5

    .line 207
    .line 208
    const/4 v6, 0x1

    .line 209
    goto :goto_3

    .line 210
    :cond_5
    move v6, v8

    .line 211
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 216
    .line 217
    if-ne v9, v13, :cond_6

    .line 218
    .line 219
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 229
    .line 230
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    if-ne v14, v13, :cond_7

    .line 235
    .line 236
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    :cond_7
    move-object/from16 v16, v14

    .line 246
    .line 247
    check-cast v16, Landroidx/compose/runtime/MutableState;

    .line 248
    .line 249
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    if-ne v14, v13, :cond_8

    .line 254
    .line 255
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_8
    move-object/from16 v17, v14

    .line 265
    .line 266
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 267
    .line 268
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v18

    .line 276
    or-int v14, v14, v18

    .line 277
    .line 278
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v18

    .line 282
    or-int v14, v14, v18

    .line 283
    .line 284
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    if-nez v14, :cond_9

    .line 289
    .line 290
    if-ne v1, v13, :cond_a

    .line 291
    .line 292
    :cond_9
    new-instance v1, Ll1;

    .line 293
    .line 294
    invoke-direct {v1, v6, v0, v11, v9}, Ll1;-><init>(ZLkotlin/jvm/functions/Function1;Lnet/blip/libblip/Peer;Landroidx/compose/runtime/MutableState;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    move-object/from16 v19, v1

    .line 301
    .line 302
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 303
    .line 304
    move-object v1, v13

    .line 305
    new-instance v13, Lm1;

    .line 306
    .line 307
    const/16 v18, 0x0

    .line 308
    .line 309
    move-object v14, v11

    .line 310
    invoke-direct/range {v13 .. v18}, Lm1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v6, v17

    .line 314
    .line 315
    move-object v14, v13

    .line 316
    move-object/from16 v13, v16

    .line 317
    .line 318
    const v15, -0x5dadff11

    .line 319
    .line 320
    .line 321
    invoke-static {v15, v14, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 322
    .line 323
    .line 324
    move-result-object v20

    .line 325
    and-int/lit8 v14, v7, 0x70

    .line 326
    .line 327
    or-int/lit16 v14, v14, 0x6000

    .line 328
    .line 329
    const/16 v23, 0x5

    .line 330
    .line 331
    const/16 v16, 0x0

    .line 332
    .line 333
    move-object/from16 v21, v4

    .line 334
    .line 335
    move-object/from16 v17, v11

    .line 336
    .line 337
    move/from16 v22, v14

    .line 338
    .line 339
    invoke-static/range {v16 .. v23}, Lnet/blip/android/ui/list/PeerListRowKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v14

    .line 346
    check-cast v14, Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    if-eqz v14, :cond_e

    .line 353
    .line 354
    const v14, -0x4a5c40d9    # -1.2200079E-6f

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v14

    .line 364
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    or-int/2addr v14, v15

    .line 369
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v15

    .line 373
    if-nez v14, :cond_b

    .line 374
    .line 375
    if-ne v15, v1, :cond_c

    .line 376
    .line 377
    :cond_b
    new-instance v15, Ln1;

    .line 378
    .line 379
    invoke-direct {v15, v0, v11, v9, v8}, Ln1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    :cond_c
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 386
    .line 387
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-ne v0, v1, :cond_d

    .line 392
    .line 393
    new-instance v0, Lo1;

    .line 394
    .line 395
    invoke-direct {v0, v9, v8}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    :cond_d
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 402
    .line 403
    shr-int/lit8 v9, v7, 0x3

    .line 404
    .line 405
    and-int/lit8 v9, v9, 0xe

    .line 406
    .line 407
    or-int/2addr v9, v3

    .line 408
    invoke-static {v11, v15, v0, v4, v9}, Lnet/blip/android/ui/peerpicker/AndroidPeerPickerListItemsKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 412
    .line 413
    .line 414
    goto :goto_4

    .line 415
    :cond_e
    const v0, -0x4a57cf6a

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 422
    .line 423
    .line 424
    :goto_4
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    check-cast v0, Ljava/lang/Boolean;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_12

    .line 435
    .line 436
    const v0, -0x4a57039d

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    or-int/2addr v0, v9

    .line 451
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v9

    .line 455
    or-int/2addr v0, v9

    .line 456
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    if-nez v0, :cond_10

    .line 461
    .line 462
    if-ne v9, v1, :cond_f

    .line 463
    .line 464
    goto :goto_5

    .line 465
    :cond_f
    move-object v14, v10

    .line 466
    goto :goto_6

    .line 467
    :cond_10
    :goto_5
    new-instance v9, Lp1;

    .line 468
    .line 469
    const/4 v14, 0x0

    .line 470
    invoke-direct/range {v9 .. v14}, Lp1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 471
    .line 472
    .line 473
    move-object v14, v10

    .line 474
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :goto_6
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 478
    .line 479
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    if-ne v0, v1, :cond_11

    .line 484
    .line 485
    new-instance v0, Lo1;

    .line 486
    .line 487
    const/4 v10, 0x1

    .line 488
    invoke-direct {v0, v13, v10}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    :cond_11
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 495
    .line 496
    shr-int/lit8 v7, v7, 0x3

    .line 497
    .line 498
    and-int/lit8 v7, v7, 0xe

    .line 499
    .line 500
    or-int/2addr v7, v3

    .line 501
    invoke-static {v11, v9, v0, v4, v7}, Lnet/blip/android/ui/dialogs/RemovePeerConfirmationDialogKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 505
    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_12
    move-object v14, v10

    .line 509
    const v0, -0x4a5192ea

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 516
    .line 517
    .line 518
    :goto_7
    invoke-virtual {v11}, Lnet/blip/libblip/Peer;->e()Lnet/blip/libblip/User;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    check-cast v7, Ljava/lang/Boolean;

    .line 527
    .line 528
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    if-eqz v7, :cond_16

    .line 533
    .line 534
    if-eqz v0, :cond_16

    .line 535
    .line 536
    const v7, -0x4a5005ba

    .line 537
    .line 538
    .line 539
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v7

    .line 546
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    or-int/2addr v7, v9

    .line 551
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v9

    .line 555
    or-int/2addr v7, v9

    .line 556
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v9

    .line 560
    or-int/2addr v7, v9

    .line 561
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    if-nez v7, :cond_13

    .line 566
    .line 567
    if-ne v9, v1, :cond_14

    .line 568
    .line 569
    :cond_13
    new-instance v13, Lq1;

    .line 570
    .line 571
    const/16 v19, 0x0

    .line 572
    .line 573
    move-object/from16 v17, v0

    .line 574
    .line 575
    move-object/from16 v16, v5

    .line 576
    .line 577
    move-object/from16 v18, v6

    .line 578
    .line 579
    move-object v15, v11

    .line 580
    invoke-direct/range {v13 .. v19}, Lq1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    move-object v9, v13

    .line 587
    :cond_14
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 588
    .line 589
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    if-ne v5, v1, :cond_15

    .line 594
    .line 595
    new-instance v5, Lo1;

    .line 596
    .line 597
    const/4 v1, 0x2

    .line 598
    invoke-direct {v5, v6, v1}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :cond_15
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 605
    .line 606
    invoke-static {v0, v9, v5, v4, v3}, Lnet/blip/android/ui/dialogs/BlockUserConfirmationDialogKt;->a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 610
    .line 611
    .line 612
    goto :goto_8

    .line 613
    :cond_16
    const v0, -0x4a4aa04a

    .line 614
    .line 615
    .line 616
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 620
    .line 621
    .line 622
    :goto_8
    return-object v2

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
