.class public final synthetic Lr7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lr7;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lr7;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lr7;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lr7;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lr7;->n:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lr7;->o:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 17
    iput p7, p0, Lr7;->j:I

    iput-object p1, p0, Lr7;->k:Ljava/lang/Object;

    iput-object p2, p0, Lr7;->l:Ljava/lang/Object;

    iput-object p3, p0, Lr7;->m:Ljava/lang/Object;

    iput-object p4, p0, Lr7;->n:Ljava/lang/Object;

    iput-object p5, p0, Lr7;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lr7;->j:I

    .line 4
    .line 5
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 6
    .line 7
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 8
    .line 9
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 10
    .line 11
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 12
    .line 13
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 14
    .line 15
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 16
    .line 17
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 18
    .line 19
    sget-object v12, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 20
    .line 21
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 22
    .line 23
    const/4 v14, 0x2

    .line 24
    sget-object v17, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    const/16 v18, 0x1

    .line 27
    .line 28
    iget-object v2, v0, Lr7;->o:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v15, v0, Lr7;->n:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v4, v0, Lr7;->m:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v7, v0, Lr7;->l:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v0, v0, Lr7;->k:Ljava/lang/Object;

    .line 37
    .line 38
    packed-switch v1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    check-cast v7, Ljava/lang/String;

    .line 44
    .line 45
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    check-cast v15, Landroid/content/Context;

    .line 48
    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v1, p1

    .line 52
    .line 53
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 54
    .line 55
    move-object/from16 v3, p2

    .line 56
    .line 57
    check-cast v3, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    move-object/from16 p0, v1

    .line 64
    .line 65
    and-int/lit8 v1, v3, 0x3

    .line 66
    .line 67
    if-eq v1, v14, :cond_0

    .line 68
    .line 69
    move/from16 v1, v18

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    and-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    move-object/from16 v14, p0

    .line 76
    .line 77
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 78
    .line 79
    invoke-virtual {v14, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_8

    .line 84
    .line 85
    const/high16 v24, 0x41000000    # 8.0f

    .line 86
    .line 87
    const/16 v25, 0x3

    .line 88
    .line 89
    sget-object v20, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 90
    .line 91
    const/16 v21, 0x0

    .line 92
    .line 93
    const/16 v22, 0x0

    .line 94
    .line 95
    const/high16 v23, 0x41800000    # 16.0f

    .line 96
    .line 97
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    .line 103
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/16 v3, 0x30

    .line 108
    .line 109
    invoke-static {v5, v6, v14, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 114
    .line 115
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 128
    .line 129
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 133
    .line 134
    .line 135
    move/from16 p0, v5

    .line 136
    .line 137
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 138
    .line 139
    if-eqz v5, :cond_1

    .line 140
    .line 141
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-static {v14, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v14, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 152
    .line 153
    .line 154
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v14, v3, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v14, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    or-int/2addr v1, v3

    .line 176
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    or-int/2addr v1, v3

    .line 181
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    or-int/2addr v1, v3

    .line 186
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    or-int/2addr v1, v3

    .line 191
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-nez v1, :cond_2

    .line 196
    .line 197
    if-ne v3, v13, :cond_3

    .line 198
    .line 199
    :cond_2
    new-instance v20, Luh;

    .line 200
    .line 201
    const/16 v26, 0x0

    .line 202
    .line 203
    move-object/from16 v21, v0

    .line 204
    .line 205
    move-object/from16 v25, v2

    .line 206
    .line 207
    move-object/from16 v23, v4

    .line 208
    .line 209
    move-object/from16 v22, v7

    .line 210
    .line 211
    move-object/from16 v24, v15

    .line 212
    .line 213
    invoke-direct/range {v20 .. v26}, Luh;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    move-object/from16 v3, v20

    .line 217
    .line 218
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    :cond_3
    move-object/from16 v20, v3

    .line 222
    .line 223
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 224
    .line 225
    sget-object v23, Lnet/blip/android/ui/home/ComposableSingletons$TransferRemovalDialogKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 226
    .line 227
    const/16 v25, 0x1fe

    .line 228
    .line 229
    const/16 v21, 0x0

    .line 230
    .line 231
    const/16 v22, 0x0

    .line 232
    .line 233
    move-object/from16 v24, v14

    .line 234
    .line 235
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v1, v24

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    or-int/2addr v3, v5

    .line 249
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    or-int/2addr v3, v5

    .line 254
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    or-int/2addr v3, v5

    .line 259
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    or-int/2addr v3, v5

    .line 264
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    if-nez v3, :cond_4

    .line 269
    .line 270
    if-ne v5, v13, :cond_5

    .line 271
    .line 272
    :cond_4
    new-instance v20, Luh;

    .line 273
    .line 274
    const/16 v26, 0x1

    .line 275
    .line 276
    move-object/from16 v21, v0

    .line 277
    .line 278
    move-object/from16 v25, v2

    .line 279
    .line 280
    move-object/from16 v23, v4

    .line 281
    .line 282
    move-object/from16 v22, v7

    .line 283
    .line 284
    move-object/from16 v24, v15

    .line 285
    .line 286
    invoke-direct/range {v20 .. v26}, Luh;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v5, v20

    .line 290
    .line 291
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_5
    move-object/from16 v20, v5

    .line 295
    .line 296
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 297
    .line 298
    sget-object v23, Lnet/blip/android/ui/home/ComposableSingletons$TransferRemovalDialogKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 299
    .line 300
    const/16 v25, 0x1fe

    .line 301
    .line 302
    const/16 v21, 0x0

    .line 303
    .line 304
    const/16 v22, 0x0

    .line 305
    .line 306
    move-object/from16 v24, v1

    .line 307
    .line 308
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    if-nez v0, :cond_6

    .line 320
    .line 321
    if-ne v2, v13, :cond_7

    .line 322
    .line 323
    :cond_6
    new-instance v2, Lvh;

    .line 324
    .line 325
    const/4 v0, 0x0

    .line 326
    invoke-direct {v2, v4, v0}, Lvh;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_7
    move-object/from16 v20, v2

    .line 333
    .line 334
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 335
    .line 336
    sget-object v23, Lnet/blip/android/ui/home/ComposableSingletons$TransferRemovalDialogKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 337
    .line 338
    const/16 v25, 0x1fe

    .line 339
    .line 340
    const/16 v21, 0x0

    .line 341
    .line 342
    const/16 v22, 0x0

    .line 343
    .line 344
    move-object/from16 v24, v1

    .line 345
    .line 346
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 347
    .line 348
    .line 349
    move/from16 v0, v18

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_8
    move-object v1, v14

    .line 356
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 357
    .line 358
    .line 359
    :goto_2
    return-object v17

    .line 360
    :pswitch_0
    move-object v3, v0

    .line 361
    check-cast v3, Lnet/blip/libblip/frontend/Transfer;

    .line 362
    .line 363
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 364
    .line 365
    check-cast v4, Ljava/lang/String;

    .line 366
    .line 367
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 368
    .line 369
    check-cast v2, Landroid/content/Context;

    .line 370
    .line 371
    move-object/from16 v0, p1

    .line 372
    .line 373
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 374
    .line 375
    move-object/from16 v1, p2

    .line 376
    .line 377
    check-cast v1, Ljava/lang/Integer;

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    move-object/from16 p0, v0

    .line 384
    .line 385
    and-int/lit8 v0, v1, 0x3

    .line 386
    .line 387
    if-eq v0, v14, :cond_9

    .line 388
    .line 389
    const/4 v0, 0x1

    .line 390
    :goto_3
    const/16 v18, 0x1

    .line 391
    .line 392
    goto :goto_4

    .line 393
    :cond_9
    const/4 v0, 0x0

    .line 394
    goto :goto_3

    .line 395
    :goto_4
    and-int/lit8 v1, v1, 0x1

    .line 396
    .line 397
    move-object/from16 v14, p0

    .line 398
    .line 399
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 400
    .line 401
    invoke-virtual {v14, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_11

    .line 406
    .line 407
    const/high16 v24, 0x41000000    # 8.0f

    .line 408
    .line 409
    const/16 v25, 0x3

    .line 410
    .line 411
    sget-object v20, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 412
    .line 413
    const/16 v21, 0x0

    .line 414
    .line 415
    const/16 v22, 0x0

    .line 416
    .line 417
    const/high16 v23, 0x41800000    # 16.0f

    .line 418
    .line 419
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    const/high16 v1, 0x3f800000    # 1.0f

    .line 424
    .line 425
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const/16 v1, 0x30

    .line 430
    .line 431
    invoke-static {v5, v6, v14, v1}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    iget-wide v5, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 436
    .line 437
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 450
    .line 451
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 455
    .line 456
    .line 457
    move/from16 p0, v5

    .line 458
    .line 459
    iget-boolean v5, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 460
    .line 461
    if-eqz v5, :cond_a

    .line 462
    .line 463
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 464
    .line 465
    .line 466
    goto :goto_5

    .line 467
    :cond_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 468
    .line 469
    .line 470
    :goto_5
    invoke-static {v14, v1, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v14, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 474
    .line 475
    .line 476
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 481
    .line 482
    .line 483
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v14, v0, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    or-int/2addr v0, v1

    .line 498
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    or-int/2addr v0, v1

    .line 503
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    or-int/2addr v0, v1

    .line 508
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    or-int/2addr v0, v1

    .line 513
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    if-nez v0, :cond_b

    .line 518
    .line 519
    if-ne v1, v13, :cond_c

    .line 520
    .line 521
    :cond_b
    move-object v5, v4

    .line 522
    move-object v4, v7

    .line 523
    move-object v7, v2

    .line 524
    goto :goto_6

    .line 525
    :cond_c
    move-object v5, v4

    .line 526
    move-object v4, v7

    .line 527
    move-object v6, v15

    .line 528
    goto :goto_7

    .line 529
    :goto_6
    new-instance v2, Lq1;

    .line 530
    .line 531
    move-object v6, v15

    .line 532
    invoke-direct/range {v2 .. v7}, Lq1;-><init>(Lnet/blip/libblip/frontend/Transfer;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroid/content/Context;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    move-object v1, v2

    .line 539
    :goto_7
    move-object/from16 v20, v1

    .line 540
    .line 541
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 542
    .line 543
    sget-object v23, Lnet/blip/android/ui/home/ComposableSingletons$TransferCancellationDialogKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 544
    .line 545
    const/16 v25, 0x1fe

    .line 546
    .line 547
    const/16 v21, 0x0

    .line 548
    .line 549
    const/16 v22, 0x0

    .line 550
    .line 551
    move-object/from16 v24, v14

    .line 552
    .line 553
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 554
    .line 555
    .line 556
    move-object/from16 v0, v24

    .line 557
    .line 558
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    if-nez v1, :cond_d

    .line 567
    .line 568
    if-ne v2, v13, :cond_e

    .line 569
    .line 570
    :cond_d
    new-instance v2, Lcd;

    .line 571
    .line 572
    const/16 v1, 0x1a

    .line 573
    .line 574
    invoke-direct {v2, v6, v1}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    :cond_e
    move-object/from16 v20, v2

    .line 581
    .line 582
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 583
    .line 584
    sget-object v23, Lnet/blip/android/ui/home/ComposableSingletons$TransferCancellationDialogKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 585
    .line 586
    const/16 v25, 0x1fe

    .line 587
    .line 588
    const/16 v21, 0x0

    .line 589
    .line 590
    const/16 v22, 0x0

    .line 591
    .line 592
    move-object/from16 v24, v0

    .line 593
    .line 594
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    or-int/2addr v1, v2

    .line 606
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    if-nez v1, :cond_f

    .line 611
    .line 612
    if-ne v2, v13, :cond_10

    .line 613
    .line 614
    :cond_f
    new-instance v2, Ltg;

    .line 615
    .line 616
    const/4 v1, 0x3

    .line 617
    invoke-direct {v2, v1, v4, v5}, Ltg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    :cond_10
    move-object/from16 v20, v2

    .line 624
    .line 625
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 626
    .line 627
    sget-object v23, Lnet/blip/android/ui/home/ComposableSingletons$TransferCancellationDialogKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 628
    .line 629
    const/16 v25, 0x1fe

    .line 630
    .line 631
    const/16 v21, 0x0

    .line 632
    .line 633
    const/16 v22, 0x0

    .line 634
    .line 635
    move-object/from16 v24, v0

    .line 636
    .line 637
    invoke-static/range {v20 .. v25}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 638
    .line 639
    .line 640
    const/4 v1, 0x1

    .line 641
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 642
    .line 643
    .line 644
    goto :goto_8

    .line 645
    :cond_11
    move-object v0, v14

    .line 646
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 647
    .line 648
    .line 649
    :goto_8
    return-object v17

    .line 650
    :pswitch_1
    check-cast v0, Lnet/blip/shared/SimpleLinkTextButton;

    .line 651
    .line 652
    move-object v3, v7

    .line 653
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 654
    .line 655
    check-cast v4, Ljava/lang/String;

    .line 656
    .line 657
    move-object v5, v15

    .line 658
    check-cast v5, Ljava/lang/String;

    .line 659
    .line 660
    move-object v6, v2

    .line 661
    check-cast v6, Landroidx/compose/ui/text/TextStyle;

    .line 662
    .line 663
    move-object/from16 v7, p1

    .line 664
    .line 665
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 666
    .line 667
    move-object/from16 v1, p2

    .line 668
    .line 669
    check-cast v1, Ljava/lang/Integer;

    .line 670
    .line 671
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    const/16 v18, 0x1

    .line 675
    .line 676
    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 677
    .line 678
    .line 679
    move-result v8

    .line 680
    move-object v2, v0

    .line 681
    invoke-virtual/range {v2 .. v8}, Lnet/blip/shared/SimpleLinkTextButton;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;I)V

    .line 682
    .line 683
    .line 684
    return-object v17

    .line 685
    :pswitch_2
    move-object v9, v0

    .line 686
    check-cast v9, Lnet/blip/libblip/Flavor;

    .line 687
    .line 688
    move-object v10, v7

    .line 689
    check-cast v10, Lnet/blip/libblip/SystemPaths;

    .line 690
    .line 691
    move-object v11, v4

    .line 692
    check-cast v11, Lnet/blip/libblip/HardwareInfo;

    .line 693
    .line 694
    move-object v12, v15

    .line 695
    check-cast v12, Lnet/blip/libblip/Core;

    .line 696
    .line 697
    move-object v13, v2

    .line 698
    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 699
    .line 700
    move-object/from16 v14, p1

    .line 701
    .line 702
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 703
    .line 704
    move-object/from16 v0, p2

    .line 705
    .line 706
    check-cast v0, Ljava/lang/Integer;

    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    const/16 v0, 0x6001

    .line 712
    .line 713
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 714
    .line 715
    .line 716
    move-result v15

    .line 717
    invoke-static/range {v9 .. v15}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->a(Lnet/blip/libblip/Flavor;Lnet/blip/libblip/SystemPaths;Lnet/blip/libblip/HardwareInfo;Lnet/blip/libblip/Core;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 718
    .line 719
    .line 720
    return-object v17

    .line 721
    :pswitch_3
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 722
    .line 723
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 724
    .line 725
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 726
    .line 727
    check-cast v15, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 728
    .line 729
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 730
    .line 731
    move-object/from16 v1, p1

    .line 732
    .line 733
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 734
    .line 735
    move-object/from16 v5, p2

    .line 736
    .line 737
    check-cast v5, Ljava/lang/Integer;

    .line 738
    .line 739
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    and-int/lit8 v6, v5, 0x3

    .line 744
    .line 745
    if-eq v6, v14, :cond_12

    .line 746
    .line 747
    const/4 v6, 0x1

    .line 748
    :goto_9
    const/16 v18, 0x1

    .line 749
    .line 750
    goto :goto_a

    .line 751
    :cond_12
    const/4 v6, 0x0

    .line 752
    goto :goto_9

    .line 753
    :goto_a
    and-int/lit8 v5, v5, 0x1

    .line 754
    .line 755
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 756
    .line 757
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    if-eqz v5, :cond_15

    .line 762
    .line 763
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v5

    .line 767
    if-ne v5, v13, :cond_13

    .line 768
    .line 769
    new-instance v5, Li2;

    .line 770
    .line 771
    const/16 v6, 0xd

    .line 772
    .line 773
    invoke-direct {v5, v7, v6}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    :cond_13
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 780
    .line 781
    invoke-static {v0, v5}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    const/4 v5, 0x1

    .line 786
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    iget-wide v5, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 791
    .line 792
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 797
    .line 798
    .line 799
    move-result-object v6

    .line 800
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 805
    .line 806
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 810
    .line 811
    .line 812
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 813
    .line 814
    if-eqz v7, :cond_14

    .line 815
    .line 816
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 817
    .line 818
    .line 819
    goto :goto_b

    .line 820
    :cond_14
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 821
    .line 822
    .line 823
    :goto_b
    invoke-static {v1, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 824
    .line 825
    .line 826
    invoke-static {v1, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 827
    .line 828
    .line 829
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 830
    .line 831
    .line 832
    move-result-object v3

    .line 833
    invoke-static {v1, v3, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 834
    .line 835
    .line 836
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 840
    .line 841
    .line 842
    const/16 v19, 0x0

    .line 843
    .line 844
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    const/4 v0, 0x6

    .line 852
    invoke-virtual {v15, v2, v1, v0}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 853
    .line 854
    .line 855
    const/4 v0, 0x1

    .line 856
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 857
    .line 858
    .line 859
    goto :goto_c

    .line 860
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 861
    .line 862
    .line 863
    :goto_c
    return-object v17

    .line 864
    :pswitch_4
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 865
    .line 866
    move-object v3, v7

    .line 867
    check-cast v3, Lnet/blip/shared/Paintable;

    .line 868
    .line 869
    check-cast v4, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 870
    .line 871
    move-object v5, v15

    .line 872
    check-cast v5, Ljava/lang/String;

    .line 873
    .line 874
    move-object v6, v2

    .line 875
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 876
    .line 877
    move-object/from16 v7, p1

    .line 878
    .line 879
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 880
    .line 881
    move-object/from16 v1, p2

    .line 882
    .line 883
    check-cast v1, Ljava/lang/Integer;

    .line 884
    .line 885
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    .line 887
    .line 888
    const/16 v1, 0xc01

    .line 889
    .line 890
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 891
    .line 892
    .line 893
    move-result v8

    .line 894
    move-object v2, v0

    .line 895
    invoke-static/range {v2 .. v8}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/Paintable;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 896
    .line 897
    .line 898
    return-object v17

    .line 899
    :pswitch_5
    move-object v9, v0

    .line 900
    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 901
    .line 902
    move-object v10, v7

    .line 903
    check-cast v10, Landroidx/compose/ui/text/TextStyle;

    .line 904
    .line 905
    move-object v11, v4

    .line 906
    check-cast v11, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 907
    .line 908
    move-object v12, v15

    .line 909
    check-cast v12, Landroidx/compose/ui/graphics/Color;

    .line 910
    .line 911
    move-object v13, v2

    .line 912
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 913
    .line 914
    move-object/from16 v14, p1

    .line 915
    .line 916
    check-cast v14, Landroidx/compose/runtime/Composer;

    .line 917
    .line 918
    move-object/from16 v0, p2

    .line 919
    .line 920
    check-cast v0, Ljava/lang/Integer;

    .line 921
    .line 922
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    .line 924
    .line 925
    const/16 v0, 0xc31

    .line 926
    .line 927
    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 928
    .line 929
    .line 930
    move-result v15

    .line 931
    invoke-static/range {v9 .. v15}, Lnet/blip/android/ui/components/InlineTextButtonKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 932
    .line 933
    .line 934
    return-object v17

    .line 935
    :pswitch_6
    check-cast v0, Ljava/util/List;

    .line 936
    .line 937
    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    .line 938
    .line 939
    check-cast v4, Landroidx/compose/runtime/State;

    .line 940
    .line 941
    check-cast v15, Landroid/content/Context;

    .line 942
    .line 943
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 944
    .line 945
    move-object/from16 v1, p1

    .line 946
    .line 947
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 948
    .line 949
    move-object/from16 v5, p2

    .line 950
    .line 951
    check-cast v5, Ljava/lang/Integer;

    .line 952
    .line 953
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    and-int/lit8 v6, v5, 0x3

    .line 958
    .line 959
    if-eq v6, v14, :cond_16

    .line 960
    .line 961
    const/4 v6, 0x1

    .line 962
    :goto_d
    const/16 v18, 0x1

    .line 963
    .line 964
    goto :goto_e

    .line 965
    :cond_16
    const/4 v6, 0x0

    .line 966
    goto :goto_d

    .line 967
    :goto_e
    and-int/lit8 v5, v5, 0x1

    .line 968
    .line 969
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 970
    .line 971
    invoke-virtual {v1, v5, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 972
    .line 973
    .line 974
    move-result v5

    .line 975
    if-eqz v5, :cond_18

    .line 976
    .line 977
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 978
    .line 979
    const/high16 v6, 0x3f800000    # 1.0f

    .line 980
    .line 981
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 982
    .line 983
    .line 984
    move-result-object v13

    .line 985
    const/4 v6, 0x0

    .line 986
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    move-object/from16 p0, v15

    .line 991
    .line 992
    iget-wide v14, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 993
    .line 994
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 995
    .line 996
    .line 997
    move-result v6

    .line 998
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 999
    .line 1000
    .line 1001
    move-result-object v14

    .line 1002
    invoke-static {v1, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v13

    .line 1006
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1007
    .line 1008
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1012
    .line 1013
    .line 1014
    iget-boolean v15, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1015
    .line 1016
    if-eqz v15, :cond_17

    .line 1017
    .line 1018
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_f

    .line 1022
    :cond_17
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1023
    .line 1024
    .line 1025
    :goto_f
    invoke-static {v1, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v1, v14, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1029
    .line 1030
    .line 1031
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    invoke-static {v1, v3, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-static {v1, v13, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1042
    .line 1043
    .line 1044
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 1045
    .line 1046
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 1047
    .line 1048
    invoke-virtual {v3, v5, v6}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v3

    .line 1052
    invoke-static {v1, v3}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->b(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1057
    .line 1058
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    const/high16 v8, 0x42600000    # 56.0f

    .line 1063
    .line 1064
    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    invoke-static {v3, v6}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v21

    .line 1072
    iget-object v3, v7, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 1073
    .line 1074
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 1075
    .line 1076
    .line 1077
    move-result v3

    .line 1078
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v3

    .line 1082
    move-object/from16 v20, v3

    .line 1083
    .line 1084
    check-cast v20, Landroid/net/Uri;

    .line 1085
    .line 1086
    new-instance v3, Lb0;

    .line 1087
    .line 1088
    const/4 v6, 0x5

    .line 1089
    invoke-direct {v3, v6, v4}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 1090
    .line 1091
    .line 1092
    const v4, -0xe6ae189

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v24

    .line 1099
    const/16 v26, 0x6c00

    .line 1100
    .line 1101
    const/16 v27, 0x4

    .line 1102
    .line 1103
    const/16 v22, 0x0

    .line 1104
    .line 1105
    const-string v23, ""

    .line 1106
    .line 1107
    move-object/from16 v25, v1

    .line 1108
    .line 1109
    invoke-static/range {v20 .. v27}, Landroidx/compose/animation/CrossfadeKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 1110
    .line 1111
    .line 1112
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1113
    .line 1114
    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v21

    .line 1118
    new-instance v3, Lm1;

    .line 1119
    .line 1120
    move-object/from16 v15, p0

    .line 1121
    .line 1122
    invoke-direct {v3, v0, v7, v15, v2}, Lm1;-><init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V

    .line 1123
    .line 1124
    .line 1125
    const v0, 0x2c9de275

    .line 1126
    .line 1127
    .line 1128
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v31

    .line 1132
    const v33, 0x30030

    .line 1133
    .line 1134
    .line 1135
    const/16 v23, 0x0

    .line 1136
    .line 1137
    const/high16 v24, 0x41a00000    # 20.0f

    .line 1138
    .line 1139
    const/16 v25, 0x0

    .line 1140
    .line 1141
    const/16 v26, 0x0

    .line 1142
    .line 1143
    const/16 v27, 0x0

    .line 1144
    .line 1145
    const/16 v28, 0x0

    .line 1146
    .line 1147
    const/16 v29, 0x0

    .line 1148
    .line 1149
    const/16 v30, 0x0

    .line 1150
    .line 1151
    move-object/from16 v32, v1

    .line 1152
    .line 1153
    move-object/from16 v20, v7

    .line 1154
    .line 1155
    invoke-static/range {v20 .. v33}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;FLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1156
    .line 1157
    .line 1158
    const/4 v0, 0x1

    .line 1159
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_10

    .line 1163
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1164
    .line 1165
    .line 1166
    :goto_10
    return-object v17

    .line 1167
    :pswitch_7
    const/4 v6, 0x0

    .line 1168
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1169
    .line 1170
    check-cast v7, Landroidx/navigation/compose/DialogNavigator;

    .line 1171
    .line 1172
    check-cast v4, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1173
    .line 1174
    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 1175
    .line 1176
    check-cast v2, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 1177
    .line 1178
    move-object/from16 v1, p1

    .line 1179
    .line 1180
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1181
    .line 1182
    move-object/from16 v3, p2

    .line 1183
    .line 1184
    check-cast v3, Ljava/lang/Integer;

    .line 1185
    .line 1186
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1187
    .line 1188
    .line 1189
    move-result v3

    .line 1190
    and-int/lit8 v5, v3, 0x3

    .line 1191
    .line 1192
    if-eq v5, v14, :cond_19

    .line 1193
    .line 1194
    const/4 v6, 0x1

    .line 1195
    :cond_19
    const/16 v18, 0x1

    .line 1196
    .line 1197
    and-int/lit8 v3, v3, 0x1

    .line 1198
    .line 1199
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1200
    .line 1201
    invoke-virtual {v1, v3, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1202
    .line 1203
    .line 1204
    move-result v3

    .line 1205
    if-eqz v3, :cond_1c

    .line 1206
    .line 1207
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v3

    .line 1211
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v5

    .line 1215
    or-int/2addr v3, v5

    .line 1216
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v5

    .line 1220
    if-nez v3, :cond_1a

    .line 1221
    .line 1222
    if-ne v5, v13, :cond_1b

    .line 1223
    .line 1224
    :cond_1a
    new-instance v5, Lp2;

    .line 1225
    .line 1226
    const/4 v3, 0x6

    .line 1227
    invoke-direct {v5, v15, v0, v7, v3}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1231
    .line 1232
    .line 1233
    :cond_1b
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1234
    .line 1235
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v3, La0;

    .line 1239
    .line 1240
    const/16 v5, 0xa

    .line 1241
    .line 1242
    invoke-direct {v3, v5, v2, v0}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1243
    .line 1244
    .line 1245
    const v2, -0x1da93fb4

    .line 1246
    .line 1247
    .line 1248
    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    const/16 v3, 0x180

    .line 1253
    .line 1254
    invoke-static {v0, v4, v2, v1, v3}, Landroidx/navigation/compose/NavBackStackEntryProviderKt;->a(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_11

    .line 1258
    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1259
    .line 1260
    .line 1261
    :goto_11
    return-object v17

    .line 1262
    nop

    .line 1263
    :pswitch_data_0
    .packed-switch 0x0
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
