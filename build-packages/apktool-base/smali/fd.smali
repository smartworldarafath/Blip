.class public final synthetic Lfd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lnet/blip/libblip/Peer;

.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Lnet/blip/libblip/PeerId;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;

.field public final synthetic o:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lnet/blip/libblip/Peer;Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfd;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lfd;->o:Landroidx/navigation/NavHostController;

    .line 8
    .line 9
    iput-object p2, p0, Lfd;->k:Lnet/blip/libblip/Peer;

    .line 10
    .line 11
    iput-object p3, p0, Lfd;->l:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p4, p0, Lfd;->m:Lnet/blip/libblip/PeerId;

    .line 14
    .line 15
    iput-object p5, p0, Lfd;->n:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavHostController;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lfd;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd;->k:Lnet/blip/libblip/Peer;

    iput-object p2, p0, Lfd;->l:Landroid/content/Context;

    iput-object p3, p0, Lfd;->m:Lnet/blip/libblip/PeerId;

    iput-object p4, p0, Lfd;->n:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lfd;->o:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lfd;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/lit8 v8, v7, 0x3

    .line 28
    .line 29
    if-eq v8, v5, :cond_0

    .line 30
    .line 31
    move v8, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v8, v4

    .line 34
    :goto_0
    and-int/2addr v7, v6

    .line 35
    move-object v13, v1

    .line 36
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    invoke-virtual {v13, v7, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_b

    .line 43
    .line 44
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-ne v1, v3, :cond_1

    .line 49
    .line 50
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    if-ne v7, v3, :cond_2

    .line 66
    .line 67
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    new-instance v8, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;

    .line 79
    .line 80
    invoke-static {}, Landroidx/compose/material/icons/rounded/MoreVertKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-static {v9, v13}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    new-instance v10, Lpc;

    .line 89
    .line 90
    iget-object v11, v0, Lfd;->k:Lnet/blip/libblip/Peer;

    .line 91
    .line 92
    invoke-direct {v10, v11, v1, v7, v6}, Lpc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    const v12, -0x599df999

    .line 96
    .line 97
    .line 98
    invoke-static {v12, v10, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-direct {v8, v9, v10}, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    const/16 v14, 0x200

    .line 110
    .line 111
    const/4 v15, 0x3

    .line 112
    const/4 v9, 0x0

    .line 113
    move-object v8, v11

    .line 114
    const-wide/16 v10, 0x0

    .line 115
    .line 116
    invoke-static/range {v9 .. v15}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->a(Landroidx/compose/ui/Modifier;JLjava/util/List;Landroidx/compose/runtime/Composer;II)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iget-object v15, v0, Lfd;->l:Landroid/content/Context;

    .line 130
    .line 131
    iget-object v10, v0, Lfd;->m:Lnet/blip/libblip/PeerId;

    .line 132
    .line 133
    iget-object v11, v0, Lfd;->n:Lkotlin/jvm/functions/Function1;

    .line 134
    .line 135
    iget-object v0, v0, Lfd;->o:Landroidx/navigation/NavHostController;

    .line 136
    .line 137
    const/16 v12, 0x180

    .line 138
    .line 139
    if-eqz v9, :cond_6

    .line 140
    .line 141
    const v9, 0x27753610

    .line 142
    .line 143
    .line 144
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    or-int/2addr v9, v14

    .line 156
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    or-int/2addr v9, v14

    .line 161
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    or-int/2addr v9, v14

    .line 166
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    if-nez v9, :cond_4

    .line 171
    .line 172
    if-ne v14, v3, :cond_3

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    move-object v9, v10

    .line 176
    move-object v10, v0

    .line 177
    move-object v0, v9

    .line 178
    move-object v9, v11

    .line 179
    goto :goto_2

    .line 180
    :cond_4
    :goto_1
    new-instance v14, Lq1;

    .line 181
    .line 182
    const/16 v20, 0x2

    .line 183
    .line 184
    move-object/from16 v18, v0

    .line 185
    .line 186
    move-object/from16 v19, v1

    .line 187
    .line 188
    move-object/from16 v16, v10

    .line 189
    .line 190
    move-object/from16 v17, v11

    .line 191
    .line 192
    invoke-direct/range {v14 .. v20}, Lq1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 193
    .line 194
    .line 195
    move-object/from16 v0, v16

    .line 196
    .line 197
    move-object/from16 v9, v17

    .line 198
    .line 199
    move-object/from16 v10, v18

    .line 200
    .line 201
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :goto_2
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    if-ne v11, v3, :cond_5

    .line 211
    .line 212
    new-instance v11, Lcd;

    .line 213
    .line 214
    invoke-direct {v11, v1, v6}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_5
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 221
    .line 222
    invoke-static {v8, v14, v11, v13, v12}, Lnet/blip/android/ui/dialogs/RemovePeerConfirmationDialogKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_6
    move-object v9, v10

    .line 230
    move-object v10, v0

    .line 231
    move-object v0, v9

    .line 232
    move-object v9, v11

    .line 233
    const v1, 0x2780d6e9

    .line 234
    .line 235
    .line 236
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 240
    .line 241
    .line 242
    :goto_3
    invoke-virtual {v8}, Lnet/blip/libblip/Peer;->e()Lnet/blip/libblip/User;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    check-cast v6, Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_a

    .line 257
    .line 258
    if-eqz v1, :cond_a

    .line 259
    .line 260
    const v6, 0x2782d9cd

    .line 261
    .line 262
    .line 263
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    or-int/2addr v6, v8

    .line 275
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    or-int/2addr v6, v8

    .line 280
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    or-int/2addr v6, v8

    .line 285
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    or-int/2addr v6, v8

    .line 290
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    if-nez v6, :cond_8

    .line 295
    .line 296
    if-ne v8, v3, :cond_7

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_7
    move-object v0, v1

    .line 300
    goto :goto_5

    .line 301
    :cond_8
    :goto_4
    new-instance v14, Ldd;

    .line 302
    .line 303
    move-object/from16 v16, v0

    .line 304
    .line 305
    move-object/from16 v18, v1

    .line 306
    .line 307
    move-object/from16 v20, v7

    .line 308
    .line 309
    move-object/from16 v17, v9

    .line 310
    .line 311
    move-object/from16 v19, v10

    .line 312
    .line 313
    invoke-direct/range {v14 .. v20}, Ldd;-><init>(Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/User;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/MutableState;)V

    .line 314
    .line 315
    .line 316
    move-object/from16 v0, v18

    .line 317
    .line 318
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    move-object v8, v14

    .line 322
    :goto_5
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 323
    .line 324
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-ne v1, v3, :cond_9

    .line 329
    .line 330
    new-instance v1, Lcd;

    .line 331
    .line 332
    invoke-direct {v1, v7, v5}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 339
    .line 340
    invoke-static {v0, v8, v1, v13, v12}, Lnet/blip/android/ui/dialogs/BlockUserConfirmationDialogKt;->a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_a
    const v0, 0x278b3d09

    .line 348
    .line 349
    .line 350
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 354
    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 358
    .line 359
    .line 360
    :goto_6
    return-object v2

    .line 361
    :pswitch_0
    move-object/from16 v1, p1

    .line 362
    .line 363
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 364
    .line 365
    move-object/from16 v7, p2

    .line 366
    .line 367
    check-cast v7, Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    and-int/lit8 v8, v7, 0x3

    .line 374
    .line 375
    if-eq v8, v5, :cond_c

    .line 376
    .line 377
    move v4, v6

    .line 378
    :cond_c
    and-int/lit8 v5, v7, 0x1

    .line 379
    .line 380
    move-object v12, v1

    .line 381
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 382
    .line 383
    invoke-virtual {v12, v5, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_f

    .line 388
    .line 389
    new-instance v4, Lfd;

    .line 390
    .line 391
    iget-object v5, v0, Lfd;->k:Lnet/blip/libblip/Peer;

    .line 392
    .line 393
    iget-object v6, v0, Lfd;->l:Landroid/content/Context;

    .line 394
    .line 395
    iget-object v7, v0, Lfd;->m:Lnet/blip/libblip/PeerId;

    .line 396
    .line 397
    iget-object v8, v0, Lfd;->n:Lkotlin/jvm/functions/Function1;

    .line 398
    .line 399
    iget-object v9, v0, Lfd;->o:Landroidx/navigation/NavHostController;

    .line 400
    .line 401
    invoke-direct/range {v4 .. v9}, Lfd;-><init>(Lnet/blip/libblip/Peer;Landroid/content/Context;Lnet/blip/libblip/PeerId;Lkotlin/jvm/functions/Function1;Landroidx/navigation/NavHostController;)V

    .line 402
    .line 403
    .line 404
    const v0, -0x6917f007

    .line 405
    .line 406
    .line 407
    invoke-static {v0, v4, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    if-nez v0, :cond_d

    .line 420
    .line 421
    if-ne v1, v3, :cond_e

    .line 422
    .line 423
    :cond_d
    new-instance v1, Li3;

    .line 424
    .line 425
    const/4 v0, 0x5

    .line 426
    invoke-direct {v1, v9, v0}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    :cond_e
    move-object v11, v1

    .line 433
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 434
    .line 435
    const/16 v13, 0xc00

    .line 436
    .line 437
    const/4 v14, 0x7

    .line 438
    const/4 v6, 0x0

    .line 439
    const-wide/16 v7, 0x0

    .line 440
    .line 441
    const/4 v9, 0x0

    .line 442
    invoke-static/range {v6 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 443
    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 447
    .line 448
    .line 449
    :goto_7
    return-object v2

    .line 450
    nop

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
