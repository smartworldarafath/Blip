.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurer"
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 20

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
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->x:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:[I

    .line 12
    .line 13
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:I

    .line 14
    .line 15
    const/16 v7, 0x8

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-ne v6, v7, :cond_0

    .line 19
    .line 20
    iput v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 21
    .line 22
    iput v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 23
    .line 24
    iput v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    .line 29
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 30
    .line 31
    iget v9, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 32
    .line 33
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 34
    .line 35
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->b:I

    .line 36
    .line 37
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->c:I

    .line 38
    .line 39
    add-int/2addr v11, v12

    .line 40
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 41
    .line 42
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->V:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    move/from16 v16, v8

    .line 49
    .line 50
    const/4 v15, 0x2

    .line 51
    const/4 v8, 0x1

    .line 52
    if-eqz v14, :cond_b

    .line 53
    .line 54
    if-eq v14, v8, :cond_a

    .line 55
    .line 56
    if-eq v14, v15, :cond_4

    .line 57
    .line 58
    const/4 v9, 0x3

    .line 59
    if-eq v14, v9, :cond_1

    .line 60
    .line 61
    move/from16 v19, v15

    .line 62
    .line 63
    move/from16 v9, v16

    .line 64
    .line 65
    move v12, v9

    .line 66
    goto/16 :goto_8

    .line 67
    .line 68
    :cond_1
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    iget v14, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move/from16 v14, v16

    .line 76
    .line 77
    :goto_0
    if-eqz v3, :cond_3

    .line 78
    .line 79
    move/from16 v19, v15

    .line 80
    .line 81
    iget v15, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 82
    .line 83
    add-int/2addr v14, v15

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move/from16 v19, v15

    .line 86
    .line 87
    :goto_1
    add-int/2addr v12, v14

    .line 88
    const/4 v14, -0x1

    .line 89
    invoke-static {v9, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    aput v14, v5, v19

    .line 94
    .line 95
    :goto_2
    move/from16 v12, v16

    .line 96
    .line 97
    goto/16 :goto_8

    .line 98
    .line 99
    :cond_4
    move/from16 v19, v15

    .line 100
    .line 101
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 102
    .line 103
    const/4 v14, -0x2

    .line 104
    invoke-static {v9, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 109
    .line 110
    if-ne v12, v8, :cond_5

    .line 111
    .line 112
    move v12, v8

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    move/from16 v12, v16

    .line 115
    .line 116
    :goto_3
    aput v16, v5, v19

    .line 117
    .line 118
    iget-boolean v14, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->j:Z

    .line 119
    .line 120
    if-eqz v14, :cond_8

    .line 121
    .line 122
    if-eqz v12, :cond_7

    .line 123
    .line 124
    const/16 v18, 0x3

    .line 125
    .line 126
    aget v14, v5, v18

    .line 127
    .line 128
    if-eqz v14, :cond_7

    .line 129
    .line 130
    aget v14, v5, v16

    .line 131
    .line 132
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-ne v14, v15, :cond_6

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    move v14, v8

    .line 140
    goto :goto_5

    .line 141
    :cond_7
    :goto_4
    move/from16 v14, v16

    .line 142
    .line 143
    :goto_5
    if-eqz v12, :cond_9

    .line 144
    .line 145
    if-eqz v14, :cond_8

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    const/high16 v14, 0x40000000    # 2.0f

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_9
    :goto_6
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    const/high16 v14, 0x40000000    # 2.0f

    .line 156
    .line 157
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    goto :goto_2

    .line 162
    :goto_7
    move v12, v8

    .line 163
    goto :goto_8

    .line 164
    :cond_a
    move/from16 v19, v15

    .line 165
    .line 166
    const/high16 v14, 0x40000000    # 2.0f

    .line 167
    .line 168
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 169
    .line 170
    const/4 v15, -0x2

    .line 171
    invoke-static {v9, v12, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    aput v15, v5, v19

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_b
    move/from16 v19, v15

    .line 179
    .line 180
    const/high16 v14, 0x40000000    # 2.0f

    .line 181
    .line 182
    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    aput v9, v5, v19

    .line 187
    .line 188
    move v9, v12

    .line 189
    goto :goto_2

    .line 190
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-eqz v14, :cond_16

    .line 195
    .line 196
    if-eq v14, v8, :cond_15

    .line 197
    .line 198
    move/from16 v10, v19

    .line 199
    .line 200
    if-eq v14, v10, :cond_f

    .line 201
    .line 202
    const/4 v10, 0x3

    .line 203
    if-eq v14, v10, :cond_c

    .line 204
    .line 205
    move/from16 v0, v16

    .line 206
    .line 207
    move v3, v0

    .line 208
    goto/16 :goto_10

    .line 209
    .line 210
    :cond_c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 211
    .line 212
    if-eqz v4, :cond_d

    .line 213
    .line 214
    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 215
    .line 216
    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_d
    move/from16 v4, v16

    .line 220
    .line 221
    :goto_9
    if-eqz v3, :cond_e

    .line 222
    .line 223
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->A:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 224
    .line 225
    iget v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->e:I

    .line 226
    .line 227
    add-int/2addr v4, v3

    .line 228
    :cond_e
    add-int/2addr v11, v4

    .line 229
    const/4 v14, -0x1

    .line 230
    invoke-static {v0, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    const/16 v18, 0x3

    .line 235
    .line 236
    aput v14, v5, v18

    .line 237
    .line 238
    :goto_a
    move/from16 v3, v16

    .line 239
    .line 240
    goto :goto_10

    .line 241
    :cond_f
    const/16 v18, 0x3

    .line 242
    .line 243
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 244
    .line 245
    const/4 v14, -0x2

    .line 246
    invoke-static {v0, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 251
    .line 252
    if-ne v3, v8, :cond_10

    .line 253
    .line 254
    move v3, v8

    .line 255
    goto :goto_b

    .line 256
    :cond_10
    move/from16 v3, v16

    .line 257
    .line 258
    :goto_b
    aput v16, v5, v18

    .line 259
    .line 260
    iget-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->j:Z

    .line 261
    .line 262
    if-eqz v4, :cond_13

    .line 263
    .line 264
    if-eqz v3, :cond_12

    .line 265
    .line 266
    const/16 v19, 0x2

    .line 267
    .line 268
    aget v4, v5, v19

    .line 269
    .line 270
    if-eqz v4, :cond_12

    .line 271
    .line 272
    aget v4, v5, v8

    .line 273
    .line 274
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 275
    .line 276
    .line 277
    move-result v10

    .line 278
    if-ne v4, v10, :cond_11

    .line 279
    .line 280
    goto :goto_c

    .line 281
    :cond_11
    move v4, v8

    .line 282
    goto :goto_d

    .line 283
    :cond_12
    :goto_c
    move/from16 v4, v16

    .line 284
    .line 285
    :goto_d
    if-eqz v3, :cond_14

    .line 286
    .line 287
    if-eqz v4, :cond_13

    .line 288
    .line 289
    goto :goto_e

    .line 290
    :cond_13
    const/high16 v14, 0x40000000    # 2.0f

    .line 291
    .line 292
    goto :goto_f

    .line 293
    :cond_14
    :goto_e
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    const/high16 v14, 0x40000000    # 2.0f

    .line 298
    .line 299
    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    goto :goto_a

    .line 304
    :goto_f
    move v3, v8

    .line 305
    goto :goto_10

    .line 306
    :cond_15
    const/high16 v14, 0x40000000    # 2.0f

    .line 307
    .line 308
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 309
    .line 310
    const/4 v15, -0x2

    .line 311
    invoke-static {v0, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    const/16 v18, 0x3

    .line 316
    .line 317
    aput v15, v5, v18

    .line 318
    .line 319
    goto :goto_f

    .line 320
    :cond_16
    const/high16 v14, 0x40000000    # 2.0f

    .line 321
    .line 322
    const/16 v18, 0x3

    .line 323
    .line 324
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    aput v10, v5, v18

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :goto_10
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->l:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 332
    .line 333
    if-ne v6, v4, :cond_17

    .line 334
    .line 335
    move v10, v8

    .line 336
    goto :goto_11

    .line 337
    :cond_17
    move/from16 v10, v16

    .line 338
    .line 339
    :goto_11
    if-ne v7, v4, :cond_18

    .line 340
    .line 341
    move v4, v8

    .line 342
    goto :goto_12

    .line 343
    :cond_18
    move/from16 v4, v16

    .line 344
    .line 345
    :goto_12
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 346
    .line 347
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->m:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 348
    .line 349
    if-eq v7, v14, :cond_1a

    .line 350
    .line 351
    if-ne v7, v11, :cond_19

    .line 352
    .line 353
    goto :goto_13

    .line 354
    :cond_19
    move/from16 v7, v16

    .line 355
    .line 356
    goto :goto_14

    .line 357
    :cond_1a
    :goto_13
    move v7, v8

    .line 358
    :goto_14
    if-eq v6, v14, :cond_1c

    .line 359
    .line 360
    if-ne v6, v11, :cond_1b

    .line 361
    .line 362
    goto :goto_15

    .line 363
    :cond_1b
    move/from16 v6, v16

    .line 364
    .line 365
    goto :goto_16

    .line 366
    :cond_1c
    :goto_15
    move v6, v8

    .line 367
    :goto_16
    const/4 v11, 0x0

    .line 368
    if-eqz v10, :cond_1d

    .line 369
    .line 370
    iget v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 371
    .line 372
    cmpl-float v14, v14, v11

    .line 373
    .line 374
    if-lez v14, :cond_1d

    .line 375
    .line 376
    move v14, v8

    .line 377
    goto :goto_17

    .line 378
    :cond_1d
    move/from16 v14, v16

    .line 379
    .line 380
    :goto_17
    if-eqz v4, :cond_1e

    .line 381
    .line 382
    iget v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 383
    .line 384
    cmpl-float v11, v15, v11

    .line 385
    .line 386
    if-lez v11, :cond_1e

    .line 387
    .line 388
    move v11, v8

    .line 389
    goto :goto_18

    .line 390
    :cond_1e
    move/from16 v11, v16

    .line 391
    .line 392
    :goto_18
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 393
    .line 394
    .line 395
    move-result-object v15

    .line 396
    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 397
    .line 398
    move/from16 v17, v8

    .line 399
    .line 400
    iget-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->j:Z

    .line 401
    .line 402
    if-nez v8, :cond_21

    .line 403
    .line 404
    if-eqz v10, :cond_21

    .line 405
    .line 406
    iget v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j:I

    .line 407
    .line 408
    if-nez v8, :cond_21

    .line 409
    .line 410
    if-eqz v4, :cond_21

    .line 411
    .line 412
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k:I

    .line 413
    .line 414
    if-eqz v4, :cond_1f

    .line 415
    .line 416
    goto :goto_1a

    .line 417
    :cond_1f
    move/from16 v3, v16

    .line 418
    .line 419
    move v5, v3

    .line 420
    move v10, v5

    .line 421
    :cond_20
    :goto_19
    const/4 v14, -0x1

    .line 422
    goto/16 :goto_20

    .line 423
    .line 424
    :cond_21
    :goto_1a
    invoke-virtual {v13, v9, v0}, Landroid/view/View;->measure(II)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 432
    .line 433
    .line 434
    move-result v8

    .line 435
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 436
    .line 437
    .line 438
    move-result v10

    .line 439
    if-eqz v12, :cond_22

    .line 440
    .line 441
    aput v4, v5, v16

    .line 442
    .line 443
    const/16 v19, 0x2

    .line 444
    .line 445
    aput v8, v5, v19

    .line 446
    .line 447
    goto :goto_1b

    .line 448
    :cond_22
    const/16 v19, 0x2

    .line 449
    .line 450
    aput v16, v5, v16

    .line 451
    .line 452
    aput v16, v5, v19

    .line 453
    .line 454
    :goto_1b
    if-eqz v3, :cond_23

    .line 455
    .line 456
    aput v8, v5, v17

    .line 457
    .line 458
    const/16 v18, 0x3

    .line 459
    .line 460
    aput v4, v5, v18

    .line 461
    .line 462
    goto :goto_1c

    .line 463
    :cond_23
    const/16 v18, 0x3

    .line 464
    .line 465
    aput v16, v5, v17

    .line 466
    .line 467
    aput v16, v5, v18

    .line 468
    .line 469
    :goto_1c
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m:I

    .line 470
    .line 471
    if-lez v3, :cond_24

    .line 472
    .line 473
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    goto :goto_1d

    .line 478
    :cond_24
    move v3, v4

    .line 479
    :goto_1d
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    .line 480
    .line 481
    if-lez v5, :cond_25

    .line 482
    .line 483
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    :cond_25
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->p:I

    .line 488
    .line 489
    if-lez v5, :cond_26

    .line 490
    .line 491
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 492
    .line 493
    .line 494
    move-result v5

    .line 495
    goto :goto_1e

    .line 496
    :cond_26
    move v5, v8

    .line 497
    :goto_1e
    iget v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    .line 498
    .line 499
    if-lez v12, :cond_27

    .line 500
    .line 501
    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    .line 502
    .line 503
    .line 504
    move-result v5

    .line 505
    :cond_27
    const/high16 v12, 0x3f000000    # 0.5f

    .line 506
    .line 507
    if-eqz v14, :cond_28

    .line 508
    .line 509
    if-eqz v7, :cond_28

    .line 510
    .line 511
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 512
    .line 513
    int-to-float v6, v5

    .line 514
    mul-float/2addr v6, v3

    .line 515
    add-float/2addr v6, v12

    .line 516
    float-to-int v3, v6

    .line 517
    goto :goto_1f

    .line 518
    :cond_28
    if-eqz v11, :cond_29

    .line 519
    .line 520
    if-eqz v6, :cond_29

    .line 521
    .line 522
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->M:F

    .line 523
    .line 524
    int-to-float v6, v3

    .line 525
    div-float/2addr v6, v5

    .line 526
    add-float/2addr v6, v12

    .line 527
    float-to-int v5, v6

    .line 528
    :cond_29
    :goto_1f
    if-ne v4, v3, :cond_2a

    .line 529
    .line 530
    if-eq v8, v5, :cond_20

    .line 531
    .line 532
    :cond_2a
    const/high16 v14, 0x40000000    # 2.0f

    .line 533
    .line 534
    if-eq v4, v3, :cond_2b

    .line 535
    .line 536
    invoke-static {v3, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    :cond_2b
    if-eq v8, v5, :cond_2c

    .line 541
    .line 542
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    :cond_2c
    invoke-virtual {v13, v9, v0}, Landroid/view/View;->measure(II)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    .line 558
    .line 559
    .line 560
    move-result v10

    .line 561
    goto/16 :goto_19

    .line 562
    .line 563
    :goto_20
    if-eq v10, v14, :cond_2d

    .line 564
    .line 565
    move/from16 v0, v17

    .line 566
    .line 567
    goto :goto_21

    .line 568
    :cond_2d
    move/from16 v0, v16

    .line 569
    .line 570
    :goto_21
    iget v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 571
    .line 572
    if-ne v3, v4, :cond_2f

    .line 573
    .line 574
    iget v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 575
    .line 576
    if-eq v5, v4, :cond_2e

    .line 577
    .line 578
    goto :goto_22

    .line 579
    :cond_2e
    move/from16 v8, v16

    .line 580
    .line 581
    goto :goto_23

    .line 582
    :cond_2f
    :goto_22
    move/from16 v8, v17

    .line 583
    .line 584
    :goto_23
    iput-boolean v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->i:Z

    .line 585
    .line 586
    iget-boolean v4, v15, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 587
    .line 588
    if-eqz v4, :cond_30

    .line 589
    .line 590
    move/from16 v0, v17

    .line 591
    .line 592
    :cond_30
    if-eqz v0, :cond_31

    .line 593
    .line 594
    const/4 v14, -0x1

    .line 595
    if-eq v10, v14, :cond_31

    .line 596
    .line 597
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    .line 598
    .line 599
    if-eq v1, v10, :cond_31

    .line 600
    .line 601
    move/from16 v1, v17

    .line 602
    .line 603
    iput-boolean v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->i:Z

    .line 604
    .line 605
    :cond_31
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 606
    .line 607
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 608
    .line 609
    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->h:Z

    .line 610
    .line 611
    iput v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 612
    .line 613
    return-void
.end method
