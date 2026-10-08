.class public final synthetic Landroidx/compose/runtime/h;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/Recomposer;

.field public final synthetic k:Landroidx/collection/MutableScatterSet;

.field public final synthetic l:Landroidx/collection/MutableScatterSet;

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic o:Landroidx/collection/MutableScatterSet;

.field public final synthetic p:Ljava/util/List;

.field public final synthetic q:Landroidx/collection/MutableScatterSet;

.field public final synthetic r:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/h;->j:Landroidx/compose/runtime/Recomposer;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/h;->k:Landroidx/collection/MutableScatterSet;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/h;->l:Landroidx/collection/MutableScatterSet;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/h;->m:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/h;->n:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/runtime/h;->o:Landroidx/collection/MutableScatterSet;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/runtime/h;->p:Ljava/util/List;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/runtime/h;->q:Landroidx/collection/MutableScatterSet;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/runtime/h;->r:Ljava/util/Set;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/h;->j:Landroidx/compose/runtime/Recomposer;

    .line 4
    .line 5
    iget-object v7, v0, Landroidx/compose/runtime/h;->k:Landroidx/collection/MutableScatterSet;

    .line 6
    .line 7
    iget-object v8, v0, Landroidx/compose/runtime/h;->l:Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/runtime/h;->m:Ljava/util/List;

    .line 10
    .line 11
    iget-object v3, v0, Landroidx/compose/runtime/h;->n:Ljava/util/List;

    .line 12
    .line 13
    iget-object v5, v0, Landroidx/compose/runtime/h;->o:Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    iget-object v4, v0, Landroidx/compose/runtime/h;->p:Ljava/util/List;

    .line 16
    .line 17
    iget-object v6, v0, Landroidx/compose/runtime/h;->q:Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/runtime/h;->r:Ljava/util/Set;

    .line 20
    .line 21
    move-object/from16 v9, p1

    .line 22
    .line 23
    check-cast v9, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v11

    .line 32
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->z()Z

    .line 33
    .line 34
    .line 35
    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 36
    monitor-exit v11

    .line 37
    if-eqz v12, :cond_0

    .line 38
    .line 39
    const-string v11, "Recomposer:animation"

    .line 40
    .line 41
    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :try_start_1
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer;->a:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 45
    .line 46
    iget-object v11, v11, Landroidx/compose/runtime/BroadcastFrameClock;->k:Landroidx/compose/runtime/internal/AwaiterQueue;

    .line 47
    .line 48
    new-instance v12, Landroidx/compose/runtime/a;

    .line 49
    .line 50
    invoke-direct {v12, v9, v10}, Landroidx/compose/runtime/a;-><init>(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/internal/AwaiterQueue;->b(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_0
    :goto_0
    const-string v9, "Recomposer:recompose"

    .line 69
    .line 70
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->L()Z

    .line 74
    .line 75
    .line 76
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    .line 79
    :try_start_3
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 80
    .line 81
    iget-object v11, v10, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 82
    .line 83
    iget v10, v10, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    move v13, v12

    .line 87
    :goto_1
    if-ge v13, v10, :cond_1

    .line 88
    .line 89
    aget-object v14, v11, v13

    .line 90
    .line 91
    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .line 92
    .line 93
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v13, v13, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto/16 :goto_27

    .line 101
    .line 102
    :cond_1
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 103
    .line 104
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    .line 106
    .line 107
    :try_start_4
    monitor-exit v9

    .line 108
    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->f()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->f()V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    const/4 v10, 0x0

    .line 119
    if-eqz v9, :cond_13

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    if-nez v9, :cond_2

    .line 126
    .line 127
    goto/16 :goto_1a

    .line 128
    .line 129
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    instance-of v9, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 134
    .line 135
    if-eqz v9, :cond_3

    .line 136
    .line 137
    new-instance v13, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 138
    .line 139
    move-object v14, v0

    .line 140
    check-cast v14, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 141
    .line 142
    const/16 v17, 0x1

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    const/4 v15, 0x0

    .line 147
    const/16 v16, 0x0

    .line 148
    .line 149
    invoke-direct/range {v13 .. v18}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    new-instance v13, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 154
    .line 155
    const/4 v9, 0x1

    .line 156
    invoke-direct {v13, v0, v10, v9, v12}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_11

    .line 157
    .line 158
    .line 159
    :goto_3
    :try_start_5
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 160
    .line 161
    .line 162
    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 163
    :try_start_6
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    :try_start_7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    move v11, v12

    .line 174
    :goto_4
    if-ge v11, v0, :cond_4

    .line 175
    .line 176
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .line 181
    .line 182
    invoke-virtual {v6, v14}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    add-int/lit8 v11, v11, 0x1

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catchall_2
    move-exception v0

    .line 189
    goto :goto_6

    .line 190
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    move v11, v12

    .line 195
    :goto_5
    if-ge v11, v0, :cond_5

    .line 196
    .line 197
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .line 202
    .line 203
    check-cast v14, Landroidx/compose/runtime/CompositionImpl;

    .line 204
    .line 205
    invoke-virtual {v14}, Landroidx/compose/runtime/CompositionImpl;->h()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 206
    .line 207
    .line 208
    add-int/lit8 v11, v11, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_5
    :try_start_8
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_3
    move-exception v0

    .line 216
    goto/16 :goto_18

    .line 217
    .line 218
    :goto_6
    :try_start_9
    invoke-virtual {v1, v0, v10}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 219
    .line 220
    .line 221
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 222
    .line 223
    .line 224
    :try_start_a
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 225
    .line 226
    .line 227
    :try_start_b
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 228
    .line 229
    .line 230
    goto/16 :goto_14

    .line 231
    .line 232
    :catchall_4
    move-exception v0

    .line 233
    goto/16 :goto_19

    .line 234
    .line 235
    :catchall_5
    move-exception v0

    .line 236
    :try_start_c
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 237
    .line 238
    .line 239
    throw v0

    .line 240
    :cond_6
    :goto_7
    invoke-virtual {v5}, Landroidx/collection/ScatterSet;->c()Z

    .line 241
    .line 242
    .line 243
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 244
    const-wide/16 v16, 0xff

    .line 245
    .line 246
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    const/16 p0, 0x7

    .line 252
    .line 253
    if-eqz v0, :cond_c

    .line 254
    .line 255
    :try_start_d
    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->k(Landroidx/collection/ScatterSet;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, v5, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 259
    .line 260
    iget-object v12, v5, Landroidx/collection/ScatterSet;->a:[J

    .line 261
    .line 262
    const-wide/16 v20, 0x80

    .line 263
    .line 264
    array-length v14, v12

    .line 265
    add-int/lit8 v14, v14, -0x2

    .line 266
    .line 267
    if-ltz v14, :cond_a

    .line 268
    .line 269
    const/4 v15, 0x0

    .line 270
    :goto_8
    const/16 v22, 0x8

    .line 271
    .line 272
    aget-wide v10, v12, v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 273
    .line 274
    move-object/from16 v23, v2

    .line 275
    .line 276
    move-object/from16 v24, v3

    .line 277
    .line 278
    not-long v2, v10

    .line 279
    shl-long v2, v2, p0

    .line 280
    .line 281
    and-long/2addr v2, v10

    .line 282
    and-long v2, v2, v18

    .line 283
    .line 284
    cmp-long v2, v2, v18

    .line 285
    .line 286
    if-eqz v2, :cond_9

    .line 287
    .line 288
    sub-int v2, v15, v14

    .line 289
    .line 290
    not-int v2, v2

    .line 291
    ushr-int/lit8 v2, v2, 0x1f

    .line 292
    .line 293
    rsub-int/lit8 v2, v2, 0x8

    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    :goto_9
    if-ge v3, v2, :cond_8

    .line 297
    .line 298
    and-long v25, v10, v16

    .line 299
    .line 300
    cmp-long v25, v25, v20

    .line 301
    .line 302
    if-gez v25, :cond_7

    .line 303
    .line 304
    shl-int/lit8 v25, v15, 0x3

    .line 305
    .line 306
    add-int v25, v25, v3

    .line 307
    .line 308
    :try_start_e
    aget-object v25, v0, v25

    .line 309
    .line 310
    check-cast v25, Landroidx/compose/runtime/ControlledComposition;

    .line 311
    .line 312
    check-cast v25, Landroidx/compose/runtime/CompositionImpl;

    .line 313
    .line 314
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/CompositionImpl;->j()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 315
    .line 316
    .line 317
    goto :goto_b

    .line 318
    :goto_a
    const/4 v2, 0x0

    .line 319
    goto :goto_c

    .line 320
    :catchall_6
    move-exception v0

    .line 321
    goto :goto_a

    .line 322
    :cond_7
    :goto_b
    shr-long v10, v10, v22

    .line 323
    .line 324
    add-int/lit8 v3, v3, 0x1

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_8
    move/from16 v3, v22

    .line 328
    .line 329
    if-ne v2, v3, :cond_b

    .line 330
    .line 331
    :cond_9
    if-eq v15, v14, :cond_b

    .line 332
    .line 333
    add-int/lit8 v15, v15, 0x1

    .line 334
    .line 335
    move-object/from16 v2, v23

    .line 336
    .line 337
    move-object/from16 v3, v24

    .line 338
    .line 339
    goto :goto_8

    .line 340
    :catchall_7
    move-exception v0

    .line 341
    move-object/from16 v23, v2

    .line 342
    .line 343
    move-object/from16 v24, v3

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_a
    move-object/from16 v23, v2

    .line 347
    .line 348
    move-object/from16 v24, v3

    .line 349
    .line 350
    :cond_b
    :try_start_f
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 351
    .line 352
    .line 353
    move-object/from16 v2, v23

    .line 354
    .line 355
    move-object/from16 v3, v24

    .line 356
    .line 357
    goto :goto_d

    .line 358
    :goto_c
    :try_start_10
    invoke-virtual {v1, v0, v2}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 359
    .line 360
    .line 361
    move-object/from16 v2, v23

    .line 362
    .line 363
    move-object/from16 v3, v24

    .line 364
    .line 365
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 366
    .line 367
    .line 368
    :try_start_11
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 369
    .line 370
    .line 371
    :try_start_12
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 372
    .line 373
    .line 374
    goto/16 :goto_14

    .line 375
    .line 376
    :catchall_8
    move-exception v0

    .line 377
    :try_start_13
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->f()V

    .line 378
    .line 379
    .line 380
    throw v0

    .line 381
    :cond_c
    const-wide/16 v20, 0x80

    .line 382
    .line 383
    :goto_d
    invoke-virtual {v6}, Landroidx/collection/ScatterSet;->c()Z

    .line 384
    .line 385
    .line 386
    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 387
    if-eqz v0, :cond_11

    .line 388
    .line 389
    :try_start_14
    iget-object v0, v6, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 390
    .line 391
    iget-object v10, v6, Landroidx/collection/ScatterSet;->a:[J

    .line 392
    .line 393
    array-length v11, v10

    .line 394
    add-int/lit8 v11, v11, -0x2

    .line 395
    .line 396
    if-ltz v11, :cond_10

    .line 397
    .line 398
    const/4 v12, 0x0

    .line 399
    :goto_e
    aget-wide v14, v10, v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 400
    .line 401
    move-object/from16 v23, v2

    .line 402
    .line 403
    move-object/from16 v24, v3

    .line 404
    .line 405
    not-long v2, v14

    .line 406
    shl-long v2, v2, p0

    .line 407
    .line 408
    and-long/2addr v2, v14

    .line 409
    and-long v2, v2, v18

    .line 410
    .line 411
    cmp-long v2, v2, v18

    .line 412
    .line 413
    if-eqz v2, :cond_f

    .line 414
    .line 415
    sub-int v2, v12, v11

    .line 416
    .line 417
    not-int v2, v2

    .line 418
    ushr-int/lit8 v2, v2, 0x1f

    .line 419
    .line 420
    const/16 v22, 0x8

    .line 421
    .line 422
    rsub-int/lit8 v2, v2, 0x8

    .line 423
    .line 424
    const/4 v3, 0x0

    .line 425
    :goto_f
    if-ge v3, v2, :cond_e

    .line 426
    .line 427
    and-long v25, v14, v16

    .line 428
    .line 429
    cmp-long v25, v25, v20

    .line 430
    .line 431
    if-gez v25, :cond_d

    .line 432
    .line 433
    shl-int/lit8 v25, v12, 0x3

    .line 434
    .line 435
    add-int v25, v25, v3

    .line 436
    .line 437
    :try_start_15
    aget-object v25, v0, v25

    .line 438
    .line 439
    check-cast v25, Landroidx/compose/runtime/ControlledComposition;

    .line 440
    .line 441
    check-cast v25, Landroidx/compose/runtime/CompositionImpl;

    .line 442
    .line 443
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/CompositionImpl;->k()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 444
    .line 445
    .line 446
    :cond_d
    move-object/from16 v25, v0

    .line 447
    .line 448
    const/16 v0, 0x8

    .line 449
    .line 450
    goto :goto_11

    .line 451
    :goto_10
    const/4 v2, 0x0

    .line 452
    goto :goto_13

    .line 453
    :catchall_9
    move-exception v0

    .line 454
    goto :goto_10

    .line 455
    :goto_11
    shr-long/2addr v14, v0

    .line 456
    add-int/lit8 v3, v3, 0x1

    .line 457
    .line 458
    move-object/from16 v0, v25

    .line 459
    .line 460
    goto :goto_f

    .line 461
    :cond_e
    move-object/from16 v25, v0

    .line 462
    .line 463
    const/16 v0, 0x8

    .line 464
    .line 465
    if-ne v2, v0, :cond_10

    .line 466
    .line 467
    goto :goto_12

    .line 468
    :cond_f
    move-object/from16 v25, v0

    .line 469
    .line 470
    const/16 v0, 0x8

    .line 471
    .line 472
    :goto_12
    if-eq v12, v11, :cond_10

    .line 473
    .line 474
    add-int/lit8 v12, v12, 0x1

    .line 475
    .line 476
    move-object/from16 v2, v23

    .line 477
    .line 478
    move-object/from16 v3, v24

    .line 479
    .line 480
    move-object/from16 v0, v25

    .line 481
    .line 482
    goto :goto_e

    .line 483
    :catchall_a
    move-exception v0

    .line 484
    move-object/from16 v23, v2

    .line 485
    .line 486
    move-object/from16 v24, v3

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_10
    :try_start_16
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 490
    .line 491
    .line 492
    goto :goto_15

    .line 493
    :goto_13
    :try_start_17
    invoke-virtual {v1, v0, v2}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v2, v23

    .line 497
    .line 498
    move-object/from16 v3, v24

    .line 499
    .line 500
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 501
    .line 502
    .line 503
    :try_start_18
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 504
    .line 505
    .line 506
    :try_start_19
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 507
    .line 508
    .line 509
    :goto_14
    :try_start_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    .line 510
    .line 511
    .line 512
    goto :goto_17

    .line 513
    :catchall_b
    move-exception v0

    .line 514
    :try_start_1b
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->f()V

    .line 515
    .line 516
    .line 517
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 518
    :cond_11
    :goto_15
    :try_start_1c
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 519
    .line 520
    .line 521
    :try_start_1d
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    .line 522
    .line 523
    .line 524
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 525
    .line 526
    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    .line 527
    :try_start_1e
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    if-nez v0, :cond_12

    .line 532
    .line 533
    goto :goto_16

    .line 534
    :cond_12
    const-string v0, "unexpected to get continuation here"

    .line 535
    .line 536
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 537
    .line 538
    .line 539
    :goto_16
    :try_start_1f
    monitor-exit v2

    .line 540
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->m()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->f()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->f()V

    .line 551
    .line 552
    .line 553
    const/4 v2, 0x0

    .line 554
    iput-object v2, v1, Landroidx/compose/runtime/Recomposer;->q:Landroidx/collection/MutableScatterSet;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 555
    .line 556
    :goto_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_26

    .line 560
    .line 561
    :catchall_c
    move-exception v0

    .line 562
    :try_start_20
    monitor-exit v2

    .line 563
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 564
    :goto_18
    :try_start_21
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 565
    .line 566
    .line 567
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 568
    :goto_19
    :try_start_22
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    .line 569
    .line 570
    .line 571
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 572
    :cond_13
    :goto_1a
    :try_start_23
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 573
    .line 574
    .line 575
    move-result v9

    .line 576
    const/4 v10, 0x0

    .line 577
    :goto_1b
    if-ge v10, v9, :cond_15

    .line 578
    .line 579
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v11

    .line 583
    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    .line 584
    .line 585
    invoke-virtual {v1, v11, v7}, Landroidx/compose/runtime/Recomposer;->J(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/CompositionImpl;

    .line 586
    .line 587
    .line 588
    move-result-object v12

    .line 589
    if-eqz v12, :cond_14

    .line 590
    .line 591
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_1c

    .line 595
    :catchall_d
    move-exception v0

    .line 596
    const/4 v13, 0x0

    .line 597
    goto/16 :goto_25

    .line 598
    .line 599
    :cond_14
    :goto_1c
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 600
    .line 601
    .line 602
    add-int/lit8 v10, v10, 0x1

    .line 603
    .line 604
    goto :goto_1b

    .line 605
    :cond_15
    :try_start_24
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v7}, Landroidx/collection/ScatterSet;->c()Z

    .line 609
    .line 610
    .line 611
    move-result v9

    .line 612
    if-nez v9, :cond_16

    .line 613
    .line 614
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 615
    .line 616
    iget v9, v9, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 617
    .line 618
    if-eqz v9, :cond_1c

    .line 619
    .line 620
    :cond_16
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 621
    .line 622
    monitor-enter v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    .line 623
    :try_start_25
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->E()Ljava/util/List;

    .line 624
    .line 625
    .line 626
    move-result-object v10

    .line 627
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 628
    .line 629
    .line 630
    move-result v11

    .line 631
    const/4 v12, 0x0

    .line 632
    :goto_1d
    if-ge v12, v11, :cond_18

    .line 633
    .line 634
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v13

    .line 638
    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .line 639
    .line 640
    invoke-virtual {v8, v13}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v14

    .line 644
    if-nez v14, :cond_17

    .line 645
    .line 646
    check-cast v13, Landroidx/compose/runtime/CompositionImpl;

    .line 647
    .line 648
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/CompositionImpl;->x(Ljava/util/Set;)Z

    .line 649
    .line 650
    .line 651
    move-result v14

    .line 652
    if-eqz v14, :cond_17

    .line 653
    .line 654
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    goto :goto_1e

    .line 658
    :catchall_e
    move-exception v0

    .line 659
    goto/16 :goto_24

    .line 660
    .line 661
    :cond_17
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    .line 662
    .line 663
    goto :goto_1d

    .line 664
    :cond_18
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 665
    .line 666
    iget v11, v10, Landroidx/compose/runtime/collection/MutableVector;->l:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 667
    .line 668
    const/4 v12, 0x0

    .line 669
    const/4 v13, 0x0

    .line 670
    :goto_1f
    iget-object v14, v10, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 671
    .line 672
    if-ge v12, v11, :cond_1b

    .line 673
    .line 674
    :try_start_26
    aget-object v14, v14, v12

    .line 675
    .line 676
    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .line 677
    .line 678
    invoke-virtual {v8, v14}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v15

    .line 682
    if-nez v15, :cond_19

    .line 683
    .line 684
    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v15

    .line 688
    if-nez v15, :cond_19

    .line 689
    .line 690
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    add-int/lit8 v13, v13, 0x1

    .line 694
    .line 695
    goto :goto_20

    .line 696
    :cond_19
    if-lez v13, :cond_1a

    .line 697
    .line 698
    iget-object v14, v10, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 699
    .line 700
    sub-int v15, v12, v13

    .line 701
    .line 702
    aget-object v16, v14, v12

    .line 703
    .line 704
    aput-object v16, v14, v15

    .line 705
    .line 706
    :cond_1a
    :goto_20
    add-int/lit8 v12, v12, 0x1

    .line 707
    .line 708
    goto :goto_1f

    .line 709
    :cond_1b
    sub-int v12, v11, v13

    .line 710
    .line 711
    const/4 v13, 0x0

    .line 712
    invoke-static {v14, v12, v11, v13}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    iput v12, v10, Landroidx/compose/runtime/collection/MutableVector;->l:I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .line 716
    .line 717
    :try_start_27
    monitor-exit v9

    .line 718
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 719
    .line 720
    .line 721
    move-result v9
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    .line 722
    if-eqz v9, :cond_1e

    .line 723
    .line 724
    :try_start_28
    invoke-static {v3, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->y(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 725
    .line 726
    .line 727
    :goto_21
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 728
    .line 729
    .line 730
    move-result v9

    .line 731
    if-nez v9, :cond_1e

    .line 732
    .line 733
    invoke-virtual {v1, v3, v7}, Landroidx/compose/runtime/Recomposer;->I(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    .line 734
    .line 735
    .line 736
    move-result-object v9

    .line 737
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 738
    .line 739
    .line 740
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 741
    .line 742
    .line 743
    move-result-object v9

    .line 744
    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 745
    .line 746
    .line 747
    move-result v10

    .line 748
    if-eqz v10, :cond_1d

    .line 749
    .line 750
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v10

    .line 754
    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V

    .line 755
    .line 756
    .line 757
    goto :goto_22

    .line 758
    :cond_1d
    invoke-static {v3, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->y(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 759
    .line 760
    .line 761
    goto :goto_21

    .line 762
    :catchall_f
    move-exception v0

    .line 763
    const/4 v13, 0x0

    .line 764
    goto :goto_23

    .line 765
    :cond_1e
    const/4 v12, 0x0

    .line 766
    goto/16 :goto_2

    .line 767
    .line 768
    :goto_23
    :try_start_29
    invoke-virtual {v1, v0, v13}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 769
    .line 770
    .line 771
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    .line 772
    .line 773
    .line 774
    goto/16 :goto_17

    .line 775
    .line 776
    :goto_24
    monitor-exit v9

    .line 777
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    .line 778
    :goto_25
    :try_start_2a
    invoke-virtual {v1, v0, v13}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 779
    .line 780
    .line 781
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->x(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 782
    .line 783
    .line 784
    :try_start_2b
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    .line 785
    .line 786
    .line 787
    goto/16 :goto_17

    .line 788
    .line 789
    :goto_26
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 790
    .line 791
    return-object v0

    .line 792
    :catchall_10
    move-exception v0

    .line 793
    :try_start_2c
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 794
    .line 795
    .line 796
    throw v0

    .line 797
    :goto_27
    monitor-exit v9

    .line 798
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    .line 799
    :catchall_11
    move-exception v0

    .line 800
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 801
    .line 802
    .line 803
    throw v0

    .line 804
    :catchall_12
    move-exception v0

    .line 805
    monitor-exit v11

    .line 806
    throw v0
.end method
