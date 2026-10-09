.class final Lnet/blip/shared/StackLayoutKt$StackLayout$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnet/blip/shared/StackLayoutKt$StackLayout$1$1;->a:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    new-instance v3, Lle;

    .line 24
    .line 25
    const/16 v4, 0x18

    .line 26
    .line 27
    invoke-direct {v3, v4}, Lle;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v0, v1, v2, v4, v3}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    if-le v1, v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v2, v3

    .line 49
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    const/16 v4, 0xa

    .line 52
    .line 53
    move-object/from16 v5, p2

    .line 54
    .line 55
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move v6, v3

    .line 67
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    move-object/from16 v9, p0

    .line 72
    .line 73
    iget v10, v9, Lnet/blip/shared/StackLayoutKt$StackLayout$1$1;->a:F

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    add-int/lit8 v12, v6, 0x1

    .line 83
    .line 84
    if-ltz v6, :cond_3

    .line 85
    .line 86
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    float-to-double v10, v10

    .line 91
    int-to-double v13, v12

    .line 92
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    double-to-float v8, v10

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 99
    .line 100
    :goto_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    int-to-float v6, v6

    .line 105
    mul-float/2addr v6, v8

    .line 106
    invoke-static {v6}, Lkotlin/math/MathKt;->b(F)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    int-to-float v10, v10

    .line 115
    mul-float/2addr v10, v8

    .line 116
    invoke-static {v10}, Lkotlin/math/MathKt;->b(F)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-static {v3, v6, v3, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    invoke-interface {v7, v10, v11}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move v6, v12

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 134
    .line 135
    .line 136
    throw v11

    .line 137
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_c

    .line 146
    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 152
    .line 153
    iget v6, v6, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 154
    .line 155
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_6

    .line 160
    .line 161
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 166
    .line 167
    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 168
    .line 169
    if-ge v6, v7, :cond_5

    .line 170
    .line 171
    move v6, v7

    .line 172
    goto :goto_3

    .line 173
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    move-object v7, v11

    .line 187
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_b

    .line 192
    .line 193
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    add-int/lit8 v14, v3, 0x1

    .line 198
    .line 199
    if-ltz v3, :cond_a

    .line 200
    .line 201
    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    sub-int/2addr v15, v3

    .line 208
    iget v3, v9, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 209
    .line 210
    int-to-float v3, v3

    .line 211
    const/high16 v16, 0x3e800000    # 0.25f

    .line 212
    .line 213
    mul-float v3, v3, v16

    .line 214
    .line 215
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v7, :cond_8

    .line 220
    .line 221
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    div-int v15, v7, v15

    .line 226
    .line 227
    sub-int v15, v7, v15

    .line 228
    .line 229
    if-eqz v2, :cond_7

    .line 230
    .line 231
    const/high16 v16, 0x3f000000    # 0.5f

    .line 232
    .line 233
    mul-float v17, v10, v16

    .line 234
    .line 235
    move-object/from16 p2, v11

    .line 236
    .line 237
    const-wide v18, 0xffffffffL

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    float-to-double v11, v10

    .line 243
    move-object/from16 p0, v9

    .line 244
    .line 245
    int-to-double v8, v14

    .line 246
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 247
    .line 248
    .line 249
    move-result-wide v8

    .line 250
    double-to-float v8, v8

    .line 251
    mul-float v8, v8, v16

    .line 252
    .line 253
    add-float v8, v8, v17

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_7
    move-object/from16 p0, v9

    .line 257
    .line 258
    move-object/from16 p2, v11

    .line 259
    .line 260
    const-wide v18, 0xffffffffL

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    const/high16 v8, 0x3f800000    # 1.0f

    .line 266
    .line 267
    :goto_5
    int-to-float v9, v15

    .line 268
    mul-float/2addr v9, v8

    .line 269
    invoke-static {v9}, Lkotlin/math/MathKt;->b(F)I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    move-object/from16 v9, p0

    .line 274
    .line 275
    iget v11, v9, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 276
    .line 277
    sub-int/2addr v7, v11

    .line 278
    add-int/2addr v7, v3

    .line 279
    if-ge v8, v7, :cond_9

    .line 280
    .line 281
    move v8, v7

    .line 282
    goto :goto_6

    .line 283
    :cond_8
    move-object/from16 p2, v11

    .line 284
    .line 285
    const-wide v18, 0xffffffffL

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    iget v7, v9, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 295
    .line 296
    sub-int v8, v3, v7

    .line 297
    .line 298
    :cond_9
    :goto_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    iget v3, v9, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 303
    .line 304
    sub-int v3, v6, v3

    .line 305
    .line 306
    div-int/lit8 v3, v3, 0x2

    .line 307
    .line 308
    int-to-long v11, v3

    .line 309
    const/16 v3, 0x20

    .line 310
    .line 311
    shl-long/2addr v11, v3

    .line 312
    int-to-long v8, v8

    .line 313
    and-long v8, v8, v18

    .line 314
    .line 315
    or-long/2addr v8, v11

    .line 316
    new-instance v3, Landroidx/compose/ui/unit/IntOffset;

    .line 317
    .line 318
    invoke-direct {v3, v8, v9}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-object/from16 v11, p2

    .line 325
    .line 326
    move v3, v14

    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :cond_a
    move-object/from16 p2, v11

    .line 330
    .line 331
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 332
    .line 333
    .line 334
    throw p2

    .line 335
    :cond_b
    const-wide v18, 0xffffffffL

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    .line 345
    .line 346
    iget-wide v2, v2, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 347
    .line 348
    and-long v2, v2, v18

    .line 349
    .line 350
    long-to-int v2, v2

    .line 351
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 356
    .line 357
    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 358
    .line 359
    add-int/2addr v2, v3

    .line 360
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Landroidx/compose/ui/unit/IntOffset;

    .line 365
    .line 366
    iget-wide v3, v3, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 367
    .line 368
    and-long v3, v3, v18

    .line 369
    .line 370
    long-to-int v3, v3

    .line 371
    sub-int/2addr v2, v3

    .line 372
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    sub-int/2addr v3, v2

    .line 377
    new-instance v4, Lde;

    .line 378
    .line 379
    invoke-direct {v4, v1, v5, v3}, Lde;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 380
    .line 381
    .line 382
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-interface {v0, v6, v2, v1, v4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    return-object v0

    .line 391
    :cond_c
    move-object/from16 p2, v11

    .line 392
    .line 393
    invoke-static {}, Lk8;->o()V

    .line 394
    .line 395
    .line 396
    return-object p2
.end method
