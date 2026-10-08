.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObservedScopeMap"
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;

.field public b:Ljava/lang/Object;

.field public c:Landroidx/collection/MutableObjectIntMap;

.field public d:I

.field public final e:Landroidx/collection/MutableScatterMap;

.field public final f:Landroidx/collection/MutableScatterMap;

.field public final g:Landroidx/collection/MutableScatterSet;

.field public final h:Landroidx/compose/runtime/collection/MutableVector;

.field public final i:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

.field public j:Z

.field public k:I

.field public final l:Landroidx/collection/MutableScatterMap;

.field public final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->d:I

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    .line 14
    .line 15
    new-instance p1, Landroidx/collection/MutableScatterMap;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->f:Landroidx/collection/MutableScatterMap;

    .line 21
    .line 22
    new-instance p1, Landroidx/collection/MutableScatterSet;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->g:Landroidx/collection/MutableScatterSet;

    .line 28
    .line 29
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 30
    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    new-array v0, v0, [Landroidx/compose/runtime/DerivedState;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->h:Landroidx/compose/runtime/collection/MutableVector;

    .line 39
    .line 40
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->i:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    .line 46
    .line 47
    invoke-static {}, Landroidx/compose/runtime/collection/ScopeMap;->b()Landroidx/collection/MutableScatterMap;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    .line 52
    .line 53
    new-instance p1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Z
    .locals 44

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->h:Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    const/4 v9, 0x2

    .line 10
    iget-object v15, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    .line 11
    .line 12
    const-wide/16 v16, 0x80

    .line 13
    .line 14
    iget-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    const-wide/16 v18, 0xff

    .line 19
    .line 20
    iget-object v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->g:Landroidx/collection/MutableScatterSet;

    .line 21
    .line 22
    if-eqz v2, :cond_22

    .line 23
    .line 24
    check-cast v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;->j:Landroidx/collection/ScatterSet;

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 31
    .line 32
    array-length v7, v0

    .line 33
    sub-int/2addr v7, v9

    .line 34
    if-ltz v7, :cond_20

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    const/16 v20, 0x7

    .line 38
    .line 39
    const/16 v21, 0x0

    .line 40
    .line 41
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    :goto_0
    aget-wide v10, v0, v8

    .line 47
    .line 48
    const/16 v24, 0x8

    .line 49
    .line 50
    not-long v12, v10

    .line 51
    shl-long v12, v12, v20

    .line 52
    .line 53
    and-long/2addr v12, v10

    .line 54
    and-long v12, v12, v22

    .line 55
    .line 56
    cmp-long v12, v12, v22

    .line 57
    .line 58
    if-eqz v12, :cond_1f

    .line 59
    .line 60
    sub-int v12, v8, v7

    .line 61
    .line 62
    not-int v12, v12

    .line 63
    ushr-int/lit8 v12, v12, 0x1f

    .line 64
    .line 65
    rsub-int/lit8 v12, v12, 0x8

    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    :goto_1
    if-ge v13, v12, :cond_1e

    .line 69
    .line 70
    and-long v26, v10, v18

    .line 71
    .line 72
    cmp-long v26, v26, v16

    .line 73
    .line 74
    if-gez v26, :cond_1d

    .line 75
    .line 76
    shl-int/lit8 v26, v8, 0x3

    .line 77
    .line 78
    add-int v26, v26, v13

    .line 79
    .line 80
    aget-object v14, v2, v26

    .line 81
    .line 82
    instance-of v9, v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 83
    .line 84
    if-eqz v9, :cond_0

    .line 85
    .line 86
    move-object v9, v14

    .line 87
    check-cast v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 88
    .line 89
    move-object/from16 p1, v0

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->h(I)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_1

    .line 97
    .line 98
    goto/16 :goto_14

    .line 99
    .line 100
    :cond_0
    move-object/from16 p1, v0

    .line 101
    .line 102
    :cond_1
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 103
    .line 104
    if-nez v0, :cond_17

    .line 105
    .line 106
    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_17

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 114
    .line 115
    :try_start_0
    invoke-virtual {v15, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_15

    .line 120
    .line 121
    instance-of v9, v0, Landroidx/collection/MutableScatterSet;

    .line 122
    .line 123
    if-eqz v9, :cond_e

    .line 124
    .line 125
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 126
    .line 127
    iget-object v9, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 128
    .line 129
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 130
    .line 131
    move-object/from16 v28, v2

    .line 132
    .line 133
    array-length v2, v0

    .line 134
    const/16 v26, 0x2

    .line 135
    .line 136
    add-int/lit8 v2, v2, -0x2

    .line 137
    .line 138
    if-ltz v2, :cond_16

    .line 139
    .line 140
    move-object/from16 v29, v0

    .line 141
    .line 142
    move-wide/from16 v30, v10

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    move-object v11, v9

    .line 146
    :goto_2
    aget-wide v9, v29, v0

    .line 147
    .line 148
    move/from16 v32, v7

    .line 149
    .line 150
    move/from16 v33, v8

    .line 151
    .line 152
    not-long v7, v9

    .line 153
    shl-long v7, v7, v20

    .line 154
    .line 155
    and-long/2addr v7, v9

    .line 156
    and-long v7, v7, v22

    .line 157
    .line 158
    cmp-long v7, v7, v22

    .line 159
    .line 160
    if-eqz v7, :cond_c

    .line 161
    .line 162
    sub-int v7, v0, v2

    .line 163
    .line 164
    not-int v7, v7

    .line 165
    ushr-int/lit8 v7, v7, 0x1f

    .line 166
    .line 167
    rsub-int/lit8 v7, v7, 0x8

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    :goto_3
    if-ge v8, v7, :cond_b

    .line 171
    .line 172
    and-long v34, v9, v18

    .line 173
    .line 174
    cmp-long v34, v34, v16

    .line 175
    .line 176
    if-gez v34, :cond_9

    .line 177
    .line 178
    shl-int/lit8 v34, v0, 0x3

    .line 179
    .line 180
    add-int v34, v34, v8

    .line 181
    .line 182
    aget-object v34, v11, v34

    .line 183
    .line 184
    move/from16 v35, v8

    .line 185
    .line 186
    move-object/from16 v8, v34

    .line 187
    .line 188
    check-cast v8, Landroidx/compose/runtime/DerivedState;

    .line 189
    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-wide/from16 v36, v9

    .line 194
    .line 195
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    if-nez v10, :cond_2

    .line 204
    .line 205
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    :cond_2
    move-object/from16 v34, v11

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    const/4 v2, 0x0

    .line 214
    goto/16 :goto_f

    .line 215
    .line 216
    :goto_4
    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState;->g()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    iget-object v11, v11, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    .line 221
    .line 222
    invoke-interface {v10, v11, v9}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-nez v9, :cond_7

    .line 227
    .line 228
    invoke-virtual {v5, v8}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    if-eqz v8, :cond_a

    .line 233
    .line 234
    instance-of v9, v8, Landroidx/collection/MutableScatterSet;

    .line 235
    .line 236
    if-eqz v9, :cond_6

    .line 237
    .line 238
    check-cast v8, Landroidx/collection/MutableScatterSet;

    .line 239
    .line 240
    iget-object v9, v8, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 241
    .line 242
    iget-object v8, v8, Landroidx/collection/ScatterSet;->a:[J

    .line 243
    .line 244
    array-length v10, v8

    .line 245
    const/16 v26, 0x2

    .line 246
    .line 247
    add-int/lit8 v10, v10, -0x2

    .line 248
    .line 249
    if-ltz v10, :cond_a

    .line 250
    .line 251
    move-object/from16 v39, v8

    .line 252
    .line 253
    move-object/from16 v38, v9

    .line 254
    .line 255
    const/4 v11, 0x0

    .line 256
    :goto_5
    aget-wide v8, v39, v11

    .line 257
    .line 258
    move/from16 v40, v12

    .line 259
    .line 260
    move/from16 v41, v13

    .line 261
    .line 262
    not-long v12, v8

    .line 263
    shl-long v12, v12, v20

    .line 264
    .line 265
    and-long/2addr v12, v8

    .line 266
    and-long v12, v12, v22

    .line 267
    .line 268
    cmp-long v12, v12, v22

    .line 269
    .line 270
    if-eqz v12, :cond_5

    .line 271
    .line 272
    sub-int v12, v11, v10

    .line 273
    .line 274
    not-int v12, v12

    .line 275
    ushr-int/lit8 v12, v12, 0x1f

    .line 276
    .line 277
    rsub-int/lit8 v12, v12, 0x8

    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    :goto_6
    if-ge v13, v12, :cond_4

    .line 281
    .line 282
    and-long v42, v8, v18

    .line 283
    .line 284
    cmp-long v42, v42, v16

    .line 285
    .line 286
    if-gez v42, :cond_3

    .line 287
    .line 288
    shl-int/lit8 v21, v11, 0x3

    .line 289
    .line 290
    add-int v21, v21, v13

    .line 291
    .line 292
    move-wide/from16 v42, v8

    .line 293
    .line 294
    aget-object v8, v38, v21

    .line 295
    .line 296
    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    const/16 v21, 0x1

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_3
    move-wide/from16 v42, v8

    .line 303
    .line 304
    :goto_7
    shr-long v8, v42, v24

    .line 305
    .line 306
    add-int/lit8 v13, v13, 0x1

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_4
    move/from16 v8, v24

    .line 310
    .line 311
    if-ne v12, v8, :cond_8

    .line 312
    .line 313
    :cond_5
    if-eq v11, v10, :cond_8

    .line 314
    .line 315
    add-int/lit8 v11, v11, 0x1

    .line 316
    .line 317
    move/from16 v12, v40

    .line 318
    .line 319
    move/from16 v13, v41

    .line 320
    .line 321
    const/16 v24, 0x8

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_6
    move/from16 v40, v12

    .line 325
    .line 326
    move/from16 v41, v13

    .line 327
    .line 328
    invoke-virtual {v6, v8}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    const/16 v21, 0x1

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_7
    move/from16 v40, v12

    .line 335
    .line 336
    move/from16 v41, v13

    .line 337
    .line 338
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    :cond_8
    :goto_8
    const/16 v8, 0x8

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_9
    move/from16 v35, v8

    .line 345
    .line 346
    move-wide/from16 v36, v9

    .line 347
    .line 348
    move-object/from16 v34, v11

    .line 349
    .line 350
    :cond_a
    move/from16 v40, v12

    .line 351
    .line 352
    move/from16 v41, v13

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :goto_9
    shr-long v9, v36, v8

    .line 356
    .line 357
    add-int/lit8 v11, v35, 0x1

    .line 358
    .line 359
    move/from16 v24, v8

    .line 360
    .line 361
    move v8, v11

    .line 362
    move-object/from16 v11, v34

    .line 363
    .line 364
    move/from16 v12, v40

    .line 365
    .line 366
    move/from16 v13, v41

    .line 367
    .line 368
    goto/16 :goto_3

    .line 369
    .line 370
    :cond_b
    move-object/from16 v34, v11

    .line 371
    .line 372
    move/from16 v40, v12

    .line 373
    .line 374
    move/from16 v41, v13

    .line 375
    .line 376
    move/from16 v8, v24

    .line 377
    .line 378
    if-ne v7, v8, :cond_d

    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_c
    move-object/from16 v34, v11

    .line 382
    .line 383
    move/from16 v40, v12

    .line 384
    .line 385
    move/from16 v41, v13

    .line 386
    .line 387
    :goto_a
    if-eq v0, v2, :cond_d

    .line 388
    .line 389
    add-int/lit8 v0, v0, 0x1

    .line 390
    .line 391
    move/from16 v7, v32

    .line 392
    .line 393
    move/from16 v8, v33

    .line 394
    .line 395
    move-object/from16 v11, v34

    .line 396
    .line 397
    move/from16 v12, v40

    .line 398
    .line 399
    move/from16 v13, v41

    .line 400
    .line 401
    const/16 v24, 0x8

    .line 402
    .line 403
    goto/16 :goto_2

    .line 404
    .line 405
    :cond_d
    :goto_b
    const/4 v2, 0x0

    .line 406
    goto/16 :goto_e

    .line 407
    .line 408
    :cond_e
    move-object/from16 v28, v2

    .line 409
    .line 410
    move/from16 v32, v7

    .line 411
    .line 412
    move/from16 v33, v8

    .line 413
    .line 414
    move-wide/from16 v30, v10

    .line 415
    .line 416
    move/from16 v40, v12

    .line 417
    .line 418
    move/from16 v41, v13

    .line 419
    .line 420
    check-cast v0, Landroidx/compose/runtime/DerivedState;

    .line 421
    .line 422
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    if-nez v7, :cond_f

    .line 431
    .line 432
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    :cond_f
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->g()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    iget-object v8, v8, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    .line 441
    .line 442
    invoke-interface {v7, v8, v2}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-nez v2, :cond_14

    .line 447
    .line 448
    invoke-virtual {v5, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    if-eqz v0, :cond_d

    .line 453
    .line 454
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    .line 455
    .line 456
    if-eqz v2, :cond_13

    .line 457
    .line 458
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 459
    .line 460
    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 461
    .line 462
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 463
    .line 464
    array-length v7, v0

    .line 465
    const/16 v26, 0x2

    .line 466
    .line 467
    add-int/lit8 v7, v7, -0x2

    .line 468
    .line 469
    if-ltz v7, :cond_d

    .line 470
    .line 471
    const/4 v8, 0x0

    .line 472
    :goto_c
    aget-wide v9, v0, v8

    .line 473
    .line 474
    not-long v11, v9

    .line 475
    shl-long v11, v11, v20

    .line 476
    .line 477
    and-long/2addr v11, v9

    .line 478
    and-long v11, v11, v22

    .line 479
    .line 480
    cmp-long v11, v11, v22

    .line 481
    .line 482
    if-eqz v11, :cond_12

    .line 483
    .line 484
    sub-int v11, v8, v7

    .line 485
    .line 486
    not-int v11, v11

    .line 487
    ushr-int/lit8 v11, v11, 0x1f

    .line 488
    .line 489
    const/16 v24, 0x8

    .line 490
    .line 491
    rsub-int/lit8 v12, v11, 0x8

    .line 492
    .line 493
    const/4 v11, 0x0

    .line 494
    :goto_d
    if-ge v11, v12, :cond_11

    .line 495
    .line 496
    and-long v34, v9, v18

    .line 497
    .line 498
    cmp-long v13, v34, v16

    .line 499
    .line 500
    if-gez v13, :cond_10

    .line 501
    .line 502
    shl-int/lit8 v13, v8, 0x3

    .line 503
    .line 504
    add-int/2addr v13, v11

    .line 505
    aget-object v13, v2, v13

    .line 506
    .line 507
    invoke-virtual {v6, v13}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    const/16 v21, 0x1

    .line 511
    .line 512
    :cond_10
    const/16 v13, 0x8

    .line 513
    .line 514
    shr-long/2addr v9, v13

    .line 515
    add-int/lit8 v11, v11, 0x1

    .line 516
    .line 517
    goto :goto_d

    .line 518
    :cond_11
    const/16 v13, 0x8

    .line 519
    .line 520
    if-ne v12, v13, :cond_d

    .line 521
    .line 522
    :cond_12
    if-eq v8, v7, :cond_d

    .line 523
    .line 524
    add-int/lit8 v8, v8, 0x1

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_13
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    const/16 v21, 0x1

    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_14
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    .line 535
    .line 536
    goto/16 :goto_b

    .line 537
    .line 538
    :cond_15
    move-object/from16 v28, v2

    .line 539
    .line 540
    :cond_16
    move/from16 v32, v7

    .line 541
    .line 542
    move/from16 v33, v8

    .line 543
    .line 544
    move-wide/from16 v30, v10

    .line 545
    .line 546
    move/from16 v40, v12

    .line 547
    .line 548
    move/from16 v41, v13

    .line 549
    .line 550
    goto/16 :goto_b

    .line 551
    .line 552
    :goto_e
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 553
    .line 554
    goto :goto_10

    .line 555
    :goto_f
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 556
    .line 557
    throw v0

    .line 558
    :cond_17
    move-object/from16 v28, v2

    .line 559
    .line 560
    move/from16 v32, v7

    .line 561
    .line 562
    move/from16 v33, v8

    .line 563
    .line 564
    move-wide/from16 v30, v10

    .line 565
    .line 566
    move/from16 v40, v12

    .line 567
    .line 568
    move/from16 v41, v13

    .line 569
    .line 570
    :goto_10
    invoke-virtual {v5, v14}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    if-eqz v0, :cond_1c

    .line 575
    .line 576
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    .line 577
    .line 578
    if-eqz v2, :cond_1b

    .line 579
    .line 580
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 581
    .line 582
    iget-object v2, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 583
    .line 584
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 585
    .line 586
    array-length v7, v0

    .line 587
    const/16 v26, 0x2

    .line 588
    .line 589
    add-int/lit8 v7, v7, -0x2

    .line 590
    .line 591
    if-ltz v7, :cond_1c

    .line 592
    .line 593
    const/4 v8, 0x0

    .line 594
    :goto_11
    aget-wide v9, v0, v8

    .line 595
    .line 596
    not-long v11, v9

    .line 597
    shl-long v11, v11, v20

    .line 598
    .line 599
    and-long/2addr v11, v9

    .line 600
    and-long v11, v11, v22

    .line 601
    .line 602
    cmp-long v11, v11, v22

    .line 603
    .line 604
    if-eqz v11, :cond_1a

    .line 605
    .line 606
    sub-int v11, v8, v7

    .line 607
    .line 608
    not-int v11, v11

    .line 609
    ushr-int/lit8 v11, v11, 0x1f

    .line 610
    .line 611
    const/16 v24, 0x8

    .line 612
    .line 613
    rsub-int/lit8 v12, v11, 0x8

    .line 614
    .line 615
    move-wide v10, v9

    .line 616
    const/4 v9, 0x0

    .line 617
    :goto_12
    if-ge v9, v12, :cond_19

    .line 618
    .line 619
    and-long v13, v10, v18

    .line 620
    .line 621
    cmp-long v13, v13, v16

    .line 622
    .line 623
    if-gez v13, :cond_18

    .line 624
    .line 625
    shl-int/lit8 v13, v8, 0x3

    .line 626
    .line 627
    add-int/2addr v13, v9

    .line 628
    aget-object v13, v2, v13

    .line 629
    .line 630
    invoke-virtual {v6, v13}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    const/16 v21, 0x1

    .line 634
    .line 635
    :cond_18
    const/16 v13, 0x8

    .line 636
    .line 637
    shr-long/2addr v10, v13

    .line 638
    add-int/lit8 v9, v9, 0x1

    .line 639
    .line 640
    goto :goto_12

    .line 641
    :cond_19
    const/16 v13, 0x8

    .line 642
    .line 643
    if-ne v12, v13, :cond_1c

    .line 644
    .line 645
    :cond_1a
    if-eq v8, v7, :cond_1c

    .line 646
    .line 647
    add-int/lit8 v8, v8, 0x1

    .line 648
    .line 649
    goto :goto_11

    .line 650
    :cond_1b
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    const/16 v21, 0x1

    .line 654
    .line 655
    :cond_1c
    :goto_13
    const/16 v8, 0x8

    .line 656
    .line 657
    goto :goto_15

    .line 658
    :cond_1d
    move-object/from16 p1, v0

    .line 659
    .line 660
    :goto_14
    move-object/from16 v28, v2

    .line 661
    .line 662
    move/from16 v32, v7

    .line 663
    .line 664
    move/from16 v33, v8

    .line 665
    .line 666
    move-wide/from16 v30, v10

    .line 667
    .line 668
    move/from16 v40, v12

    .line 669
    .line 670
    move/from16 v41, v13

    .line 671
    .line 672
    goto :goto_13

    .line 673
    :goto_15
    shr-long v10, v30, v8

    .line 674
    .line 675
    add-int/lit8 v13, v41, 0x1

    .line 676
    .line 677
    move-object/from16 v0, p1

    .line 678
    .line 679
    move/from16 v24, v8

    .line 680
    .line 681
    move-object/from16 v2, v28

    .line 682
    .line 683
    move/from16 v7, v32

    .line 684
    .line 685
    move/from16 v8, v33

    .line 686
    .line 687
    move/from16 v12, v40

    .line 688
    .line 689
    const/4 v9, 0x2

    .line 690
    goto/16 :goto_1

    .line 691
    .line 692
    :cond_1e
    move-object/from16 p1, v0

    .line 693
    .line 694
    move-object/from16 v28, v2

    .line 695
    .line 696
    move/from16 v32, v7

    .line 697
    .line 698
    move/from16 v33, v8

    .line 699
    .line 700
    move/from16 v8, v24

    .line 701
    .line 702
    if-ne v12, v8, :cond_21

    .line 703
    .line 704
    move/from16 v7, v32

    .line 705
    .line 706
    move/from16 v14, v33

    .line 707
    .line 708
    goto :goto_16

    .line 709
    :cond_1f
    move-object/from16 p1, v0

    .line 710
    .line 711
    move-object/from16 v28, v2

    .line 712
    .line 713
    move v14, v8

    .line 714
    :goto_16
    if-eq v14, v7, :cond_21

    .line 715
    .line 716
    add-int/lit8 v8, v14, 0x1

    .line 717
    .line 718
    move-object/from16 v0, p1

    .line 719
    .line 720
    move-object/from16 v2, v28

    .line 721
    .line 722
    const/4 v9, 0x2

    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :cond_20
    const/16 v20, 0x7

    .line 726
    .line 727
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    const/16 v21, 0x0

    .line 733
    .line 734
    :cond_21
    :goto_17
    move-object v8, v1

    .line 735
    const/4 v1, 0x0

    .line 736
    goto/16 :goto_31

    .line 737
    .line 738
    :cond_22
    const/16 v20, 0x7

    .line 739
    .line 740
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    check-cast v0, Ljava/lang/Iterable;

    .line 746
    .line 747
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    const/4 v2, 0x0

    .line 752
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 753
    .line 754
    .line 755
    move-result v7

    .line 756
    if-eqz v7, :cond_43

    .line 757
    .line 758
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v7

    .line 762
    instance-of v8, v7, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 763
    .line 764
    if-eqz v8, :cond_23

    .line 765
    .line 766
    move-object v8, v7

    .line 767
    check-cast v8, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 768
    .line 769
    const/4 v9, 0x2

    .line 770
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->h(I)Z

    .line 771
    .line 772
    .line 773
    move-result v8

    .line 774
    if-nez v8, :cond_23

    .line 775
    .line 776
    move-object/from16 p1, v0

    .line 777
    .line 778
    move-object v8, v1

    .line 779
    const/4 v1, 0x0

    .line 780
    goto/16 :goto_30

    .line 781
    .line 782
    :cond_23
    iget-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 783
    .line 784
    if-nez v8, :cond_3d

    .line 785
    .line 786
    invoke-virtual {v15, v7}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move-result v8

    .line 790
    if-eqz v8, :cond_3d

    .line 791
    .line 792
    const/4 v8, 0x1

    .line 793
    iput-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 794
    .line 795
    :try_start_1
    invoke-virtual {v15, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 799
    if-eqz v9, :cond_3c

    .line 800
    .line 801
    :try_start_2
    instance-of v10, v9, Landroidx/collection/MutableScatterSet;

    .line 802
    .line 803
    if-eqz v10, :cond_32

    .line 804
    .line 805
    check-cast v9, Landroidx/collection/MutableScatterSet;

    .line 806
    .line 807
    iget-object v10, v9, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 808
    .line 809
    iget-object v9, v9, Landroidx/collection/ScatterSet;->a:[J

    .line 810
    .line 811
    array-length v11, v9

    .line 812
    const/16 v26, 0x2

    .line 813
    .line 814
    add-int/lit8 v11, v11, -0x2

    .line 815
    .line 816
    if-ltz v11, :cond_3c

    .line 817
    .line 818
    move v12, v2

    .line 819
    const/4 v2, 0x0

    .line 820
    :goto_19
    aget-wide v13, v9, v2

    .line 821
    .line 822
    move-object/from16 v21, v9

    .line 823
    .line 824
    not-long v8, v13

    .line 825
    shl-long v8, v8, v20

    .line 826
    .line 827
    and-long/2addr v8, v13

    .line 828
    and-long v8, v8, v22

    .line 829
    .line 830
    cmp-long v8, v8, v22

    .line 831
    .line 832
    if-eqz v8, :cond_30

    .line 833
    .line 834
    sub-int v8, v2, v11

    .line 835
    .line 836
    not-int v8, v8

    .line 837
    ushr-int/lit8 v8, v8, 0x1f

    .line 838
    .line 839
    const/16 v24, 0x8

    .line 840
    .line 841
    rsub-int/lit8 v8, v8, 0x8

    .line 842
    .line 843
    const/4 v9, 0x0

    .line 844
    :goto_1a
    if-ge v9, v8, :cond_2e

    .line 845
    .line 846
    and-long v28, v13, v18

    .line 847
    .line 848
    cmp-long v28, v28, v16

    .line 849
    .line 850
    if-gez v28, :cond_2d

    .line 851
    .line 852
    shl-int/lit8 v28, v2, 0x3

    .line 853
    .line 854
    add-int v28, v28, v9

    .line 855
    .line 856
    aget-object v28, v10, v28

    .line 857
    .line 858
    move-object/from16 p1, v0

    .line 859
    .line 860
    move-object/from16 v0, v28

    .line 861
    .line 862
    check-cast v0, Landroidx/compose/runtime/DerivedState;

    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    .line 866
    .line 867
    move/from16 v28, v9

    .line 868
    .line 869
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v9

    .line 873
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 874
    .line 875
    .line 876
    move-result-object v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 877
    if-nez v29, :cond_24

    .line 878
    .line 879
    :try_start_3
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 880
    .line 881
    .line 882
    move-result-object v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 883
    :cond_24
    move-object/from16 v30, v10

    .line 884
    .line 885
    move-object/from16 v10, v29

    .line 886
    .line 887
    move/from16 v29, v12

    .line 888
    .line 889
    goto :goto_1b

    .line 890
    :catchall_1
    move-exception v0

    .line 891
    move-object v8, v1

    .line 892
    const/4 v1, 0x0

    .line 893
    goto/16 :goto_2c

    .line 894
    .line 895
    :goto_1b
    :try_start_4
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->g()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 896
    .line 897
    .line 898
    move-result-object v12

    .line 899
    iget-object v12, v12, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    .line 900
    .line 901
    invoke-interface {v10, v12, v9}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    move-result v9

    .line 905
    if-nez v9, :cond_2c

    .line 906
    .line 907
    invoke-virtual {v5, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    if-eqz v0, :cond_2a

    .line 912
    .line 913
    instance-of v9, v0, Landroidx/collection/MutableScatterSet;

    .line 914
    .line 915
    if-eqz v9, :cond_29

    .line 916
    .line 917
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 918
    .line 919
    iget-object v9, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 920
    .line 921
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 922
    .line 923
    array-length v10, v0

    .line 924
    const/16 v26, 0x2

    .line 925
    .line 926
    add-int/lit8 v10, v10, -0x2

    .line 927
    .line 928
    move-wide/from16 v31, v13

    .line 929
    .line 930
    if-ltz v10, :cond_28

    .line 931
    .line 932
    const/4 v12, 0x0

    .line 933
    :goto_1c
    aget-wide v13, v0, v12

    .line 934
    .line 935
    move-object/from16 v33, v0

    .line 936
    .line 937
    not-long v0, v13

    .line 938
    shl-long v0, v0, v20

    .line 939
    .line 940
    and-long/2addr v0, v13

    .line 941
    and-long v0, v0, v22

    .line 942
    .line 943
    cmp-long v0, v0, v22

    .line 944
    .line 945
    if-eqz v0, :cond_27

    .line 946
    .line 947
    sub-int v0, v12, v10

    .line 948
    .line 949
    not-int v0, v0

    .line 950
    ushr-int/lit8 v0, v0, 0x1f

    .line 951
    .line 952
    const/16 v24, 0x8

    .line 953
    .line 954
    rsub-int/lit8 v0, v0, 0x8

    .line 955
    .line 956
    const/4 v1, 0x0

    .line 957
    :goto_1d
    if-ge v1, v0, :cond_26

    .line 958
    .line 959
    and-long v34, v13, v18

    .line 960
    .line 961
    cmp-long v34, v34, v16

    .line 962
    .line 963
    if-gez v34, :cond_25

    .line 964
    .line 965
    shl-int/lit8 v29, v12, 0x3

    .line 966
    .line 967
    add-int v29, v29, v1

    .line 968
    .line 969
    move/from16 v34, v1

    .line 970
    .line 971
    aget-object v1, v9, v29

    .line 972
    .line 973
    invoke-virtual {v6, v1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    const/16 v29, 0x1

    .line 977
    .line 978
    :goto_1e
    const/16 v1, 0x8

    .line 979
    .line 980
    goto :goto_1f

    .line 981
    :catchall_2
    move-exception v0

    .line 982
    const/4 v1, 0x0

    .line 983
    move-object/from16 v8, p0

    .line 984
    .line 985
    goto/16 :goto_2c

    .line 986
    .line 987
    :cond_25
    move/from16 v34, v1

    .line 988
    .line 989
    goto :goto_1e

    .line 990
    :goto_1f
    shr-long/2addr v13, v1

    .line 991
    add-int/lit8 v24, v34, 0x1

    .line 992
    .line 993
    move/from16 v1, v24

    .line 994
    .line 995
    goto :goto_1d

    .line 996
    :cond_26
    const/16 v1, 0x8

    .line 997
    .line 998
    if-ne v0, v1, :cond_2b

    .line 999
    .line 1000
    :cond_27
    if-eq v12, v10, :cond_28

    .line 1001
    .line 1002
    add-int/lit8 v12, v12, 0x1

    .line 1003
    .line 1004
    move-object/from16 v1, p0

    .line 1005
    .line 1006
    move-object/from16 v0, v33

    .line 1007
    .line 1008
    goto :goto_1c

    .line 1009
    :cond_28
    move/from16 v12, v29

    .line 1010
    .line 1011
    move v0, v12

    .line 1012
    goto :goto_20

    .line 1013
    :cond_29
    move-wide/from16 v31, v13

    .line 1014
    .line 1015
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 1016
    .line 1017
    .line 1018
    const/4 v0, 0x1

    .line 1019
    goto :goto_20

    .line 1020
    :cond_2a
    move-wide/from16 v31, v13

    .line 1021
    .line 1022
    :cond_2b
    move/from16 v0, v29

    .line 1023
    .line 1024
    :goto_20
    move v12, v0

    .line 1025
    goto :goto_21

    .line 1026
    :cond_2c
    move-wide/from16 v31, v13

    .line 1027
    .line 1028
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    move/from16 v12, v29

    .line 1032
    .line 1033
    :goto_21
    const/16 v13, 0x8

    .line 1034
    .line 1035
    goto :goto_22

    .line 1036
    :cond_2d
    move-object/from16 p1, v0

    .line 1037
    .line 1038
    move/from16 v28, v9

    .line 1039
    .line 1040
    move-object/from16 v30, v10

    .line 1041
    .line 1042
    move/from16 v29, v12

    .line 1043
    .line 1044
    move-wide/from16 v31, v13

    .line 1045
    .line 1046
    goto :goto_21

    .line 1047
    :goto_22
    shr-long v0, v31, v13

    .line 1048
    .line 1049
    add-int/lit8 v9, v28, 0x1

    .line 1050
    .line 1051
    move-wide v13, v0

    .line 1052
    move-object/from16 v10, v30

    .line 1053
    .line 1054
    move-object/from16 v1, p0

    .line 1055
    .line 1056
    move-object/from16 v0, p1

    .line 1057
    .line 1058
    goto/16 :goto_1a

    .line 1059
    .line 1060
    :cond_2e
    move-object/from16 p1, v0

    .line 1061
    .line 1062
    move-object/from16 v30, v10

    .line 1063
    .line 1064
    move/from16 v29, v12

    .line 1065
    .line 1066
    const/16 v13, 0x8

    .line 1067
    .line 1068
    if-ne v8, v13, :cond_2f

    .line 1069
    .line 1070
    move/from16 v12, v29

    .line 1071
    .line 1072
    goto :goto_23

    .line 1073
    :cond_2f
    move/from16 v2, v29

    .line 1074
    .line 1075
    goto :goto_24

    .line 1076
    :cond_30
    move-object/from16 p1, v0

    .line 1077
    .line 1078
    move-object/from16 v30, v10

    .line 1079
    .line 1080
    :goto_23
    if-eq v2, v11, :cond_31

    .line 1081
    .line 1082
    add-int/lit8 v2, v2, 0x1

    .line 1083
    .line 1084
    const/4 v8, 0x1

    .line 1085
    move-object/from16 v1, p0

    .line 1086
    .line 1087
    move-object/from16 v0, p1

    .line 1088
    .line 1089
    move-object/from16 v9, v21

    .line 1090
    .line 1091
    move-object/from16 v10, v30

    .line 1092
    .line 1093
    goto/16 :goto_19

    .line 1094
    .line 1095
    :cond_31
    move v2, v12

    .line 1096
    :goto_24
    const/4 v1, 0x0

    .line 1097
    move-object/from16 v8, p0

    .line 1098
    .line 1099
    goto/16 :goto_2a

    .line 1100
    .line 1101
    :cond_32
    move-object/from16 p1, v0

    .line 1102
    .line 1103
    check-cast v9, Landroidx/compose/runtime/DerivedState;

    .line 1104
    .line 1105
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->a()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    if-nez v1, :cond_33

    .line 1114
    .line 1115
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->m()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    :cond_33
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->g()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v8

    .line 1123
    iget-object v8, v8, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    .line 1124
    .line 1125
    invoke-interface {v1, v8, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    if-nez v0, :cond_3b

    .line 1130
    .line 1131
    invoke-virtual {v5, v9}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    if-eqz v0, :cond_3a

    .line 1136
    .line 1137
    instance-of v1, v0, Landroidx/collection/MutableScatterSet;

    .line 1138
    .line 1139
    if-eqz v1, :cond_39

    .line 1140
    .line 1141
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 1142
    .line 1143
    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 1144
    .line 1145
    iget-object v0, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 1146
    .line 1147
    array-length v8, v0

    .line 1148
    const/16 v26, 0x2

    .line 1149
    .line 1150
    add-int/lit8 v8, v8, -0x2

    .line 1151
    .line 1152
    if-ltz v8, :cond_3a

    .line 1153
    .line 1154
    move v9, v2

    .line 1155
    const/4 v2, 0x0

    .line 1156
    :goto_25
    aget-wide v10, v0, v2

    .line 1157
    .line 1158
    not-long v12, v10

    .line 1159
    shl-long v12, v12, v20

    .line 1160
    .line 1161
    and-long/2addr v12, v10

    .line 1162
    and-long v12, v12, v22

    .line 1163
    .line 1164
    cmp-long v12, v12, v22

    .line 1165
    .line 1166
    if-eqz v12, :cond_37

    .line 1167
    .line 1168
    sub-int v12, v2, v8

    .line 1169
    .line 1170
    not-int v12, v12

    .line 1171
    ushr-int/lit8 v12, v12, 0x1f

    .line 1172
    .line 1173
    const/16 v24, 0x8

    .line 1174
    .line 1175
    rsub-int/lit8 v12, v12, 0x8

    .line 1176
    .line 1177
    move-wide v13, v10

    .line 1178
    const/4 v10, 0x0

    .line 1179
    :goto_26
    if-ge v10, v12, :cond_35

    .line 1180
    .line 1181
    and-long v28, v13, v18

    .line 1182
    .line 1183
    cmp-long v11, v28, v16

    .line 1184
    .line 1185
    if-gez v11, :cond_34

    .line 1186
    .line 1187
    shl-int/lit8 v9, v2, 0x3

    .line 1188
    .line 1189
    add-int/2addr v9, v10

    .line 1190
    aget-object v9, v1, v9

    .line 1191
    .line 1192
    invoke-virtual {v6, v9}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 1193
    .line 1194
    .line 1195
    const/4 v9, 0x1

    .line 1196
    :cond_34
    const/16 v11, 0x8

    .line 1197
    .line 1198
    shr-long/2addr v13, v11

    .line 1199
    add-int/lit8 v10, v10, 0x1

    .line 1200
    .line 1201
    goto :goto_26

    .line 1202
    :cond_35
    const/16 v11, 0x8

    .line 1203
    .line 1204
    if-ne v12, v11, :cond_36

    .line 1205
    .line 1206
    goto :goto_27

    .line 1207
    :cond_36
    move v0, v9

    .line 1208
    goto :goto_29

    .line 1209
    :cond_37
    :goto_27
    if-eq v2, v8, :cond_38

    .line 1210
    .line 1211
    add-int/lit8 v2, v2, 0x1

    .line 1212
    .line 1213
    goto :goto_25

    .line 1214
    :cond_38
    move v2, v9

    .line 1215
    goto :goto_28

    .line 1216
    :cond_39
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    const/4 v0, 0x1

    .line 1220
    goto :goto_29

    .line 1221
    :cond_3a
    :goto_28
    move v0, v2

    .line 1222
    :goto_29
    move v2, v0

    .line 1223
    goto :goto_24

    .line 1224
    :cond_3b
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_24

    .line 1228
    .line 1229
    :cond_3c
    move-object/from16 p1, v0

    .line 1230
    .line 1231
    goto/16 :goto_24

    .line 1232
    .line 1233
    :goto_2a
    iput-boolean v1, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 1234
    .line 1235
    :goto_2b
    move v0, v2

    .line 1236
    goto :goto_2d

    .line 1237
    :goto_2c
    iput-boolean v1, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 1238
    .line 1239
    throw v0

    .line 1240
    :cond_3d
    move-object/from16 p1, v0

    .line 1241
    .line 1242
    move-object v8, v1

    .line 1243
    const/4 v1, 0x0

    .line 1244
    goto :goto_2b

    .line 1245
    :goto_2d
    invoke-virtual {v5, v7}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v2

    .line 1249
    if-eqz v2, :cond_42

    .line 1250
    .line 1251
    instance-of v7, v2, Landroidx/collection/MutableScatterSet;

    .line 1252
    .line 1253
    if-eqz v7, :cond_41

    .line 1254
    .line 1255
    check-cast v2, Landroidx/collection/MutableScatterSet;

    .line 1256
    .line 1257
    iget-object v7, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 1258
    .line 1259
    iget-object v2, v2, Landroidx/collection/ScatterSet;->a:[J

    .line 1260
    .line 1261
    array-length v9, v2

    .line 1262
    const/16 v26, 0x2

    .line 1263
    .line 1264
    add-int/lit8 v9, v9, -0x2

    .line 1265
    .line 1266
    if-ltz v9, :cond_42

    .line 1267
    .line 1268
    move v10, v1

    .line 1269
    :goto_2e
    aget-wide v11, v2, v10

    .line 1270
    .line 1271
    not-long v13, v11

    .line 1272
    shl-long v13, v13, v20

    .line 1273
    .line 1274
    and-long/2addr v13, v11

    .line 1275
    and-long v13, v13, v22

    .line 1276
    .line 1277
    cmp-long v13, v13, v22

    .line 1278
    .line 1279
    if-eqz v13, :cond_40

    .line 1280
    .line 1281
    sub-int v13, v10, v9

    .line 1282
    .line 1283
    not-int v13, v13

    .line 1284
    ushr-int/lit8 v13, v13, 0x1f

    .line 1285
    .line 1286
    const/16 v24, 0x8

    .line 1287
    .line 1288
    rsub-int/lit8 v13, v13, 0x8

    .line 1289
    .line 1290
    move-wide/from16 v27, v11

    .line 1291
    .line 1292
    move v11, v1

    .line 1293
    :goto_2f
    if-ge v11, v13, :cond_3f

    .line 1294
    .line 1295
    and-long v29, v27, v18

    .line 1296
    .line 1297
    cmp-long v12, v29, v16

    .line 1298
    .line 1299
    if-gez v12, :cond_3e

    .line 1300
    .line 1301
    shl-int/lit8 v0, v10, 0x3

    .line 1302
    .line 1303
    add-int/2addr v0, v11

    .line 1304
    aget-object v0, v7, v0

    .line 1305
    .line 1306
    invoke-virtual {v6, v0}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 1307
    .line 1308
    .line 1309
    const/4 v0, 0x1

    .line 1310
    :cond_3e
    const/16 v12, 0x8

    .line 1311
    .line 1312
    shr-long v27, v27, v12

    .line 1313
    .line 1314
    add-int/lit8 v11, v11, 0x1

    .line 1315
    .line 1316
    goto :goto_2f

    .line 1317
    :cond_3f
    const/16 v12, 0x8

    .line 1318
    .line 1319
    if-ne v13, v12, :cond_42

    .line 1320
    .line 1321
    :cond_40
    if-eq v10, v9, :cond_42

    .line 1322
    .line 1323
    add-int/lit8 v10, v10, 0x1

    .line 1324
    .line 1325
    goto :goto_2e

    .line 1326
    :cond_41
    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 1327
    .line 1328
    .line 1329
    const/4 v0, 0x1

    .line 1330
    :cond_42
    move v2, v0

    .line 1331
    :goto_30
    move-object/from16 v0, p1

    .line 1332
    .line 1333
    move-object v1, v8

    .line 1334
    goto/16 :goto_18

    .line 1335
    .line 1336
    :cond_43
    move/from16 v21, v2

    .line 1337
    .line 1338
    goto/16 :goto_17

    .line 1339
    .line 1340
    :goto_31
    iget-boolean v0, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->j:Z

    .line 1341
    .line 1342
    if-nez v0, :cond_4e

    .line 1343
    .line 1344
    iget v0, v3, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 1345
    .line 1346
    if-eqz v0, :cond_4e

    .line 1347
    .line 1348
    iget-object v2, v3, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 1349
    .line 1350
    move v4, v1

    .line 1351
    :goto_32
    if-ge v4, v0, :cond_4d

    .line 1352
    .line 1353
    aget-object v6, v2, v4

    .line 1354
    .line 1355
    check-cast v6, Landroidx/compose/runtime/DerivedState;

    .line 1356
    .line 1357
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v7

    .line 1361
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->g()J

    .line 1362
    .line 1363
    .line 1364
    move-result-wide v9

    .line 1365
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 1366
    .line 1367
    .line 1368
    move-result v7

    .line 1369
    invoke-virtual {v5, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v9

    .line 1373
    if-eqz v9, :cond_4b

    .line 1374
    .line 1375
    instance-of v10, v9, Landroidx/collection/MutableScatterSet;

    .line 1376
    .line 1377
    iget-object v11, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->f:Landroidx/collection/MutableScatterMap;

    .line 1378
    .line 1379
    if-eqz v10, :cond_49

    .line 1380
    .line 1381
    check-cast v9, Landroidx/collection/MutableScatterSet;

    .line 1382
    .line 1383
    iget-object v10, v9, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 1384
    .line 1385
    iget-object v9, v9, Landroidx/collection/ScatterSet;->a:[J

    .line 1386
    .line 1387
    array-length v12, v9

    .line 1388
    const/16 v26, 0x2

    .line 1389
    .line 1390
    add-int/lit8 v12, v12, -0x2

    .line 1391
    .line 1392
    if-ltz v12, :cond_48

    .line 1393
    .line 1394
    move v13, v1

    .line 1395
    :goto_33
    aget-wide v14, v9, v13

    .line 1396
    .line 1397
    move-object/from16 v25, v2

    .line 1398
    .line 1399
    not-long v1, v14

    .line 1400
    shl-long v1, v1, v20

    .line 1401
    .line 1402
    and-long/2addr v1, v14

    .line 1403
    and-long v1, v1, v22

    .line 1404
    .line 1405
    cmp-long v1, v1, v22

    .line 1406
    .line 1407
    if-eqz v1, :cond_47

    .line 1408
    .line 1409
    sub-int v1, v13, v12

    .line 1410
    .line 1411
    not-int v1, v1

    .line 1412
    ushr-int/lit8 v1, v1, 0x1f

    .line 1413
    .line 1414
    const/16 v24, 0x8

    .line 1415
    .line 1416
    rsub-int/lit8 v1, v1, 0x8

    .line 1417
    .line 1418
    const/4 v2, 0x0

    .line 1419
    :goto_34
    if-ge v2, v1, :cond_46

    .line 1420
    .line 1421
    and-long v28, v14, v18

    .line 1422
    .line 1423
    cmp-long v28, v28, v16

    .line 1424
    .line 1425
    if-gez v28, :cond_45

    .line 1426
    .line 1427
    shl-int/lit8 v28, v13, 0x3

    .line 1428
    .line 1429
    add-int v28, v28, v2

    .line 1430
    .line 1431
    move/from16 v29, v0

    .line 1432
    .line 1433
    aget-object v0, v10, v28

    .line 1434
    .line 1435
    invoke-virtual {v11, v0}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v28

    .line 1439
    check-cast v28, Landroidx/collection/MutableObjectIntMap;

    .line 1440
    .line 1441
    move/from16 v30, v2

    .line 1442
    .line 1443
    if-nez v28, :cond_44

    .line 1444
    .line 1445
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    .line 1446
    .line 1447
    invoke-direct {v2}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v11, v0, v2}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1451
    .line 1452
    .line 1453
    goto :goto_35

    .line 1454
    :cond_44
    move-object/from16 v2, v28

    .line 1455
    .line 1456
    :goto_35
    invoke-virtual {v8, v6, v7, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->b(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    .line 1457
    .line 1458
    .line 1459
    :goto_36
    const/16 v0, 0x8

    .line 1460
    .line 1461
    goto :goto_37

    .line 1462
    :cond_45
    move/from16 v29, v0

    .line 1463
    .line 1464
    move/from16 v30, v2

    .line 1465
    .line 1466
    goto :goto_36

    .line 1467
    :goto_37
    shr-long/2addr v14, v0

    .line 1468
    add-int/lit8 v2, v30, 0x1

    .line 1469
    .line 1470
    move/from16 v0, v29

    .line 1471
    .line 1472
    goto :goto_34

    .line 1473
    :cond_46
    move/from16 v29, v0

    .line 1474
    .line 1475
    const/16 v0, 0x8

    .line 1476
    .line 1477
    if-ne v1, v0, :cond_4c

    .line 1478
    .line 1479
    goto :goto_38

    .line 1480
    :cond_47
    move/from16 v29, v0

    .line 1481
    .line 1482
    const/16 v0, 0x8

    .line 1483
    .line 1484
    :goto_38
    if-eq v13, v12, :cond_4c

    .line 1485
    .line 1486
    add-int/lit8 v13, v13, 0x1

    .line 1487
    .line 1488
    move-object/from16 v2, v25

    .line 1489
    .line 1490
    move/from16 v0, v29

    .line 1491
    .line 1492
    const/4 v1, 0x0

    .line 1493
    goto :goto_33

    .line 1494
    :cond_48
    move/from16 v29, v0

    .line 1495
    .line 1496
    move-object/from16 v25, v2

    .line 1497
    .line 1498
    const/16 v0, 0x8

    .line 1499
    .line 1500
    goto :goto_39

    .line 1501
    :cond_49
    move/from16 v29, v0

    .line 1502
    .line 1503
    move-object/from16 v25, v2

    .line 1504
    .line 1505
    const/16 v0, 0x8

    .line 1506
    .line 1507
    const/16 v26, 0x2

    .line 1508
    .line 1509
    invoke-virtual {v11, v9}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v1

    .line 1513
    check-cast v1, Landroidx/collection/MutableObjectIntMap;

    .line 1514
    .line 1515
    if-nez v1, :cond_4a

    .line 1516
    .line 1517
    new-instance v1, Landroidx/collection/MutableObjectIntMap;

    .line 1518
    .line 1519
    invoke-direct {v1}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v11, v9, v1}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1523
    .line 1524
    .line 1525
    :cond_4a
    invoke-virtual {v8, v6, v7, v9, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->b(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    .line 1526
    .line 1527
    .line 1528
    goto :goto_39

    .line 1529
    :cond_4b
    move/from16 v29, v0

    .line 1530
    .line 1531
    move-object/from16 v25, v2

    .line 1532
    .line 1533
    const/16 v0, 0x8

    .line 1534
    .line 1535
    const/16 v26, 0x2

    .line 1536
    .line 1537
    :cond_4c
    :goto_39
    add-int/lit8 v4, v4, 0x1

    .line 1538
    .line 1539
    move-object/from16 v2, v25

    .line 1540
    .line 1541
    move/from16 v0, v29

    .line 1542
    .line 1543
    const/4 v1, 0x0

    .line 1544
    goto/16 :goto_32

    .line 1545
    .line 1546
    :cond_4d
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 1547
    .line 1548
    .line 1549
    :cond_4e
    return v21
.end method

.method public final b(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->k:I

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v3, v1}, Landroidx/collection/MutableObjectIntMap;->d(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-gez v4, :cond_1

    .line 20
    .line 21
    not-int v4, v4

    .line 22
    const/4 v6, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v6, v3, Landroidx/collection/ObjectIntMap;->c:[I

    .line 25
    .line 26
    aget v6, v6, v4

    .line 27
    .line 28
    :goto_0
    iget-object v7, v3, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v1, v7, v4

    .line 31
    .line 32
    iget-object v3, v3, Landroidx/collection/ObjectIntMap;->c:[I

    .line 33
    .line 34
    aput v2, v3, v4

    .line 35
    .line 36
    instance-of v3, v1, Landroidx/compose/runtime/DerivedState;

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    if-eqz v3, :cond_6

    .line 40
    .line 41
    if-eq v6, v2, :cond_6

    .line 42
    .line 43
    move-object v2, v1

    .line 44
    check-cast v2, Landroidx/compose/runtime/DerivedState;

    .line 45
    .line 46
    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState;->g()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object v7, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->f:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v2, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->e:Landroidx/collection/ObjectIntMap;

    .line 58
    .line 59
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    .line 60
    .line 61
    invoke-static {v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->d(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v7, v2, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->a:[J

    .line 67
    .line 68
    array-length v8, v2

    .line 69
    sub-int/2addr v8, v4

    .line 70
    if-ltz v8, :cond_6

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    :goto_1
    aget-wide v11, v2, v10

    .line 74
    .line 75
    not-long v13, v11

    .line 76
    const/4 v15, 0x7

    .line 77
    shl-long/2addr v13, v15

    .line 78
    and-long/2addr v13, v11

    .line 79
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    and-long/2addr v13, v15

    .line 85
    cmp-long v13, v13, v15

    .line 86
    .line 87
    if-eqz v13, :cond_5

    .line 88
    .line 89
    sub-int v13, v10, v8

    .line 90
    .line 91
    not-int v13, v13

    .line 92
    ushr-int/lit8 v13, v13, 0x1f

    .line 93
    .line 94
    const/16 v14, 0x8

    .line 95
    .line 96
    rsub-int/lit8 v13, v13, 0x8

    .line 97
    .line 98
    const/4 v15, 0x0

    .line 99
    :goto_2
    if-ge v15, v13, :cond_4

    .line 100
    .line 101
    const-wide/16 v16, 0xff

    .line 102
    .line 103
    and-long v16, v11, v16

    .line 104
    .line 105
    const-wide/16 v18, 0x80

    .line 106
    .line 107
    cmp-long v16, v16, v18

    .line 108
    .line 109
    if-gez v16, :cond_3

    .line 110
    .line 111
    shl-int/lit8 v16, v10, 0x3

    .line 112
    .line 113
    add-int v16, v16, v15

    .line 114
    .line 115
    aget-object v16, v7, v16

    .line 116
    .line 117
    move-object/from16 v9, v16

    .line 118
    .line 119
    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    .line 120
    .line 121
    instance-of v5, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 122
    .line 123
    if-eqz v5, :cond_2

    .line 124
    .line 125
    move-object v5, v9

    .line 126
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 127
    .line 128
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->i(I)V

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-static {v3, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    shr-long/2addr v11, v14

    .line 135
    add-int/lit8 v15, v15, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    if-ne v13, v14, :cond_6

    .line 139
    .line 140
    :cond_5
    if-eq v10, v8, :cond_6

    .line 141
    .line 142
    add-int/lit8 v10, v10, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    const/4 v2, -0x1

    .line 146
    if-ne v6, v2, :cond_8

    .line 147
    .line 148
    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 149
    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    move-object v2, v1

    .line 153
    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 154
    .line 155
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->i(I)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    .line 159
    .line 160
    move-object/from16 v2, p3

    .line 161
    .line 162
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->a(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->e:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->c(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroidx/collection/ScatterMap;->c(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->l:Landroidx/collection/MutableScatterMap;

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->d(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->m:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final d(Lwc;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->f:Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/collection/ScatterMap;->a:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    if-ltz v3, :cond_9

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    aget-wide v6, v2, v5

    .line 14
    .line 15
    not-long v8, v6

    .line 16
    const/4 v10, 0x7

    .line 17
    shl-long/2addr v8, v10

    .line 18
    and-long/2addr v8, v6

    .line 19
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v8, v11

    .line 25
    cmp-long v8, v8, v11

    .line 26
    .line 27
    if-eqz v8, :cond_8

    .line 28
    .line 29
    sub-int v8, v5, v3

    .line 30
    .line 31
    not-int v8, v8

    .line 32
    ushr-int/lit8 v8, v8, 0x1f

    .line 33
    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    rsub-int/lit8 v8, v8, 0x8

    .line 37
    .line 38
    const/4 v13, 0x0

    .line 39
    :goto_1
    if-ge v13, v8, :cond_7

    .line 40
    .line 41
    const-wide/16 v14, 0xff

    .line 42
    .line 43
    and-long v16, v6, v14

    .line 44
    .line 45
    const-wide/16 v18, 0x80

    .line 46
    .line 47
    cmp-long v16, v16, v18

    .line 48
    .line 49
    if-gez v16, :cond_6

    .line 50
    .line 51
    shl-int/lit8 v16, v5, 0x3

    .line 52
    .line 53
    add-int v4, v16, v13

    .line 54
    .line 55
    move/from16 v16, v10

    .line 56
    .line 57
    iget-object v10, v1, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    aget-object v10, v10, v4

    .line 60
    .line 61
    move-wide/from16 v20, v11

    .line 62
    .line 63
    iget-object v11, v1, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 64
    .line 65
    aget-object v11, v11, v4

    .line 66
    .line 67
    check-cast v11, Landroidx/collection/MutableObjectIntMap;

    .line 68
    .line 69
    move-object/from16 v12, p1

    .line 70
    .line 71
    invoke-virtual {v12, v10}, Lwc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v22

    .line 75
    check-cast v22, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v23

    .line 81
    if-eqz v23, :cond_3

    .line 82
    .line 83
    move-wide/from16 v23, v14

    .line 84
    .line 85
    iget-object v14, v11, Landroidx/collection/ObjectIntMap;->b:[Ljava/lang/Object;

    .line 86
    .line 87
    iget-object v15, v11, Landroidx/collection/ObjectIntMap;->c:[I

    .line 88
    .line 89
    iget-object v11, v11, Landroidx/collection/ObjectIntMap;->a:[J

    .line 90
    .line 91
    move/from16 v25, v9

    .line 92
    .line 93
    array-length v9, v11

    .line 94
    add-int/lit8 v9, v9, -0x2

    .line 95
    .line 96
    if-ltz v9, :cond_3

    .line 97
    .line 98
    move-object/from16 v26, v2

    .line 99
    .line 100
    move-wide/from16 v27, v6

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_2
    aget-wide v6, v11, v2

    .line 104
    .line 105
    move-object/from16 v29, v11

    .line 106
    .line 107
    not-long v11, v6

    .line 108
    shl-long v11, v11, v16

    .line 109
    .line 110
    and-long/2addr v11, v6

    .line 111
    and-long v11, v11, v20

    .line 112
    .line 113
    cmp-long v11, v11, v20

    .line 114
    .line 115
    if-eqz v11, :cond_2

    .line 116
    .line 117
    sub-int v11, v2, v9

    .line 118
    .line 119
    not-int v11, v11

    .line 120
    ushr-int/lit8 v11, v11, 0x1f

    .line 121
    .line 122
    rsub-int/lit8 v11, v11, 0x8

    .line 123
    .line 124
    const/4 v12, 0x0

    .line 125
    :goto_3
    if-ge v12, v11, :cond_1

    .line 126
    .line 127
    and-long v30, v6, v23

    .line 128
    .line 129
    cmp-long v30, v30, v18

    .line 130
    .line 131
    if-gez v30, :cond_0

    .line 132
    .line 133
    shl-int/lit8 v30, v2, 0x3

    .line 134
    .line 135
    add-int v30, v30, v12

    .line 136
    .line 137
    move-wide/from16 v31, v6

    .line 138
    .line 139
    aget-object v6, v14, v30

    .line 140
    .line 141
    aget v7, v15, v30

    .line 142
    .line 143
    invoke-virtual {v0, v10, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_0
    move-wide/from16 v31, v6

    .line 148
    .line 149
    :goto_4
    shr-long v6, v31, v25

    .line 150
    .line 151
    add-int/lit8 v12, v12, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_1
    move/from16 v6, v25

    .line 155
    .line 156
    if-ne v11, v6, :cond_4

    .line 157
    .line 158
    :cond_2
    if-eq v2, v9, :cond_4

    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    move-object/from16 v12, p1

    .line 163
    .line 164
    move-object/from16 v11, v29

    .line 165
    .line 166
    const/16 v25, 0x8

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_3
    move-object/from16 v26, v2

    .line 170
    .line 171
    move-wide/from16 v27, v6

    .line 172
    .line 173
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->n(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_5
    const/16 v6, 0x8

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_6
    move-object/from16 v26, v2

    .line 186
    .line 187
    move-wide/from16 v27, v6

    .line 188
    .line 189
    move/from16 v16, v10

    .line 190
    .line 191
    move-wide/from16 v20, v11

    .line 192
    .line 193
    move v6, v9

    .line 194
    :goto_5
    shr-long v9, v27, v6

    .line 195
    .line 196
    add-int/lit8 v13, v13, 0x1

    .line 197
    .line 198
    move-wide v11, v9

    .line 199
    move v9, v6

    .line 200
    move-wide v6, v11

    .line 201
    move/from16 v10, v16

    .line 202
    .line 203
    move-wide/from16 v11, v20

    .line 204
    .line 205
    move-object/from16 v2, v26

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_7
    move-object/from16 v26, v2

    .line 210
    .line 211
    move v6, v9

    .line 212
    if-ne v8, v6, :cond_9

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_8
    move-object/from16 v26, v2

    .line 216
    .line 217
    :goto_6
    if-eq v5, v3, :cond_9

    .line 218
    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    move-object/from16 v2, v26

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_9
    return-void
.end method
