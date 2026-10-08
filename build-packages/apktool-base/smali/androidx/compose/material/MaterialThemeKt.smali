.class public abstract Landroidx/compose/material/MaterialThemeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x33579b6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    :goto_0
    or-int v1, p5, v1

    .line 25
    .line 26
    or-int/lit8 v1, v1, 0x10

    .line 27
    .line 28
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x100

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v2, 0x80

    .line 38
    .line 39
    :goto_1
    or-int/2addr v1, v2

    .line 40
    and-int/lit16 v2, v1, 0x493

    .line 41
    .line 42
    const/16 v3, 0x492

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eq v2, v3, :cond_2

    .line 47
    .line 48
    move v2, v4

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v2, v8

    .line 51
    :goto_2
    and-int/2addr v1, v4

    .line 52
    invoke-virtual {v7, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_e

    .line 57
    .line 58
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 59
    .line 60
    .line 61
    and-int/lit8 v1, p5, 0x1

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 73
    .line 74
    .line 75
    move-object/from16 v9, p1

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    :goto_3
    invoke-static {v7}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object v9, v1

    .line 83
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 91
    .line 92
    if-ne v1, v10, :cond_5

    .line 93
    .line 94
    const-wide/16 v3, 0x0

    .line 95
    .line 96
    const/16 v5, 0x1fff

    .line 97
    .line 98
    const-wide/16 v1, 0x0

    .line 99
    .line 100
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/Colors;->a(Landroidx/compose/material/Colors;JJI)Landroidx/compose/material/Colors;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    check-cast v1, Landroidx/compose/material/Colors;

    .line 108
    .line 109
    sget-object v2, Landroidx/compose/material/ColorsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->e()J

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    iget-object v4, v1, Landroidx/compose/material/Colors;->a:Landroidx/compose/runtime/MutableState;

    .line 116
    .line 117
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 118
    .line 119
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 120
    .line 121
    .line 122
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Landroidx/compose/material/Colors;->b:Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 136
    .line 137
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 138
    .line 139
    iget-object v4, v1, Landroidx/compose/material/Colors;->b:Landroidx/compose/runtime/MutableState;

    .line 140
    .line 141
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 142
    .line 143
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 144
    .line 145
    .line 146
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, v0, Landroidx/compose/material/Colors;->c:Landroidx/compose/runtime/MutableState;

    .line 152
    .line 153
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 160
    .line 161
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 162
    .line 163
    iget-object v4, v1, Landroidx/compose/material/Colors;->c:Landroidx/compose/runtime/MutableState;

    .line 164
    .line 165
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 166
    .line 167
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 168
    .line 169
    .line 170
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 171
    .line 172
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v2, v0, Landroidx/compose/material/Colors;->d:Landroidx/compose/runtime/MutableState;

    .line 176
    .line 177
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 178
    .line 179
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 184
    .line 185
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 186
    .line 187
    iget-object v4, v1, Landroidx/compose/material/Colors;->d:Landroidx/compose/runtime/MutableState;

    .line 188
    .line 189
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 190
    .line 191
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 192
    .line 193
    .line 194
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 195
    .line 196
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->b()J

    .line 200
    .line 201
    .line 202
    move-result-wide v2

    .line 203
    iget-object v4, v1, Landroidx/compose/material/Colors;->e:Landroidx/compose/runtime/MutableState;

    .line 204
    .line 205
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 206
    .line 207
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 208
    .line 209
    .line 210
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->f()J

    .line 216
    .line 217
    .line 218
    move-result-wide v2

    .line 219
    iget-object v4, v1, Landroidx/compose/material/Colors;->f:Landroidx/compose/runtime/MutableState;

    .line 220
    .line 221
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 222
    .line 223
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 224
    .line 225
    .line 226
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 227
    .line 228
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->c()J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    iget-object v4, v1, Landroidx/compose/material/Colors;->g:Landroidx/compose/runtime/MutableState;

    .line 236
    .line 237
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 238
    .line 239
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 240
    .line 241
    .line 242
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 243
    .line 244
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, v0, Landroidx/compose/material/Colors;->h:Landroidx/compose/runtime/MutableState;

    .line 248
    .line 249
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 256
    .line 257
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 258
    .line 259
    iget-object v4, v1, Landroidx/compose/material/Colors;->h:Landroidx/compose/runtime/MutableState;

    .line 260
    .line 261
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 262
    .line 263
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 264
    .line 265
    .line 266
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 267
    .line 268
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v2, v0, Landroidx/compose/material/Colors;->i:Landroidx/compose/runtime/MutableState;

    .line 272
    .line 273
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 274
    .line 275
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 280
    .line 281
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 282
    .line 283
    iget-object v4, v1, Landroidx/compose/material/Colors;->i:Landroidx/compose/runtime/MutableState;

    .line 284
    .line 285
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 286
    .line 287
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 288
    .line 289
    .line 290
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 291
    .line 292
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iget-object v2, v0, Landroidx/compose/material/Colors;->j:Landroidx/compose/runtime/MutableState;

    .line 296
    .line 297
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 298
    .line 299
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 304
    .line 305
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 306
    .line 307
    iget-object v4, v1, Landroidx/compose/material/Colors;->j:Landroidx/compose/runtime/MutableState;

    .line 308
    .line 309
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 310
    .line 311
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 312
    .line 313
    .line 314
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 315
    .line 316
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->d()J

    .line 320
    .line 321
    .line 322
    move-result-wide v2

    .line 323
    iget-object v4, v1, Landroidx/compose/material/Colors;->k:Landroidx/compose/runtime/MutableState;

    .line 324
    .line 325
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 326
    .line 327
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 328
    .line 329
    .line 330
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 331
    .line 332
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iget-object v2, v0, Landroidx/compose/material/Colors;->l:Landroidx/compose/runtime/MutableState;

    .line 336
    .line 337
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 338
    .line 339
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 344
    .line 345
    iget-wide v2, v2, Landroidx/compose/ui/graphics/Color;->a:J

    .line 346
    .line 347
    iget-object v4, v1, Landroidx/compose/material/Colors;->l:Landroidx/compose/runtime/MutableState;

    .line 348
    .line 349
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 350
    .line 351
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 352
    .line 353
    .line 354
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 355
    .line 356
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->g()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    iget-object v3, v1, Landroidx/compose/material/Colors;->m:Landroidx/compose/runtime/MutableState;

    .line 364
    .line 365
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 370
    .line 371
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    const-wide/16 v2, 0x0

    .line 375
    .line 376
    const/4 v4, 0x7

    .line 377
    invoke-static {v4, v2, v3, v8}, Landroidx/compose/material/RippleKt;->a(IJZ)Landroidx/compose/foundation/IndicationNodeFactory;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->e()J

    .line 382
    .line 383
    .line 384
    move-result-wide v12

    .line 385
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->b()J

    .line 386
    .line 387
    .line 388
    move-result-wide v14

    .line 389
    const v3, -0x7ad4bc85

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v14, v15}, Landroidx/compose/material/ColorsKt;->a(Landroidx/compose/material/Colors;J)J

    .line 396
    .line 397
    .line 398
    move-result-wide v16

    .line 399
    const-wide/16 v18, 0x10

    .line 400
    .line 401
    cmp-long v3, v16, v18

    .line 402
    .line 403
    if-eqz v3, :cond_6

    .line 404
    .line 405
    move-wide/from16 v4, v16

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_6
    sget-object v3, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 409
    .line 410
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 415
    .line 416
    iget-wide v4, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 417
    .line 418
    :goto_5
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 419
    .line 420
    .line 421
    invoke-static {v7}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;)F

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    invoke-static {v4, v5, v3}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 426
    .line 427
    .line 428
    move-result-wide v3

    .line 429
    invoke-virtual {v7, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    or-int/2addr v5, v11

    .line 438
    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    or-int/2addr v5, v11

    .line 443
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    if-nez v5, :cond_7

    .line 448
    .line 449
    if-ne v11, v10, :cond_d

    .line 450
    .line 451
    :cond_7
    new-instance v5, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 452
    .line 453
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->e()J

    .line 454
    .line 455
    .line 456
    move-result-wide v10

    .line 457
    move-wide/from16 v16, v10

    .line 458
    .line 459
    const v11, 0x3ecccccd    # 0.4f

    .line 460
    .line 461
    .line 462
    move-wide/from16 v23, v14

    .line 463
    .line 464
    move-wide v14, v3

    .line 465
    move-wide/from16 v3, v16

    .line 466
    .line 467
    move-wide/from16 v16, v23

    .line 468
    .line 469
    invoke-static/range {v11 .. v17}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->a(FJJJ)F

    .line 470
    .line 471
    .line 472
    move-result v10

    .line 473
    const v11, 0x3e4ccccd    # 0.2f

    .line 474
    .line 475
    .line 476
    invoke-static/range {v11 .. v17}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->a(FJJJ)F

    .line 477
    .line 478
    .line 479
    move-result v11

    .line 480
    const/high16 v18, 0x40900000    # 4.5f

    .line 481
    .line 482
    cmpl-float v10, v10, v18

    .line 483
    .line 484
    const v19, 0x3ecccccd    # 0.4f

    .line 485
    .line 486
    .line 487
    if-ltz v10, :cond_8

    .line 488
    .line 489
    move/from16 v11, v19

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_8
    cmpg-float v10, v11, v18

    .line 493
    .line 494
    const v11, 0x3e4ccccd    # 0.2f

    .line 495
    .line 496
    .line 497
    if-gez v10, :cond_9

    .line 498
    .line 499
    goto :goto_8

    .line 500
    :cond_9
    move v10, v11

    .line 501
    move/from16 v11, v19

    .line 502
    .line 503
    const/4 v0, 0x7

    .line 504
    :goto_6
    if-ge v8, v0, :cond_c

    .line 505
    .line 506
    invoke-static/range {v11 .. v17}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->a(FJJJ)F

    .line 507
    .line 508
    .line 509
    move-result v20

    .line 510
    div-float v20, v20, v18

    .line 511
    .line 512
    const/high16 v21, 0x3f800000    # 1.0f

    .line 513
    .line 514
    sub-float v20, v20, v21

    .line 515
    .line 516
    const/16 v21, 0x0

    .line 517
    .line 518
    cmpg-float v22, v21, v20

    .line 519
    .line 520
    if-gtz v22, :cond_a

    .line 521
    .line 522
    const v22, 0x3c23d70a    # 0.01f

    .line 523
    .line 524
    .line 525
    cmpg-float v22, v20, v22

    .line 526
    .line 527
    if-gtz v22, :cond_a

    .line 528
    .line 529
    goto :goto_8

    .line 530
    :cond_a
    cmpg-float v20, v20, v21

    .line 531
    .line 532
    if-gez v20, :cond_b

    .line 533
    .line 534
    move/from16 v19, v11

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_b
    move v10, v11

    .line 538
    :goto_7
    add-float v11, v19, v10

    .line 539
    .line 540
    const/high16 v20, 0x40000000    # 2.0f

    .line 541
    .line 542
    div-float v11, v11, v20

    .line 543
    .line 544
    add-int/lit8 v8, v8, 0x1

    .line 545
    .line 546
    goto :goto_6

    .line 547
    :cond_c
    :goto_8
    invoke-static {v12, v13, v11}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 548
    .line 549
    .line 550
    move-result-wide v10

    .line 551
    invoke-direct {v5, v3, v4, v10, v11}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJ)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    move-object v11, v5

    .line 558
    :cond_d
    check-cast v11, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 559
    .line 560
    sget-object v0, Landroidx/compose/material/ColorsKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 561
    .line 562
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 563
    .line 564
    .line 565
    move-result-object v12

    .line 566
    sget-object v0, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 567
    .line 568
    invoke-static {v7}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;)F

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 577
    .line 578
    .line 579
    move-result-object v13

    .line 580
    sget-object v0, Landroidx/compose/foundation/IndicationKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 581
    .line 582
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 583
    .line 584
    .line 585
    move-result-object v14

    .line 586
    sget-object v0, Landroidx/compose/material/ShapesKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 587
    .line 588
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 589
    .line 590
    .line 591
    move-result-object v15

    .line 592
    sget-object v0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 593
    .line 594
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 595
    .line 596
    .line 597
    move-result-object v16

    .line 598
    sget-object v0, Landroidx/compose/material/TypographyKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 599
    .line 600
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 601
    .line 602
    .line 603
    move-result-object v17

    .line 604
    filled-new-array/range {v12 .. v17}, [Landroidx/compose/runtime/ProvidedValue;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    new-instance v1, La0;

    .line 609
    .line 610
    const/16 v2, 0xf

    .line 611
    .line 612
    move-object/from16 v4, p3

    .line 613
    .line 614
    invoke-direct {v1, v2, v9, v4}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    const v2, 0x1d9c9e76

    .line 618
    .line 619
    .line 620
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    const/16 v2, 0x38

    .line 625
    .line 626
    invoke-static {v0, v1, v7, v2}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 627
    .line 628
    .line 629
    move-object v2, v9

    .line 630
    goto :goto_9

    .line 631
    :cond_e
    move-object/from16 v4, p3

    .line 632
    .line 633
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 634
    .line 635
    .line 636
    move-object/from16 v2, p1

    .line 637
    .line 638
    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    if-eqz v7, :cond_f

    .line 643
    .line 644
    new-instance v0, Ld4;

    .line 645
    .line 646
    move-object/from16 v1, p0

    .line 647
    .line 648
    move/from16 v5, p5

    .line 649
    .line 650
    move-object v3, v6

    .line 651
    invoke-direct/range {v0 .. v5}, Ld4;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 652
    .line 653
    .line 654
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 655
    .line 656
    :cond_f
    return-void
.end method
