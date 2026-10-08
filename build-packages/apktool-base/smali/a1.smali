.class public final synthetic La1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p2, p0, La1;->j:I

    .line 2
    .line 3
    iput-object p1, p0, La1;->k:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;II)V
    .locals 0

    .line 9
    iput p3, p0, La1;->j:I

    iput-object p1, p0, La1;->k:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La1;->j:I

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0xa

    .line 9
    .line 10
    const/4 v5, 0x7

    .line 11
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x2

    .line 18
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    iget-object v0, v0, La1;->k:Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 28
    .line 29
    move-object/from16 v2, p2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    and-int/lit8 v3, v2, 0x3

    .line 38
    .line 39
    if-eq v3, v10, :cond_0

    .line 40
    .line 41
    move v3, v8

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v3, v9

    .line 44
    :goto_0
    and-int/2addr v2, v8

    .line 45
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_7

    .line 52
    .line 53
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/List;

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lnet/blip/android/filetypes/FileIcon;

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v5, v3, Lnet/blip/android/filetypes/FileIcon;->b:Lnet/blip/android/filetypes/Thumbnail;

    .line 88
    .line 89
    instance-of v8, v5, Lnet/blip/android/filetypes/Thumbnail$Some;

    .line 90
    .line 91
    if-eqz v8, :cond_1

    .line 92
    .line 93
    check-cast v5, Lnet/blip/android/filetypes/Thumbnail$Some;

    .line 94
    .line 95
    iget-object v3, v5, Lnet/blip/android/filetypes/Thumbnail$Some;->a:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    iget-object v3, v3, Lnet/blip/android/filetypes/FileIcon;->a:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_8

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    sget-object v4, Lcom/google/accompanist/drawablepainter/DrawablePainterKt;->a:Lkotlin/Lazy;

    .line 130
    .line 131
    const v4, 0x68b6fb29

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 135
    .line 136
    .line 137
    const v4, 0x113ddc63

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-nez v4, :cond_3

    .line 152
    .line 153
    if-ne v5, v7, :cond_6

    .line 154
    .line 155
    :cond_3
    if-nez v3, :cond_4

    .line 156
    .line 157
    sget-object v3, Lcom/google/accompanist/drawablepainter/EmptyPainter;->o:Lcom/google/accompanist/drawablepainter/EmptyPainter;

    .line 158
    .line 159
    move-object v5, v3

    .line 160
    goto :goto_5

    .line 161
    :cond_4
    instance-of v4, v3, Landroid/graphics/drawable/ColorDrawable;

    .line 162
    .line 163
    if-eqz v4, :cond_5

    .line 164
    .line 165
    new-instance v4, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 166
    .line 167
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 174
    .line 175
    .line 176
    move-result-wide v12

    .line 177
    invoke-direct {v4, v12, v13}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(J)V

    .line 178
    .line 179
    .line 180
    :goto_4
    move-object v5, v4

    .line 181
    goto :goto_5

    .line 182
    :cond_5
    new-instance v4, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-direct {v4, v3}, Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :goto_5
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_6
    move-object v12, v5

    .line 199
    check-cast v12, Landroidx/compose/ui/graphics/painter/Painter;

    .line 200
    .line 201
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 205
    .line 206
    .line 207
    new-instance v3, Ld6;

    .line 208
    .line 209
    const/16 v4, 0x1c

    .line 210
    .line 211
    invoke-direct {v3, v4}, Ld6;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-static {v6, v3}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    const/high16 v14, 0x41200000    # 10.0f

    .line 219
    .line 220
    invoke-static {v14}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    const-wide/16 v16, 0x0

    .line 225
    .line 226
    const/16 v18, 0x1c

    .line 227
    .line 228
    invoke-static/range {v13 .. v18}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    const/16 v20, 0x38

    .line 233
    .line 234
    const/16 v21, 0x78

    .line 235
    .line 236
    const/4 v13, 0x0

    .line 237
    const/4 v15, 0x0

    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    const/16 v18, 0x0

    .line 243
    .line 244
    move-object/from16 v19, v1

    .line 245
    .line 246
    invoke-static/range {v12 .. v21}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_7
    move-object/from16 v19, v1

    .line 255
    .line 256
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 257
    .line 258
    .line 259
    :cond_8
    return-object v11

    .line 260
    :pswitch_0
    move-object/from16 v1, p1

    .line 261
    .line 262
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 263
    .line 264
    move-object/from16 v2, p2

    .line 265
    .line 266
    check-cast v2, Ljava/lang/Integer;

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->b(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 276
    .line 277
    .line 278
    return-object v11

    .line 279
    :pswitch_1
    move-object/from16 v1, p1

    .line 280
    .line 281
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 282
    .line 283
    move-object/from16 v2, p2

    .line 284
    .line 285
    check-cast v2, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->b(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 295
    .line 296
    .line 297
    return-object v11

    .line 298
    :pswitch_2
    move-object/from16 v1, p1

    .line 299
    .line 300
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 301
    .line 302
    move-object/from16 v2, p2

    .line 303
    .line 304
    check-cast v2, Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/home/TransferRemovalDialogKt;->b(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 314
    .line 315
    .line 316
    return-object v11

    .line 317
    :pswitch_3
    move-object/from16 v1, p1

    .line 318
    .line 319
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 320
    .line 321
    move-object/from16 v2, p2

    .line 322
    .line 323
    check-cast v2, Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    and-int/lit8 v3, v2, 0x3

    .line 330
    .line 331
    if-eq v3, v10, :cond_9

    .line 332
    .line 333
    move v9, v8

    .line 334
    :cond_9
    and-int/2addr v2, v8

    .line 335
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 336
    .line 337
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-eqz v2, :cond_c

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    if-nez v2, :cond_a

    .line 352
    .line 353
    if-ne v3, v7, :cond_b

    .line 354
    .line 355
    :cond_a
    new-instance v3, Lcd;

    .line 356
    .line 357
    const/16 v2, 0x18

    .line 358
    .line 359
    invoke-direct {v3, v0, v2}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    :cond_b
    move-object v12, v3

    .line 366
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 367
    .line 368
    sget-object v15, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 369
    .line 370
    const/16 v17, 0x1fe

    .line 371
    .line 372
    const/4 v13, 0x0

    .line 373
    const/4 v14, 0x0

    .line 374
    move-object/from16 v16, v1

    .line 375
    .line 376
    invoke-static/range {v12 .. v17}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 377
    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_c
    move-object/from16 v16, v1

    .line 381
    .line 382
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 383
    .line 384
    .line 385
    :goto_6
    return-object v11

    .line 386
    :pswitch_4
    move-object/from16 v1, p1

    .line 387
    .line 388
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 389
    .line 390
    move-object/from16 v5, p2

    .line 391
    .line 392
    check-cast v5, Ljava/lang/Integer;

    .line 393
    .line 394
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    and-int/lit8 v12, v5, 0x3

    .line 399
    .line 400
    if-eq v12, v10, :cond_d

    .line 401
    .line 402
    move v12, v8

    .line 403
    goto :goto_7

    .line 404
    :cond_d
    move v12, v9

    .line 405
    :goto_7
    and-int/2addr v5, v8

    .line 406
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 407
    .line 408
    invoke-virtual {v1, v5, v12}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_10

    .line 413
    .line 414
    const/high16 v5, 0x41c00000    # 24.0f

    .line 415
    .line 416
    invoke-static {v6, v5, v3, v10}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 421
    .line 422
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 423
    .line 424
    invoke-static {v5, v10, v1, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    iget-wide v9, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 429
    .line 430
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 443
    .line 444
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 448
    .line 449
    .line 450
    iget-boolean v12, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 451
    .line 452
    if-eqz v12, :cond_e

    .line 453
    .line 454
    sget-object v12, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 455
    .line 456
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 457
    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 461
    .line 462
    .line 463
    :goto_8
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 464
    .line 465
    invoke-static {v1, v5, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 466
    .line 467
    .line 468
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 469
    .line 470
    invoke-static {v1, v10, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 478
    .line 479
    invoke-static {v1, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 480
    .line 481
    .line 482
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 483
    .line 484
    .line 485
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 486
    .line 487
    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 488
    .line 489
    .line 490
    invoke-static {v6, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-static {v1, v2}, Lnet/blip/android/ui/util/KeyboardKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    move-object v14, v2

    .line 503
    check-cast v14, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 504
    .line 505
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    if-ne v2, v7, :cond_f

    .line 510
    .line 511
    new-instance v2, Li2;

    .line 512
    .line 513
    invoke-direct {v2, v0, v4}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    :cond_f
    move-object v15, v2

    .line 520
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 521
    .line 522
    new-instance v16, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 523
    .line 524
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 525
    .line 526
    const/16 v20, 0x7

    .line 527
    .line 528
    const/16 v21, 0x70

    .line 529
    .line 530
    const/16 v17, 0x2

    .line 531
    .line 532
    const/16 v19, 0x1

    .line 533
    .line 534
    invoke-direct/range {v16 .. v21}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;III)V

    .line 535
    .line 536
    .line 537
    const v26, 0xc00d80

    .line 538
    .line 539
    .line 540
    const/16 v27, 0xf70

    .line 541
    .line 542
    move-object/from16 v20, v16

    .line 543
    .line 544
    const-string v16, "Jane Smith"

    .line 545
    .line 546
    const/16 v17, 0x0

    .line 547
    .line 548
    const/16 v18, 0x0

    .line 549
    .line 550
    const/16 v19, 0x0

    .line 551
    .line 552
    const/16 v21, 0x0

    .line 553
    .line 554
    const/16 v22, 0x0

    .line 555
    .line 556
    const/16 v23, 0x0

    .line 557
    .line 558
    const/16 v24, 0x0

    .line 559
    .line 560
    move-object/from16 v25, v1

    .line 561
    .line 562
    invoke-static/range {v13 .. v27}, Lnet/blip/android/ui/components/StyledTextFieldKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/runtime/Composer;II)V

    .line 563
    .line 564
    .line 565
    const/high16 v0, 0x41800000    # 16.0f

    .line 566
    .line 567
    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 572
    .line 573
    .line 574
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 575
    .line 576
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 581
    .line 582
    iget-object v12, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 583
    .line 584
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 585
    .line 586
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 591
    .line 592
    iget-wide v13, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 593
    .line 594
    const/16 v0, 0x10

    .line 595
    .line 596
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 597
    .line 598
    .line 599
    move-result-wide v15

    .line 600
    const v24, 0xff7ffc

    .line 601
    .line 602
    .line 603
    const-wide/16 v18, 0x0

    .line 604
    .line 605
    const-wide/16 v20, 0x0

    .line 606
    .line 607
    const/16 v22, 0x0

    .line 608
    .line 609
    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 610
    .line 611
    .line 612
    move-result-object v15

    .line 613
    const/16 v22, 0x6

    .line 614
    .line 615
    const/16 v23, 0x1fa

    .line 616
    .line 617
    const-string v13, "People will see your name and avatar in search and when you send them things"

    .line 618
    .line 619
    const/4 v14, 0x0

    .line 620
    const/16 v16, 0x0

    .line 621
    .line 622
    const/16 v17, 0x0

    .line 623
    .line 624
    const/16 v18, 0x0

    .line 625
    .line 626
    const/16 v19, 0x0

    .line 627
    .line 628
    const/16 v20, 0x0

    .line 629
    .line 630
    move-object/from16 v21, v1

    .line 631
    .line 632
    invoke-static/range {v13 .. v23}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 636
    .line 637
    .line 638
    goto :goto_9

    .line 639
    :cond_10
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 640
    .line 641
    .line 642
    :goto_9
    return-object v11

    .line 643
    :pswitch_5
    move-object/from16 v1, p1

    .line 644
    .line 645
    check-cast v1, Landroidx/compose/ui/unit/IntRect;

    .line 646
    .line 647
    move-object/from16 v4, p2

    .line 648
    .line 649
    check-cast v4, Landroidx/compose/ui/unit/IntRect;

    .line 650
    .line 651
    sget-object v5, Landroidx/compose/material/AndroidMenu_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    .line 652
    .line 653
    iget v5, v4, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 654
    .line 655
    iget v6, v4, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 656
    .line 657
    iget v7, v4, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 658
    .line 659
    iget v8, v4, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 660
    .line 661
    iget v9, v1, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 662
    .line 663
    iget v12, v1, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 664
    .line 665
    iget v13, v1, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 666
    .line 667
    iget v14, v1, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 668
    .line 669
    if-lt v5, v9, :cond_11

    .line 670
    .line 671
    :goto_a
    move v1, v3

    .line 672
    goto :goto_b

    .line 673
    :cond_11
    if-gt v7, v14, :cond_12

    .line 674
    .line 675
    move v1, v2

    .line 676
    goto :goto_b

    .line 677
    :cond_12
    sub-int v9, v7, v5

    .line 678
    .line 679
    if-nez v9, :cond_13

    .line 680
    .line 681
    goto :goto_a

    .line 682
    :cond_13
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    .line 683
    .line 684
    .line 685
    move-result v9

    .line 686
    iget v1, v1, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 687
    .line 688
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    add-int/2addr v1, v9

    .line 693
    div-int/2addr v1, v10

    .line 694
    sub-int/2addr v1, v5

    .line 695
    int-to-float v1, v1

    .line 696
    iget v5, v4, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 697
    .line 698
    sub-int/2addr v7, v5

    .line 699
    int-to-float v5, v7

    .line 700
    div-float/2addr v1, v5

    .line 701
    :goto_b
    if-lt v8, v13, :cond_14

    .line 702
    .line 703
    :goto_c
    move v2, v3

    .line 704
    goto :goto_d

    .line 705
    :cond_14
    if-gt v6, v12, :cond_15

    .line 706
    .line 707
    goto :goto_d

    .line 708
    :cond_15
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 709
    .line 710
    .line 711
    move-result v2

    .line 712
    if-nez v2, :cond_16

    .line 713
    .line 714
    goto :goto_c

    .line 715
    :cond_16
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    add-int/2addr v3, v2

    .line 724
    div-int/2addr v3, v10

    .line 725
    sub-int/2addr v3, v8

    .line 726
    int-to-float v2, v3

    .line 727
    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    int-to-float v3, v3

    .line 732
    div-float/2addr v2, v3

    .line 733
    :goto_d
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOriginKt;->a(FF)J

    .line 734
    .line 735
    .line 736
    move-result-wide v1

    .line 737
    new-instance v3, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 738
    .line 739
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 740
    .line 741
    .line 742
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 743
    .line 744
    .line 745
    return-object v11

    .line 746
    :pswitch_6
    move-object/from16 v1, p1

    .line 747
    .line 748
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 749
    .line 750
    move-object/from16 v2, p2

    .line 751
    .line 752
    check-cast v2, Ljava/lang/Integer;

    .line 753
    .line 754
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    and-int/lit8 v3, v2, 0x3

    .line 759
    .line 760
    if-eq v3, v10, :cond_17

    .line 761
    .line 762
    move v3, v8

    .line 763
    goto :goto_e

    .line 764
    :cond_17
    move v3, v9

    .line 765
    :goto_e
    and-int/2addr v2, v8

    .line 766
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 767
    .line 768
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    if-eqz v2, :cond_19

    .line 773
    .line 774
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    if-ne v2, v7, :cond_18

    .line 779
    .line 780
    new-instance v2, Lh;

    .line 781
    .line 782
    const/16 v3, 0x8

    .line 783
    .line 784
    invoke-direct {v2, v3}, Lh;-><init>(I)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    :cond_18
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 791
    .line 792
    invoke-static {v6, v9, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 801
    .line 802
    invoke-static {v2, v0, v1, v9}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 803
    .line 804
    .line 805
    goto :goto_f

    .line 806
    :cond_19
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 807
    .line 808
    .line 809
    :goto_f
    return-object v11

    .line 810
    nop

    .line 811
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
