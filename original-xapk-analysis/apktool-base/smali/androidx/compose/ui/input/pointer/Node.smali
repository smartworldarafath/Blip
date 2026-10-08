.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final c:Landroidx/compose/ui/Modifier$Node;

.field public final d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

.field public final e:Landroidx/collection/LongSparseArray;

.field public f:Landroidx/compose/ui/node/NodeCoordinator;

.field public g:Landroidx/compose/ui/input/pointer/PointerEvent;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v1, v0, [J

    .line 13
    .line 14
    iput-object v1, p1, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 17
    .line 18
    new-instance p1, Landroidx/collection/LongSparseArray;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->j:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 56

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->a(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-nez v6, :cond_0

    .line 19
    .line 20
    goto :goto_4

    .line 21
    :cond_0
    const/4 v8, 0x0

    .line 22
    :goto_0
    if-eqz v5, :cond_8

    .line 23
    .line 24
    instance-of v10, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 25
    .line 26
    const/16 v11, 0x10

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 31
    .line 32
    invoke-static {v5, v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget v10, v5, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 40
    .line 41
    and-int/2addr v10, v11

    .line 42
    if-eqz v10, :cond_7

    .line 43
    .line 44
    instance-of v10, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 45
    .line 46
    if-eqz v10, :cond_7

    .line 47
    .line 48
    move-object v10, v5

    .line 49
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 50
    .line 51
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    :goto_1
    if-eqz v10, :cond_6

    .line 55
    .line 56
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 57
    .line 58
    and-int/2addr v12, v11

    .line 59
    if-eqz v12, :cond_5

    .line 60
    .line 61
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    if-ne v9, v7, :cond_2

    .line 64
    .line 65
    move-object v5, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    if-nez v8, :cond_3

    .line 68
    .line 69
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 70
    .line 71
    new-array v12, v11, [Landroidx/compose/ui/Modifier$Node;

    .line 72
    .line 73
    invoke-direct {v8, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    :cond_4
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_2
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    if-ne v9, v7, :cond_7

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    goto :goto_0

    .line 96
    :cond_8
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 97
    .line 98
    if-nez v5, :cond_9

    .line 99
    .line 100
    :goto_4
    return v7

    .line 101
    :cond_9
    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->f()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    const/4 v8, 0x0

    .line 106
    :goto_5
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 107
    .line 108
    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    .line 109
    .line 110
    if-ge v8, v5, :cond_10

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->c(I)J

    .line 113
    .line 114
    .line 115
    move-result-wide v12

    .line 116
    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->g(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 121
    .line 122
    invoke-virtual {v10, v12, v13}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b(J)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_f

    .line 127
    .line 128
    move v15, v7

    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->g:J

    .line 132
    .line 133
    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 134
    .line 135
    const-wide v17, 0x7fffffff7fffffffL

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    and-long v19, v6, v17

    .line 141
    .line 142
    const-wide v21, 0x7fffff007fffffL

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    add-long v19, v19, v21

    .line 148
    .line 149
    const-wide v23, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    and-long v19, v19, v23

    .line 155
    .line 156
    const-wide/16 v25, 0x0

    .line 157
    .line 158
    cmp-long v19, v19, v25

    .line 159
    .line 160
    if-nez v19, :cond_e

    .line 161
    .line 162
    and-long v19, v9, v17

    .line 163
    .line 164
    add-long v19, v19, v21

    .line 165
    .line 166
    and-long v19, v19, v23

    .line 167
    .line 168
    cmp-long v19, v19, v25

    .line 169
    .line 170
    if-nez v19, :cond_e

    .line 171
    .line 172
    move/from16 v19, v15

    .line 173
    .line 174
    new-instance v15, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v20

    .line 180
    move/from16 v50, v4

    .line 181
    .line 182
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    move/from16 v20, v5

    .line 194
    .line 195
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    move/from16 v51, v8

    .line 200
    .line 201
    const/4 v8, 0x0

    .line 202
    :goto_6
    if-ge v8, v5, :cond_b

    .line 203
    .line 204
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v27

    .line 208
    move-object/from16 v28, v4

    .line 209
    .line 210
    move-object/from16 v4, v27

    .line 211
    .line 212
    check-cast v4, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 213
    .line 214
    move-object/from16 v52, v11

    .line 215
    .line 216
    move-wide/from16 v53, v12

    .line 217
    .line 218
    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->b:J

    .line 219
    .line 220
    and-long v29, v11, v17

    .line 221
    .line 222
    add-long v29, v29, v21

    .line 223
    .line 224
    and-long v29, v29, v23

    .line 225
    .line 226
    cmp-long v13, v29, v25

    .line 227
    .line 228
    if-nez v13, :cond_a

    .line 229
    .line 230
    new-instance v29, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 231
    .line 232
    move-object/from16 v55, v14

    .line 233
    .line 234
    iget-wide v13, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->a:J

    .line 235
    .line 236
    move/from16 v27, v5

    .line 237
    .line 238
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5, v2, v11, v12}, Landroidx/compose/ui/node/NodeCoordinator;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 244
    .line 245
    .line 246
    move-result-wide v32

    .line 247
    iget v5, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->c:F

    .line 248
    .line 249
    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->d:J

    .line 250
    .line 251
    move/from16 v34, v5

    .line 252
    .line 253
    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/HistoricalChange;->e:J

    .line 254
    .line 255
    move-wide/from16 v37, v4

    .line 256
    .line 257
    move-wide/from16 v35, v11

    .line 258
    .line 259
    move-wide/from16 v30, v13

    .line 260
    .line 261
    invoke-direct/range {v29 .. v38}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJJ)V

    .line 262
    .line 263
    .line 264
    move-object/from16 v4, v29

    .line 265
    .line 266
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_a
    move/from16 v27, v5

    .line 271
    .line 272
    move-object/from16 v55, v14

    .line 273
    .line 274
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 275
    .line 276
    move/from16 v5, v27

    .line 277
    .line 278
    move-object/from16 v4, v28

    .line 279
    .line 280
    move-object/from16 v11, v52

    .line 281
    .line 282
    move-wide/from16 v12, v53

    .line 283
    .line 284
    move-object/from16 v14, v55

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_b
    move-object/from16 v52, v11

    .line 288
    .line 289
    move-wide/from16 v53, v12

    .line 290
    .line 291
    move-object/from16 v55, v14

    .line 292
    .line 293
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v2, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 299
    .line 300
    .line 301
    move-result-wide v38

    .line 302
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4, v2, v9, v10}, Landroidx/compose/ui/node/NodeCoordinator;->t(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 308
    .line 309
    .line 310
    move-result-wide v32

    .line 311
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 312
    .line 313
    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 314
    .line 315
    iget-boolean v8, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 316
    .line 317
    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->f:J

    .line 318
    .line 319
    iget-boolean v11, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->h:Z

    .line 320
    .line 321
    iget v12, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 322
    .line 323
    move-wide/from16 v28, v4

    .line 324
    .line 325
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->j:J

    .line 326
    .line 327
    iget v13, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->e:F

    .line 328
    .line 329
    new-instance v27, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 330
    .line 331
    iget v2, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->k:F

    .line 332
    .line 333
    move-wide/from16 v43, v4

    .line 334
    .line 335
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->l:J

    .line 336
    .line 337
    move-wide/from16 v46, v4

    .line 338
    .line 339
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->n:J

    .line 340
    .line 341
    move/from16 v45, v2

    .line 342
    .line 343
    move-wide/from16 v48, v4

    .line 344
    .line 345
    move-wide/from16 v30, v6

    .line 346
    .line 347
    move/from16 v34, v8

    .line 348
    .line 349
    move-wide/from16 v36, v9

    .line 350
    .line 351
    move/from16 v40, v11

    .line 352
    .line 353
    move/from16 v41, v12

    .line 354
    .line 355
    move/from16 v35, v13

    .line 356
    .line 357
    move-object/from16 v42, v15

    .line 358
    .line 359
    invoke-direct/range {v27 .. v49}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZILjava/util/ArrayList;JFJJ)V

    .line 360
    .line 361
    .line 362
    move-object/from16 v2, v27

    .line 363
    .line 364
    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 365
    .line 366
    if-nez v4, :cond_c

    .line 367
    .line 368
    move-object v4, v14

    .line 369
    :cond_c
    iput-object v4, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 370
    .line 371
    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 372
    .line 373
    if-nez v4, :cond_d

    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_d
    move-object v14, v4

    .line 377
    :goto_8
    iput-object v14, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 378
    .line 379
    move-object/from16 v6, v52

    .line 380
    .line 381
    move-wide/from16 v4, v53

    .line 382
    .line 383
    invoke-virtual {v6, v4, v5, v2}, Landroidx/collection/LongSparseArray;->d(JLjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto :goto_9

    .line 387
    :cond_e
    move/from16 v50, v4

    .line 388
    .line 389
    move/from16 v20, v5

    .line 390
    .line 391
    move/from16 v51, v8

    .line 392
    .line 393
    move/from16 v19, v15

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_f
    move/from16 v50, v4

    .line 397
    .line 398
    move/from16 v20, v5

    .line 399
    .line 400
    move/from16 v19, v7

    .line 401
    .line 402
    move/from16 v51, v8

    .line 403
    .line 404
    const/16 v16, 0x0

    .line 405
    .line 406
    :goto_9
    add-int/lit8 v8, v51, 0x1

    .line 407
    .line 408
    move-object/from16 v2, p2

    .line 409
    .line 410
    move/from16 v7, v19

    .line 411
    .line 412
    move/from16 v5, v20

    .line 413
    .line 414
    move/from16 v4, v50

    .line 415
    .line 416
    goto/16 :goto_5

    .line 417
    .line 418
    :cond_10
    move/from16 v50, v4

    .line 419
    .line 420
    move/from16 v19, v7

    .line 421
    .line 422
    move-object v6, v11

    .line 423
    const/16 v16, 0x0

    .line 424
    .line 425
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->f()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-nez v2, :cond_11

    .line 430
    .line 431
    const/4 v2, 0x0

    .line 432
    iput v2, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 433
    .line 434
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 437
    .line 438
    .line 439
    return v19

    .line 440
    :cond_11
    iget v2, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 441
    .line 442
    add-int/lit8 v2, v2, -0x1

    .line 443
    .line 444
    :goto_a
    const/4 v4, -0x1

    .line 445
    if-ge v4, v2, :cond_19

    .line 446
    .line 447
    iget-object v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 448
    .line 449
    aget-wide v7, v5, v2

    .line 450
    .line 451
    iget-boolean v5, v1, Landroidx/collection/LongSparseArray;->j:Z

    .line 452
    .line 453
    if-eqz v5, :cond_15

    .line 454
    .line 455
    iget v5, v1, Landroidx/collection/LongSparseArray;->m:I

    .line 456
    .line 457
    iget-object v9, v1, Landroidx/collection/LongSparseArray;->k:[J

    .line 458
    .line 459
    iget-object v11, v1, Landroidx/collection/LongSparseArray;->l:[Ljava/lang/Object;

    .line 460
    .line 461
    const/4 v12, 0x0

    .line 462
    const/4 v13, 0x0

    .line 463
    :goto_b
    if-ge v13, v5, :cond_14

    .line 464
    .line 465
    aget-object v14, v11, v13

    .line 466
    .line 467
    sget-object v15, Landroidx/collection/LongSparseArrayKt;->a:Ljava/lang/Object;

    .line 468
    .line 469
    if-eq v14, v15, :cond_13

    .line 470
    .line 471
    if-eq v13, v12, :cond_12

    .line 472
    .line 473
    aget-wide v17, v9, v13

    .line 474
    .line 475
    aput-wide v17, v9, v12

    .line 476
    .line 477
    aput-object v14, v11, v12

    .line 478
    .line 479
    aput-object v16, v11, v13

    .line 480
    .line 481
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 482
    .line 483
    :cond_13
    add-int/lit8 v13, v13, 0x1

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_14
    const/4 v13, 0x0

    .line 487
    iput-boolean v13, v1, Landroidx/collection/LongSparseArray;->j:Z

    .line 488
    .line 489
    iput v12, v1, Landroidx/collection/LongSparseArray;->m:I

    .line 490
    .line 491
    :cond_15
    iget-object v5, v1, Landroidx/collection/LongSparseArray;->k:[J

    .line 492
    .line 493
    iget v9, v1, Landroidx/collection/LongSparseArray;->m:I

    .line 494
    .line 495
    invoke-static {v5, v9, v7, v8}, Landroidx/collection/internal/ContainerHelpersKt;->b([JIJ)I

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-ltz v5, :cond_16

    .line 500
    .line 501
    goto :goto_d

    .line 502
    :cond_16
    iget v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 503
    .line 504
    if-ge v2, v5, :cond_18

    .line 505
    .line 506
    add-int/lit8 v5, v5, -0x1

    .line 507
    .line 508
    move v7, v2

    .line 509
    :goto_c
    if-ge v7, v5, :cond_17

    .line 510
    .line 511
    iget-object v8, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b:[J

    .line 512
    .line 513
    add-int/lit8 v9, v7, 0x1

    .line 514
    .line 515
    aget-wide v11, v8, v9

    .line 516
    .line 517
    aput-wide v11, v8, v7

    .line 518
    .line 519
    move v7, v9

    .line 520
    goto :goto_c

    .line 521
    :cond_17
    iget v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 522
    .line 523
    add-int/2addr v5, v4

    .line 524
    iput v5, v10, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->a:I

    .line 525
    .line 526
    :cond_18
    :goto_d
    add-int/lit8 v2, v2, -0x1

    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->f()I

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->f()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    const/4 v4, 0x0

    .line 543
    :goto_e
    if-ge v4, v2, :cond_1a

    .line 544
    .line 545
    invoke-virtual {v6, v4}, Landroidx/collection/LongSparseArray;->g(I)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    add-int/lit8 v4, v4, 0x1

    .line 553
    .line 554
    goto :goto_e

    .line 555
    :cond_1a
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 556
    .line 557
    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    const/4 v5, 0x0

    .line 565
    :goto_f
    if-ge v5, v4, :cond_1c

    .line 566
    .line 567
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v6

    .line 571
    move-object v7, v6

    .line 572
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 573
    .line 574
    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 575
    .line 576
    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a(J)Z

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    if-eqz v7, :cond_1b

    .line 581
    .line 582
    goto :goto_10

    .line 583
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_1c
    move-object/from16 v6, v16

    .line 587
    .line 588
    :goto_10
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 589
    .line 590
    const/4 v1, 0x3

    .line 591
    if-eqz v6, :cond_29

    .line 592
    .line 593
    iget-boolean v3, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 594
    .line 595
    if-nez p4, :cond_1d

    .line 596
    .line 597
    const/4 v13, 0x0

    .line 598
    iput-boolean v13, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 599
    .line 600
    goto :goto_15

    .line 601
    :cond_1d
    const/4 v13, 0x0

    .line 602
    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 603
    .line 604
    if-nez v4, :cond_23

    .line 605
    .line 606
    if-nez v3, :cond_1e

    .line 607
    .line 608
    iget-boolean v4, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->h:Z

    .line 609
    .line 610
    if-eqz v4, :cond_23

    .line 611
    .line 612
    :cond_1e
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 613
    .line 614
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 615
    .line 616
    .line 617
    iget-wide v4, v4, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 618
    .line 619
    iget-wide v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 620
    .line 621
    const/16 v8, 0x20

    .line 622
    .line 623
    shr-long v9, v6, v8

    .line 624
    .line 625
    long-to-int v9, v9

    .line 626
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 627
    .line 628
    .line 629
    move-result v9

    .line 630
    const-wide v10, 0xffffffffL

    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    and-long/2addr v6, v10

    .line 636
    long-to-int v6, v6

    .line 637
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 638
    .line 639
    .line 640
    move-result v6

    .line 641
    shr-long v7, v4, v8

    .line 642
    .line 643
    long-to-int v7, v7

    .line 644
    and-long/2addr v4, v10

    .line 645
    long-to-int v4, v4

    .line 646
    const/4 v5, 0x0

    .line 647
    cmpg-float v8, v9, v5

    .line 648
    .line 649
    if-gez v8, :cond_1f

    .line 650
    .line 651
    move/from16 v8, v19

    .line 652
    .line 653
    goto :goto_11

    .line 654
    :cond_1f
    move v8, v13

    .line 655
    :goto_11
    int-to-float v7, v7

    .line 656
    cmpl-float v7, v9, v7

    .line 657
    .line 658
    if-lez v7, :cond_20

    .line 659
    .line 660
    move/from16 v7, v19

    .line 661
    .line 662
    goto :goto_12

    .line 663
    :cond_20
    move v7, v13

    .line 664
    :goto_12
    or-int/2addr v7, v8

    .line 665
    cmpg-float v5, v6, v5

    .line 666
    .line 667
    if-gez v5, :cond_21

    .line 668
    .line 669
    move/from16 v5, v19

    .line 670
    .line 671
    goto :goto_13

    .line 672
    :cond_21
    move v5, v13

    .line 673
    :goto_13
    or-int/2addr v5, v7

    .line 674
    int-to-float v4, v4

    .line 675
    cmpl-float v4, v6, v4

    .line 676
    .line 677
    if-lez v4, :cond_22

    .line 678
    .line 679
    move/from16 v4, v19

    .line 680
    .line 681
    goto :goto_14

    .line 682
    :cond_22
    move v4, v13

    .line 683
    :goto_14
    or-int/2addr v4, v5

    .line 684
    xor-int/lit8 v4, v4, 0x1

    .line 685
    .line 686
    iput-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 687
    .line 688
    :cond_23
    :goto_15
    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 689
    .line 690
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->h:Z

    .line 691
    .line 692
    const/4 v6, 0x5

    .line 693
    const/4 v7, 0x4

    .line 694
    if-eq v4, v5, :cond_27

    .line 695
    .line 696
    iget v8, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 697
    .line 698
    if-ne v8, v1, :cond_24

    .line 699
    .line 700
    goto :goto_16

    .line 701
    :cond_24
    if-ne v8, v7, :cond_25

    .line 702
    .line 703
    goto :goto_16

    .line 704
    :cond_25
    if-ne v8, v6, :cond_27

    .line 705
    .line 706
    :goto_16
    if-eqz v4, :cond_26

    .line 707
    .line 708
    move v6, v7

    .line 709
    :cond_26
    iput v6, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 710
    .line 711
    goto :goto_17

    .line 712
    :cond_27
    iget v8, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 713
    .line 714
    if-ne v8, v7, :cond_28

    .line 715
    .line 716
    if-eqz v5, :cond_28

    .line 717
    .line 718
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->j:Z

    .line 719
    .line 720
    if-nez v5, :cond_28

    .line 721
    .line 722
    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 723
    .line 724
    goto :goto_17

    .line 725
    :cond_28
    if-ne v8, v6, :cond_2a

    .line 726
    .line 727
    if-eqz v4, :cond_2a

    .line 728
    .line 729
    if-eqz v3, :cond_2a

    .line 730
    .line 731
    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 732
    .line 733
    goto :goto_17

    .line 734
    :cond_29
    const/4 v13, 0x0

    .line 735
    :cond_2a
    :goto_17
    if-nez v50, :cond_2e

    .line 736
    .line 737
    iget v3, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 738
    .line 739
    if-ne v3, v1, :cond_2e

    .line 740
    .line 741
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 742
    .line 743
    if-eqz v1, :cond_2e

    .line 744
    .line 745
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 746
    .line 747
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    iget-object v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 752
    .line 753
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 754
    .line 755
    .line 756
    move-result v5

    .line 757
    if-eq v3, v5, :cond_2b

    .line 758
    .line 759
    goto :goto_19

    .line 760
    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    move v5, v13

    .line 765
    :goto_18
    if-ge v5, v3, :cond_2d

    .line 766
    .line 767
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v6

    .line 771
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 772
    .line 773
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v7

    .line 777
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 778
    .line 779
    iget-wide v8, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 780
    .line 781
    iget-wide v6, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 782
    .line 783
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 784
    .line 785
    .line 786
    move-result v6

    .line 787
    if-nez v6, :cond_2c

    .line 788
    .line 789
    goto :goto_19

    .line 790
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    .line 791
    .line 792
    goto :goto_18

    .line 793
    :cond_2d
    move v7, v13

    .line 794
    goto :goto_1a

    .line 795
    :cond_2e
    :goto_19
    move/from16 v7, v19

    .line 796
    .line 797
    :goto_1a
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 798
    .line 799
    return v7
.end method

.method public final b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->h:Z

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_4

    .line 22
    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 28
    .line 29
    iget-boolean v6, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 30
    .line 31
    iget-wide v7, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 32
    .line 33
    invoke-virtual {p1, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->a(J)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget-boolean v9, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 38
    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    :cond_1
    if-nez v6, :cond_3

    .line 44
    .line 45
    if-nez v9, :cond_3

    .line 46
    .line 47
    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 48
    .line 49
    invoke-virtual {v5, v7, v8}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->c(J)V

    .line 50
    .line 51
    .line 52
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->i:Z

    .line 56
    .line 57
    iget p1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    if-ne p1, v0, :cond_5

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->j:Z

    .line 64
    .line 65
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/Node;->c()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    :goto_1
    if-eqz p0, :cond_8

    .line 26
    .line 27
    instance-of v3, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    check-cast p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 32
    .line 33
    invoke-interface {p0}, Landroidx/compose/ui/node/PointerInputModifierNode;->L()V

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 38
    .line 39
    const/16 v4, 0x10

    .line 40
    .line 41
    and-int/2addr v3, v4

    .line 42
    if-eqz v3, :cond_7

    .line 43
    .line 44
    instance-of v3, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 45
    .line 46
    if-eqz v3, :cond_7

    .line 47
    .line 48
    move-object v3, p0

    .line 49
    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    move v5, v2

    .line 54
    :goto_2
    const/4 v6, 0x1

    .line 55
    if-eqz v3, :cond_6

    .line 56
    .line 57
    iget v7, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 58
    .line 59
    and-int/2addr v7, v4

    .line 60
    if-eqz v7, :cond_5

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    if-ne v5, v6, :cond_2

    .line 65
    .line 66
    move-object p0, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    if-nez v1, :cond_3

    .line 69
    .line 70
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 71
    .line 72
    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 73
    .line 74
    invoke-direct {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    if-eqz p0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    move-object p0, v0

    .line 83
    :cond_4
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    if-ne v5, v6, :cond_7

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    :goto_4
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    goto :goto_1

    .line 97
    :cond_8
    return-void
.end method

.method public final d(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    iget-object v4, v1, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget-object v4, v4, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v4, v3

    .line 35
    :goto_0
    if-nez v4, :cond_3

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-wide v5, v5, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 50
    .line 51
    move-object v7, v1

    .line 52
    move-object v8, v2

    .line 53
    :goto_1
    const/4 v9, 0x1

    .line 54
    if-eqz v7, :cond_d

    .line 55
    .line 56
    instance-of v10, v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 57
    .line 58
    if-eqz v10, :cond_4

    .line 59
    .line 60
    move-object v10, v7

    .line 61
    check-cast v10, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 62
    .line 63
    sget-object v11, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 64
    .line 65
    invoke-interface {v10, v4, v11, v5, v6}, Landroidx/compose/ui/node/PointerInputModifierNode;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 66
    .line 67
    .line 68
    move v10, v3

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    move v10, v9

    .line 71
    :goto_2
    if-eqz v10, :cond_c

    .line 72
    .line 73
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 74
    .line 75
    const/16 v11, 0x10

    .line 76
    .line 77
    and-int/2addr v10, v11

    .line 78
    if-eqz v10, :cond_5

    .line 79
    .line 80
    move v10, v9

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    move v10, v3

    .line 83
    :goto_3
    if-eqz v10, :cond_c

    .line 84
    .line 85
    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 86
    .line 87
    if-eqz v10, :cond_c

    .line 88
    .line 89
    move-object v10, v7

    .line 90
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 91
    .line 92
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 93
    .line 94
    move v12, v3

    .line 95
    :goto_4
    if-eqz v10, :cond_b

    .line 96
    .line 97
    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 98
    .line 99
    and-int/2addr v13, v11

    .line 100
    if-eqz v13, :cond_6

    .line 101
    .line 102
    move v13, v9

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    move v13, v3

    .line 105
    :goto_5
    if-eqz v13, :cond_a

    .line 106
    .line 107
    add-int/lit8 v12, v12, 0x1

    .line 108
    .line 109
    if-ne v12, v9, :cond_7

    .line 110
    .line 111
    move-object v7, v10

    .line 112
    goto :goto_6

    .line 113
    :cond_7
    if-nez v8, :cond_8

    .line 114
    .line 115
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 116
    .line 117
    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    .line 118
    .line 119
    invoke-direct {v8, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_8
    if-eqz v7, :cond_9

    .line 123
    .line 124
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object v7, v2

    .line 128
    :cond_9
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_a
    :goto_6
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_b
    if-ne v12, v9, :cond_c

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_c
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    goto :goto_1

    .line 142
    :cond_d
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 143
    .line 144
    if-eqz v1, :cond_e

    .line 145
    .line 146
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 147
    .line 148
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 149
    .line 150
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 151
    .line 152
    :goto_7
    if-ge v3, v1, :cond_e

    .line 153
    .line 154
    aget-object v5, v4, v3

    .line 155
    .line 156
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 157
    .line 158
    invoke-virtual {v5, p1}, Landroidx/compose/ui/input/pointer/Node;->d(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    .line 159
    .line 160
    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_e
    move v3, v9

    .line 165
    :goto_8
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->b(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->a()V

    .line 169
    .line 170
    .line 171
    iput-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 172
    .line 173
    return v3
.end method

.method public final e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    .line 12
    .line 13
    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->D:Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v2, v1

    .line 32
    :goto_0
    if-nez v2, :cond_3

    .line 33
    .line 34
    :goto_1
    return v1

    .line 35
    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->g:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-wide v3, v3, Landroidx/compose/ui/layout/Placeable;->l:J

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v6, v0

    .line 49
    move-object v7, v5

    .line 50
    :goto_2
    const/16 v8, 0x10

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    if-eqz v6, :cond_d

    .line 54
    .line 55
    instance-of v10, v6, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 56
    .line 57
    if-eqz v10, :cond_4

    .line 58
    .line 59
    move-object v10, v6

    .line 60
    check-cast v10, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 61
    .line 62
    sget-object v11, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 63
    .line 64
    invoke-interface {v10, v2, v11, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 65
    .line 66
    .line 67
    move v10, v1

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move v10, v9

    .line 70
    :goto_3
    if-eqz v10, :cond_c

    .line 71
    .line 72
    iget v10, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 73
    .line 74
    and-int/2addr v10, v8

    .line 75
    if-eqz v10, :cond_5

    .line 76
    .line 77
    move v10, v9

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move v10, v1

    .line 80
    :goto_4
    if-eqz v10, :cond_c

    .line 81
    .line 82
    instance-of v10, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 83
    .line 84
    if-eqz v10, :cond_c

    .line 85
    .line 86
    move-object v10, v6

    .line 87
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 88
    .line 89
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 90
    .line 91
    move v11, v1

    .line 92
    :goto_5
    if-eqz v10, :cond_b

    .line 93
    .line 94
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 95
    .line 96
    and-int/2addr v12, v8

    .line 97
    if-eqz v12, :cond_6

    .line 98
    .line 99
    move v12, v9

    .line 100
    goto :goto_6

    .line 101
    :cond_6
    move v12, v1

    .line 102
    :goto_6
    if-eqz v12, :cond_a

    .line 103
    .line 104
    add-int/lit8 v11, v11, 0x1

    .line 105
    .line 106
    if-ne v11, v9, :cond_7

    .line 107
    .line 108
    move-object v6, v10

    .line 109
    goto :goto_7

    .line 110
    :cond_7
    if-nez v7, :cond_8

    .line 111
    .line 112
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 113
    .line 114
    new-array v12, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 115
    .line 116
    invoke-direct {v7, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_8
    if-eqz v6, :cond_9

    .line 120
    .line 121
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v6, v5

    .line 125
    :cond_9
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_a
    :goto_7
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_b
    if-ne v11, v9, :cond_c

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_c
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    goto :goto_2

    .line 139
    :cond_d
    iget-boolean v6, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 140
    .line 141
    if-eqz v6, :cond_e

    .line 142
    .line 143
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 144
    .line 145
    iget-object v7, v6, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 146
    .line 147
    iget v6, v6, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 148
    .line 149
    move v10, v1

    .line 150
    :goto_8
    if-ge v10, v6, :cond_e

    .line 151
    .line 152
    aget-object v11, v7, v10

    .line 153
    .line 154
    check-cast v11, Landroidx/compose/ui/input/pointer/Node;

    .line 155
    .line 156
    iget-object v12, p0, Landroidx/compose/ui/input/pointer/Node;->f:Landroidx/compose/ui/node/NodeCoordinator;

    .line 157
    .line 158
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->e(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 162
    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_e
    iget-boolean p0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 168
    .line 169
    if-eqz p0, :cond_18

    .line 170
    .line 171
    move-object p0, v5

    .line 172
    :goto_9
    if-eqz v0, :cond_18

    .line 173
    .line 174
    instance-of p1, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 175
    .line 176
    if-eqz p1, :cond_f

    .line 177
    .line 178
    move-object p1, v0

    .line 179
    check-cast p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 180
    .line 181
    sget-object p2, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 182
    .line 183
    invoke-interface {p1, v2, p2, v3, v4}, Landroidx/compose/ui/node/PointerInputModifierNode;->K(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 184
    .line 185
    .line 186
    move p1, v1

    .line 187
    goto :goto_a

    .line 188
    :cond_f
    move p1, v9

    .line 189
    :goto_a
    if-eqz p1, :cond_17

    .line 190
    .line 191
    iget p1, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 192
    .line 193
    and-int/2addr p1, v8

    .line 194
    if-eqz p1, :cond_10

    .line 195
    .line 196
    move p1, v9

    .line 197
    goto :goto_b

    .line 198
    :cond_10
    move p1, v1

    .line 199
    :goto_b
    if-eqz p1, :cond_17

    .line 200
    .line 201
    instance-of p1, v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 202
    .line 203
    if-eqz p1, :cond_17

    .line 204
    .line 205
    move-object p1, v0

    .line 206
    check-cast p1, Landroidx/compose/ui/node/DelegatingNode;

    .line 207
    .line 208
    iget-object p1, p1, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 209
    .line 210
    move p2, v1

    .line 211
    :goto_c
    if-eqz p1, :cond_16

    .line 212
    .line 213
    iget v6, p1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 214
    .line 215
    and-int/2addr v6, v8

    .line 216
    if-eqz v6, :cond_11

    .line 217
    .line 218
    move v6, v9

    .line 219
    goto :goto_d

    .line 220
    :cond_11
    move v6, v1

    .line 221
    :goto_d
    if-eqz v6, :cond_15

    .line 222
    .line 223
    add-int/lit8 p2, p2, 0x1

    .line 224
    .line 225
    if-ne p2, v9, :cond_12

    .line 226
    .line 227
    move-object v0, p1

    .line 228
    goto :goto_e

    .line 229
    :cond_12
    if-nez p0, :cond_13

    .line 230
    .line 231
    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 232
    .line 233
    new-array v6, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 234
    .line 235
    invoke-direct {p0, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_13
    if-eqz v0, :cond_14

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    move-object v0, v5

    .line 244
    :cond_14
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    :cond_15
    :goto_e
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 248
    .line 249
    goto :goto_c

    .line 250
    :cond_16
    if-ne p2, v9, :cond_17

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_17
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    goto :goto_9

    .line 258
    :cond_18
    return v9
.end method

.method public final f(JLandroidx/collection/MutableObjectList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->b(J)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3, p0}, Landroidx/collection/ObjectList;->c(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->c(J)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->e:Landroidx/collection/LongSparseArray;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->e(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 27
    .line 28
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_1
    if-ge v1, p0, :cond_2

    .line 32
    .line 33
    aget-object v2, v0, v1

    .line 34
    .line 35
    check-cast v2, Landroidx/compose/ui/input/pointer/Node;

    .line 36
    .line 37
    invoke-virtual {v2, p1, p2, p3}, Landroidx/compose/ui/input/pointer/Node;->f(JLandroidx/collection/MutableObjectList;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Node(modifierNode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->c:Landroidx/compose/ui/Modifier$Node;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", children="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", pointerIds="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->d:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
