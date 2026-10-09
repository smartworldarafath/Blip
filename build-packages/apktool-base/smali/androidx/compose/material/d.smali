.class public final synthetic Landroidx/compose/material/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:I

.field public final synthetic n:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic o:Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

.field public final synthetic p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/d;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/d;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/d;->l:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material/d;->m:I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/d;->n:Landroidx/compose/foundation/layout/WindowInsets;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material/d;->o:Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/d;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material/d;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/ui/unit/Constraints;

    .line 10
    .line 11
    sget v3, Landroidx/compose/material/ScaffoldKt;->b:F

    .line 12
    .line 13
    iget-wide v4, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 14
    .line 15
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-wide v5, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 20
    .line 21
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 22
    .line 23
    .line 24
    move-result v14

    .line 25
    iget-wide v5, v2, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    const/16 v11, 0xa

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    sget-object v2, Landroidx/compose/material/ScaffoldLayoutContent;->j:Landroidx/compose/material/ScaffoldLayoutContent;

    .line 38
    .line 39
    iget-object v7, v0, Landroidx/compose/material/d;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    invoke-interface {v1, v2, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v9, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    move v10, v8

    .line 59
    :goto_0
    if-ge v10, v7, :cond_0

    .line 60
    .line 61
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 66
    .line 67
    invoke-interface {v11, v5, v6}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    const/4 v10, 0x1

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    move-object v11, v2

    .line 91
    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 92
    .line 93
    iget v11, v11, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    sub-int/2addr v12, v10

    .line 100
    if-gt v10, v12, :cond_3

    .line 101
    .line 102
    move v13, v10

    .line 103
    :goto_1
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    move-object v7, v15

    .line 108
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 109
    .line 110
    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 111
    .line 112
    if-ge v11, v7, :cond_2

    .line 113
    .line 114
    move v11, v7

    .line 115
    move-object v2, v15

    .line 116
    :cond_2
    if-eq v13, v12, :cond_3

    .line 117
    .line 118
    add-int/lit8 v13, v13, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    :goto_2
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 126
    .line 127
    move v13, v2

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move v13, v8

    .line 130
    :goto_3
    sget-object v2, Landroidx/compose/material/ScaffoldLayoutContent;->l:Landroidx/compose/material/ScaffoldLayoutContent;

    .line 131
    .line 132
    iget-object v7, v0, Landroidx/compose/material/d;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 133
    .line 134
    invoke-interface {v1, v2, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    new-instance v7, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    move v12, v8

    .line 152
    :goto_4
    iget-object v15, v0, Landroidx/compose/material/d;->n:Landroidx/compose/foundation/layout/WindowInsets;

    .line 153
    .line 154
    if-ge v12, v11, :cond_5

    .line 155
    .line 156
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v16

    .line 160
    move/from16 p2, v10

    .line 161
    .line 162
    move-object/from16 v10, v16

    .line 163
    .line 164
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 165
    .line 166
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-interface {v15, v1, v8}, Landroidx/compose/foundation/layout/WindowInsets;->d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    move-object/from16 v17, v2

    .line 175
    .line 176
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v15, v1, v2}, Landroidx/compose/foundation/layout/WindowInsets;->b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-interface {v15, v1}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    neg-int v8, v8

    .line 189
    sub-int/2addr v8, v2

    .line 190
    neg-int v2, v15

    .line 191
    move-object/from16 v22, v9

    .line 192
    .line 193
    invoke-static {v8, v2, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 194
    .line 195
    .line 196
    move-result-wide v8

    .line 197
    invoke-interface {v10, v8, v9}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    add-int/lit8 v12, v12, 0x1

    .line 205
    .line 206
    move/from16 v10, p2

    .line 207
    .line 208
    move-object/from16 v2, v17

    .line 209
    .line 210
    move-object/from16 v9, v22

    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    goto :goto_4

    .line 214
    :cond_5
    move-object/from16 v22, v9

    .line 215
    .line 216
    move/from16 p2, v10

    .line 217
    .line 218
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_6

    .line 223
    .line 224
    const/4 v8, 0x0

    .line 225
    goto :goto_6

    .line 226
    :cond_6
    const/4 v2, 0x0

    .line 227
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    move-object v2, v8

    .line 232
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 233
    .line 234
    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    add-int/lit8 v9, v9, -0x1

    .line 241
    .line 242
    move/from16 v10, p2

    .line 243
    .line 244
    if-gt v10, v9, :cond_9

    .line 245
    .line 246
    move-object v10, v8

    .line 247
    move v8, v2

    .line 248
    const/4 v2, 0x1

    .line 249
    :goto_5
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    move-object v12, v11

    .line 254
    check-cast v12, Landroidx/compose/ui/layout/Placeable;

    .line 255
    .line 256
    iget v12, v12, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 257
    .line 258
    if-ge v8, v12, :cond_7

    .line 259
    .line 260
    move-object v10, v11

    .line 261
    move v8, v12

    .line 262
    :cond_7
    if-eq v2, v9, :cond_8

    .line 263
    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_8
    move-object v8, v10

    .line 268
    :cond_9
    :goto_6
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 269
    .line 270
    if-eqz v8, :cond_a

    .line 271
    .line 272
    iget v2, v8, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_a
    const/4 v2, 0x0

    .line 276
    :goto_7
    sget-object v8, Landroidx/compose/material/ScaffoldLayoutContent;->m:Landroidx/compose/material/ScaffoldLayoutContent;

    .line 277
    .line 278
    iget-object v9, v0, Landroidx/compose/material/d;->l:Lkotlin/jvm/functions/Function2;

    .line 279
    .line 280
    invoke-interface {v1, v8, v9}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    new-instance v12, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    const/4 v10, 0x0

    .line 298
    :goto_8
    if-ge v10, v9, :cond_b

    .line 299
    .line 300
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 305
    .line 306
    move/from16 v17, v2

    .line 307
    .line 308
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-interface {v15, v1, v2}, Landroidx/compose/foundation/layout/WindowInsets;->d(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    move-object/from16 v23, v7

    .line 317
    .line 318
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-interface {v15, v1, v7}, Landroidx/compose/foundation/layout/WindowInsets;->b(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    move/from16 v18, v7

    .line 327
    .line 328
    invoke-interface {v15, v1}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    neg-int v2, v2

    .line 333
    sub-int v2, v2, v18

    .line 334
    .line 335
    neg-int v7, v7

    .line 336
    move-object/from16 v18, v8

    .line 337
    .line 338
    invoke-static {v2, v7, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    .line 339
    .line 340
    .line 341
    move-result-wide v7

    .line 342
    invoke-interface {v11, v7, v8}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    add-int/lit8 v10, v10, 0x1

    .line 350
    .line 351
    move/from16 v2, v17

    .line 352
    .line 353
    move-object/from16 v8, v18

    .line 354
    .line 355
    move-object/from16 v7, v23

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_b
    move/from16 v17, v2

    .line 359
    .line 360
    move-object/from16 v23, v7

    .line 361
    .line 362
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-nez v2, :cond_1a

    .line 367
    .line 368
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_c

    .line 373
    .line 374
    const/4 v7, 0x0

    .line 375
    goto :goto_a

    .line 376
    :cond_c
    const/4 v2, 0x0

    .line 377
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    move-object v2, v7

    .line 382
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 383
    .line 384
    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 385
    .line 386
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    const/4 v10, 0x1

    .line 391
    sub-int/2addr v8, v10

    .line 392
    if-gt v10, v8, :cond_f

    .line 393
    .line 394
    move-object v9, v7

    .line 395
    move v7, v2

    .line 396
    const/4 v2, 0x1

    .line 397
    :goto_9
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v10

    .line 401
    move-object v11, v10

    .line 402
    check-cast v11, Landroidx/compose/ui/layout/Placeable;

    .line 403
    .line 404
    iget v11, v11, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 405
    .line 406
    if-ge v7, v11, :cond_d

    .line 407
    .line 408
    move-object v9, v10

    .line 409
    move v7, v11

    .line 410
    :cond_d
    if-eq v2, v8, :cond_e

    .line 411
    .line 412
    add-int/lit8 v2, v2, 0x1

    .line 413
    .line 414
    goto :goto_9

    .line 415
    :cond_e
    move-object v7, v9

    .line 416
    :cond_f
    :goto_a
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 417
    .line 418
    if-eqz v7, :cond_10

    .line 419
    .line 420
    iget v2, v7, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :cond_10
    const/4 v2, 0x0

    .line 424
    :goto_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    if-eqz v7, :cond_11

    .line 429
    .line 430
    move/from16 v18, v2

    .line 431
    .line 432
    const/4 v8, 0x0

    .line 433
    goto :goto_d

    .line 434
    :cond_11
    const/4 v7, 0x0

    .line 435
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    move-object v7, v8

    .line 440
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 441
    .line 442
    iget v7, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 443
    .line 444
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 445
    .line 446
    .line 447
    move-result v9

    .line 448
    const/4 v10, 0x1

    .line 449
    sub-int/2addr v9, v10

    .line 450
    if-gt v10, v9, :cond_14

    .line 451
    .line 452
    move-object v10, v8

    .line 453
    move v8, v7

    .line 454
    const/4 v7, 0x1

    .line 455
    :goto_c
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    move/from16 v18, v2

    .line 460
    .line 461
    move-object v2, v11

    .line 462
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 463
    .line 464
    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 465
    .line 466
    if-ge v8, v2, :cond_12

    .line 467
    .line 468
    move v8, v2

    .line 469
    move-object v10, v11

    .line 470
    :cond_12
    if-eq v7, v9, :cond_13

    .line 471
    .line 472
    add-int/lit8 v7, v7, 0x1

    .line 473
    .line 474
    move/from16 v2, v18

    .line 475
    .line 476
    goto :goto_c

    .line 477
    :cond_13
    move-object v8, v10

    .line 478
    goto :goto_d

    .line 479
    :cond_14
    move/from16 v18, v2

    .line 480
    .line 481
    :goto_d
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 482
    .line 483
    if-eqz v8, :cond_15

    .line 484
    .line 485
    iget v2, v8, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 486
    .line 487
    goto :goto_e

    .line 488
    :cond_15
    const/4 v2, 0x0

    .line 489
    :goto_e
    if-eqz v18, :cond_1a

    .line 490
    .line 491
    if-eqz v2, :cond_1a

    .line 492
    .line 493
    iget v7, v0, Landroidx/compose/material/d;->m:I

    .line 494
    .line 495
    if-nez v7, :cond_17

    .line 496
    .line 497
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 498
    .line 499
    .line 500
    move-result-object v7

    .line 501
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 502
    .line 503
    if-ne v7, v8, :cond_16

    .line 504
    .line 505
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 506
    .line 507
    .line 508
    move-result v7

    .line 509
    goto :goto_10

    .line 510
    :cond_16
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    :goto_f
    sub-int v7, v4, v7

    .line 515
    .line 516
    sub-int v7, v7, v18

    .line 517
    .line 518
    goto :goto_10

    .line 519
    :cond_17
    const/4 v8, 0x2

    .line 520
    if-ne v7, v8, :cond_19

    .line 521
    .line 522
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 527
    .line 528
    if-ne v7, v8, :cond_18

    .line 529
    .line 530
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    goto :goto_f

    .line 535
    :cond_18
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 536
    .line 537
    .line 538
    move-result v7

    .line 539
    goto :goto_10

    .line 540
    :cond_19
    sub-int v7, v4, v18

    .line 541
    .line 542
    div-int/2addr v7, v8

    .line 543
    :goto_10
    new-instance v8, Landroidx/compose/material/FabPlacement;

    .line 544
    .line 545
    invoke-direct {v8, v7, v2}, Landroidx/compose/material/FabPlacement;-><init>(II)V

    .line 546
    .line 547
    .line 548
    goto :goto_11

    .line 549
    :cond_1a
    const/4 v8, 0x0

    .line 550
    :goto_11
    sget-object v2, Landroidx/compose/material/ScaffoldLayoutContent;->n:Landroidx/compose/material/ScaffoldLayoutContent;

    .line 551
    .line 552
    new-instance v7, Lzc;

    .line 553
    .line 554
    const/4 v9, 0x6

    .line 555
    iget-object v10, v0, Landroidx/compose/material/d;->p:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 556
    .line 557
    invoke-direct {v7, v9, v8, v10}, Lzc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    new-instance v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 561
    .line 562
    const v10, -0x1df5ddbb

    .line 563
    .line 564
    .line 565
    const/4 v11, 0x1

    .line 566
    invoke-direct {v9, v10, v11, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 567
    .line 568
    .line 569
    invoke-interface {v1, v2, v9}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    new-instance v11, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 576
    .line 577
    .line 578
    move-result v7

    .line 579
    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .line 581
    .line 582
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    const/4 v9, 0x0

    .line 587
    :goto_12
    if-ge v9, v7, :cond_1b

    .line 588
    .line 589
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v10

    .line 593
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 594
    .line 595
    invoke-interface {v10, v5, v6}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    add-int/lit8 v9, v9, 0x1

    .line 603
    .line 604
    goto :goto_12

    .line 605
    :cond_1b
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-eqz v2, :cond_1c

    .line 610
    .line 611
    move-wide/from16 v19, v5

    .line 612
    .line 613
    const/4 v7, 0x0

    .line 614
    goto :goto_14

    .line 615
    :cond_1c
    const/4 v2, 0x0

    .line 616
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    move-object v9, v7

    .line 621
    check-cast v9, Landroidx/compose/ui/layout/Placeable;

    .line 622
    .line 623
    iget v9, v9, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 624
    .line 625
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    const/4 v2, 0x1

    .line 630
    sub-int/2addr v10, v2

    .line 631
    if-gt v2, v10, :cond_1e

    .line 632
    .line 633
    const/4 v2, 0x1

    .line 634
    :goto_13
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v18

    .line 638
    move-wide/from16 v19, v5

    .line 639
    .line 640
    move-object/from16 v5, v18

    .line 641
    .line 642
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 643
    .line 644
    iget v5, v5, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 645
    .line 646
    if-ge v9, v5, :cond_1d

    .line 647
    .line 648
    move v9, v5

    .line 649
    move-object/from16 v7, v18

    .line 650
    .line 651
    :cond_1d
    if-eq v2, v10, :cond_1f

    .line 652
    .line 653
    add-int/lit8 v2, v2, 0x1

    .line 654
    .line 655
    move-wide/from16 v5, v19

    .line 656
    .line 657
    goto :goto_13

    .line 658
    :cond_1e
    move-wide/from16 v19, v5

    .line 659
    .line 660
    :cond_1f
    :goto_14
    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    .line 661
    .line 662
    if-eqz v7, :cond_20

    .line 663
    .line 664
    iget v2, v7, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 665
    .line 666
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    goto :goto_15

    .line 671
    :cond_20
    const/4 v2, 0x0

    .line 672
    :goto_15
    if-eqz v8, :cond_22

    .line 673
    .line 674
    iget v5, v8, Landroidx/compose/material/FabPlacement;->b:I

    .line 675
    .line 676
    if-nez v2, :cond_21

    .line 677
    .line 678
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    add-int/2addr v3, v5

    .line 683
    invoke-interface {v15, v1}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    add-int/2addr v5, v3

    .line 688
    goto :goto_16

    .line 689
    :cond_21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    add-int/2addr v6, v5

    .line 694
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    add-int v5, v3, v6

    .line 699
    .line 700
    :goto_16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    goto :goto_17

    .line 705
    :cond_22
    const/4 v7, 0x0

    .line 706
    :goto_17
    if-eqz v17, :cond_25

    .line 707
    .line 708
    if-eqz v7, :cond_23

    .line 709
    .line 710
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    goto :goto_18

    .line 715
    :cond_23
    if-eqz v2, :cond_24

    .line 716
    .line 717
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    goto :goto_18

    .line 722
    :cond_24
    invoke-interface {v15, v1}, Landroidx/compose/foundation/layout/WindowInsets;->c(Landroidx/compose/ui/unit/Density;)I

    .line 723
    .line 724
    .line 725
    move-result v3

    .line 726
    :goto_18
    add-int v3, v17, v3

    .line 727
    .line 728
    goto :goto_19

    .line 729
    :cond_25
    const/4 v3, 0x0

    .line 730
    :goto_19
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->c(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)Landroidx/compose/foundation/layout/PaddingValues;

    .line 731
    .line 732
    .line 733
    move-result-object v5

    .line 734
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    .line 735
    .line 736
    .line 737
    move-result v6

    .line 738
    if-eqz v6, :cond_26

    .line 739
    .line 740
    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    goto :goto_1a

    .line 745
    :cond_26
    const/4 v6, 0x0

    .line 746
    :goto_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v9

    .line 750
    if-nez v9, :cond_28

    .line 751
    .line 752
    if-nez v2, :cond_27

    .line 753
    .line 754
    goto :goto_1b

    .line 755
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 756
    .line 757
    .line 758
    move-result v9

    .line 759
    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->U(I)F

    .line 760
    .line 761
    .line 762
    move-result v9

    .line 763
    goto :goto_1c

    .line 764
    :cond_28
    :goto_1b
    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    .line 765
    .line 766
    .line 767
    move-result v9

    .line 768
    :goto_1c
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 769
    .line 770
    .line 771
    move-result-object v10

    .line 772
    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/PaddingKt;->b(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 773
    .line 774
    .line 775
    move-result v10

    .line 776
    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 777
    .line 778
    .line 779
    move-result-object v15

    .line 780
    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/PaddingKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 781
    .line 782
    .line 783
    move-result v5

    .line 784
    new-instance v15, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 785
    .line 786
    invoke-direct {v15, v10, v6, v5, v9}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 787
    .line 788
    .line 789
    iget-object v5, v0, Landroidx/compose/material/d;->o:Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;

    .line 790
    .line 791
    iget-object v6, v5, Landroidx/compose/material/ScaffoldKt$ScaffoldLayout$contentPadding$1$1;->a:Landroidx/compose/runtime/MutableState;

    .line 792
    .line 793
    check-cast v6, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 794
    .line 795
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    move-wide/from16 v15, v19

    .line 799
    .line 800
    const/4 v6, 0x0

    .line 801
    sub-int v20, v14, v13

    .line 802
    .line 803
    sget-object v9, Landroidx/compose/material/ScaffoldLayoutContent;->k:Landroidx/compose/material/ScaffoldLayoutContent;

    .line 804
    .line 805
    new-instance v10, Lzc;

    .line 806
    .line 807
    const/4 v6, 0x4

    .line 808
    iget-object v0, v0, Landroidx/compose/material/d;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 809
    .line 810
    invoke-direct {v10, v6, v0, v5}, Lzc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 814
    .line 815
    const v5, -0x223ea6ea

    .line 816
    .line 817
    .line 818
    const/4 v6, 0x1

    .line 819
    invoke-direct {v0, v5, v6, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 820
    .line 821
    .line 822
    invoke-interface {v1, v9, v0}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->r(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    move-object v5, v8

    .line 827
    new-instance v8, Ljava/util/ArrayList;

    .line 828
    .line 829
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 830
    .line 831
    .line 832
    move-result v6

    .line 833
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 834
    .line 835
    .line 836
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 837
    .line 838
    .line 839
    move-result v6

    .line 840
    const/4 v9, 0x0

    .line 841
    :goto_1d
    if-ge v9, v6, :cond_29

    .line 842
    .line 843
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v10

    .line 847
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 848
    .line 849
    const/16 v19, 0x0

    .line 850
    .line 851
    const/16 v21, 0x7

    .line 852
    .line 853
    const/16 v17, 0x0

    .line 854
    .line 855
    const/16 v18, 0x0

    .line 856
    .line 857
    move-object/from16 p1, v2

    .line 858
    .line 859
    move/from16 p2, v3

    .line 860
    .line 861
    invoke-static/range {v15 .. v21}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    .line 862
    .line 863
    .line 864
    move-result-wide v2

    .line 865
    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    add-int/lit8 v9, v9, 0x1

    .line 873
    .line 874
    move-object/from16 v2, p1

    .line 875
    .line 876
    move/from16 v3, p2

    .line 877
    .line 878
    goto :goto_1d

    .line 879
    :cond_29
    move-object/from16 p1, v2

    .line 880
    .line 881
    move/from16 p2, v3

    .line 882
    .line 883
    new-instance v0, Lme;

    .line 884
    .line 885
    move-object/from16 v16, p1

    .line 886
    .line 887
    move/from16 v15, p2

    .line 888
    .line 889
    move-object/from16 v17, v5

    .line 890
    .line 891
    move-object/from16 v18, v7

    .line 892
    .line 893
    move-object/from16 v9, v22

    .line 894
    .line 895
    move-object/from16 v10, v23

    .line 896
    .line 897
    move-object v7, v0

    .line 898
    invoke-direct/range {v7 .. v18}, Lme;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIILjava/lang/Integer;Landroidx/compose/material/FabPlacement;Ljava/lang/Integer;)V

    .line 899
    .line 900
    .line 901
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-interface {v1, v4, v14, v0, v7}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    return-object v0
.end method
