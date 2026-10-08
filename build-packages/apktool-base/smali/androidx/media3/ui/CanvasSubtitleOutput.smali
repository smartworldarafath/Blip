.class final Landroidx/media3/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field public final j:Ljava/util/ArrayList;

.field public k:Ljava/util/List;

.field public l:F

.field public m:Landroidx/media3/ui/CaptionStyleCompat;

.field public n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->k:Ljava/util/List;

    .line 15
    .line 16
    const p1, 0x3d5a511a    # 0.0533f

    .line 17
    .line 18
    .line 19
    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->l:F

    .line 20
    .line 21
    sget-object p1, Landroidx/media3/ui/CaptionStyleCompat;->g:Landroidx/media3/ui/CaptionStyleCompat;

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 24
    .line 25
    const p1, 0x3da3d70a    # 0.08f

    .line 26
    .line 27
    .line 28
    iput p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->n:F

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->k:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 4
    .line 5
    iput p3, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->l:F

    .line 6
    .line 7
    iput p4, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->n:F

    .line 8
    .line 9
    :goto_0
    iget-object p2, p0, Landroidx/media3/ui/CanvasSubtitleOutput;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-ge p3, p4, :cond_0

    .line 20
    .line 21
    new-instance p3, Landroidx/media3/ui/SubtitlePainter;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-direct {p3, p4}, Landroidx/media3/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->k:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_28

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    sub-int/2addr v6, v7

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    sub-int v7, v3, v7

    .line 41
    .line 42
    if-le v7, v5, :cond_3a

    .line 43
    .line 44
    if-gt v6, v4, :cond_1

    .line 45
    .line 46
    goto/16 :goto_28

    .line 47
    .line 48
    :cond_1
    sub-int v8, v7, v5

    .line 49
    .line 50
    iget v9, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->l:F

    .line 51
    .line 52
    const/4 v10, 0x0

    .line 53
    invoke-static {v10, v9, v3, v8}, Landroidx/media3/ui/SubtitleViewUtils;->b(IFII)F

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/4 v11, 0x0

    .line 58
    cmpg-float v12, v9, v11

    .line 59
    .line 60
    if-gtz v12, :cond_2

    .line 61
    .line 62
    goto/16 :goto_28

    .line 63
    .line 64
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    move v13, v10

    .line 69
    :goto_0
    if-ge v13, v12, :cond_3a

    .line 70
    .line 71
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    check-cast v14, Landroidx/media3/common/text/Cue;

    .line 76
    .line 77
    iget v15, v14, Landroidx/media3/common/text/Cue;->p:I

    .line 78
    .line 79
    move/from16 v16, v11

    .line 80
    .line 81
    const/high16 v17, 0x3f800000    # 1.0f

    .line 82
    .line 83
    const/high16 v11, -0x80000000

    .line 84
    .line 85
    if-eq v15, v11, :cond_6

    .line 86
    .line 87
    invoke-virtual {v14}, Landroidx/media3/common/text/Cue;->a()Landroidx/media3/common/text/Cue$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    const v10, -0x800001

    .line 92
    .line 93
    .line 94
    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->h:F

    .line 95
    .line 96
    iput v11, v15, Landroidx/media3/common/text/Cue$Builder;->i:I

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    iput-object v10, v15, Landroidx/media3/common/text/Cue$Builder;->c:Landroid/text/Layout$Alignment;

    .line 100
    .line 101
    iget v11, v14, Landroidx/media3/common/text/Cue;->f:I

    .line 102
    .line 103
    iget v10, v14, Landroidx/media3/common/text/Cue;->e:F

    .line 104
    .line 105
    if-nez v11, :cond_3

    .line 106
    .line 107
    sub-float v10, v17, v10

    .line 108
    .line 109
    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 110
    .line 111
    const/4 v11, 0x0

    .line 112
    iput v11, v15, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const/4 v11, 0x0

    .line 116
    neg-float v10, v10

    .line 117
    sub-float v10, v10, v17

    .line 118
    .line 119
    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->e:F

    .line 120
    .line 121
    const/4 v10, 0x1

    .line 122
    iput v10, v15, Landroidx/media3/common/text/Cue$Builder;->f:I

    .line 123
    .line 124
    :goto_1
    iget v10, v14, Landroidx/media3/common/text/Cue;->g:I

    .line 125
    .line 126
    if-eqz v10, :cond_5

    .line 127
    .line 128
    const/4 v14, 0x2

    .line 129
    if-eq v10, v14, :cond_4

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iput v11, v15, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    const/4 v14, 0x2

    .line 136
    iput v14, v15, Landroidx/media3/common/text/Cue$Builder;->g:I

    .line 137
    .line 138
    :goto_2
    invoke-virtual {v15}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    :cond_6
    iget v10, v14, Landroidx/media3/common/text/Cue;->n:I

    .line 143
    .line 144
    iget v11, v14, Landroidx/media3/common/text/Cue;->o:F

    .line 145
    .line 146
    invoke-static {v10, v11, v3, v8}, Landroidx/media3/ui/SubtitleViewUtils;->b(IFII)F

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    iget-object v11, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->j:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    check-cast v11, Landroidx/media3/ui/SubtitlePainter;

    .line 157
    .line 158
    iget-object v15, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->m:Landroidx/media3/ui/CaptionStyleCompat;

    .line 159
    .line 160
    move-object/from16 v21, v2

    .line 161
    .line 162
    iget v2, v0, Landroidx/media3/ui/CanvasSubtitleOutput;->n:F

    .line 163
    .line 164
    iget-object v0, v11, Landroidx/media3/ui/SubtitlePainter;->f:Landroid/text/TextPaint;

    .line 165
    .line 166
    move/from16 v30, v3

    .line 167
    .line 168
    iget-object v3, v14, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    .line 169
    .line 170
    move/from16 v31, v8

    .line 171
    .line 172
    iget v8, v14, Landroidx/media3/common/text/Cue;->k:F

    .line 173
    .line 174
    move/from16 v32, v12

    .line 175
    .line 176
    iget v12, v14, Landroidx/media3/common/text/Cue;->j:F

    .line 177
    .line 178
    move/from16 v33, v13

    .line 179
    .line 180
    iget v13, v14, Landroidx/media3/common/text/Cue;->i:I

    .line 181
    .line 182
    move/from16 v22, v2

    .line 183
    .line 184
    iget v2, v14, Landroidx/media3/common/text/Cue;->h:F

    .line 185
    .line 186
    move/from16 v23, v10

    .line 187
    .line 188
    iget v10, v14, Landroidx/media3/common/text/Cue;->g:I

    .line 189
    .line 190
    move/from16 v34, v9

    .line 191
    .line 192
    iget v9, v14, Landroidx/media3/common/text/Cue;->f:I

    .line 193
    .line 194
    move-object/from16 v24, v0

    .line 195
    .line 196
    iget v0, v14, Landroidx/media3/common/text/Cue;->e:F

    .line 197
    .line 198
    move/from16 v25, v8

    .line 199
    .line 200
    iget-object v8, v14, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 201
    .line 202
    move/from16 v26, v12

    .line 203
    .line 204
    iget-object v12, v14, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    .line 205
    .line 206
    move/from16 v27, v13

    .line 207
    .line 208
    if-nez v3, :cond_7

    .line 209
    .line 210
    const/4 v13, 0x1

    .line 211
    goto :goto_3

    .line 212
    :cond_7
    const/4 v13, 0x0

    .line 213
    :goto_3
    if-eqz v13, :cond_a

    .line 214
    .line 215
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v28

    .line 219
    if-eqz v28, :cond_8

    .line 220
    .line 221
    :goto_4
    move v3, v7

    .line 222
    const/4 v15, 0x0

    .line 223
    goto/16 :goto_27

    .line 224
    .line 225
    :cond_8
    move/from16 v28, v2

    .line 226
    .line 227
    iget-boolean v2, v14, Landroidx/media3/common/text/Cue;->l:Z

    .line 228
    .line 229
    if-eqz v2, :cond_9

    .line 230
    .line 231
    iget v2, v14, Landroidx/media3/common/text/Cue;->m:I

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_9
    iget v2, v15, Landroidx/media3/ui/CaptionStyleCompat;->c:I

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    move/from16 v28, v2

    .line 238
    .line 239
    const/high16 v2, -0x1000000

    .line 240
    .line 241
    :goto_5
    iget-object v14, v11, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    .line 242
    .line 243
    if-eq v14, v12, :cond_c

    .line 244
    .line 245
    if-eqz v14, :cond_b

    .line 246
    .line 247
    invoke-virtual {v14, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v14

    .line 251
    if-eqz v14, :cond_b

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_b
    move/from16 v29, v10

    .line 255
    .line 256
    goto/16 :goto_7

    .line 257
    .line 258
    :cond_c
    :goto_6
    iget-object v14, v11, Landroidx/media3/ui/SubtitlePainter;->j:Landroid/text/Layout$Alignment;

    .line 259
    .line 260
    invoke-static {v14, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    if-eqz v14, :cond_b

    .line 265
    .line 266
    iget-object v14, v11, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    .line 267
    .line 268
    if-ne v14, v3, :cond_b

    .line 269
    .line 270
    iget v14, v11, Landroidx/media3/ui/SubtitlePainter;->l:F

    .line 271
    .line 272
    cmpl-float v14, v14, v0

    .line 273
    .line 274
    if-nez v14, :cond_b

    .line 275
    .line 276
    iget v14, v11, Landroidx/media3/ui/SubtitlePainter;->m:I

    .line 277
    .line 278
    if-ne v14, v9, :cond_b

    .line 279
    .line 280
    iget v14, v11, Landroidx/media3/ui/SubtitlePainter;->n:I

    .line 281
    .line 282
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    move/from16 v29, v10

    .line 287
    .line 288
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v10

    .line 296
    if-eqz v10, :cond_d

    .line 297
    .line 298
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->o:F

    .line 299
    .line 300
    cmpl-float v10, v10, v28

    .line 301
    .line 302
    if-nez v10, :cond_d

    .line 303
    .line 304
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->p:I

    .line 305
    .line 306
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v10

    .line 318
    if-eqz v10, :cond_d

    .line 319
    .line 320
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->q:F

    .line 321
    .line 322
    cmpl-float v10, v10, v26

    .line 323
    .line 324
    if-nez v10, :cond_d

    .line 325
    .line 326
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->r:F

    .line 327
    .line 328
    cmpl-float v10, v10, v25

    .line 329
    .line 330
    if-nez v10, :cond_d

    .line 331
    .line 332
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->s:I

    .line 333
    .line 334
    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->a:I

    .line 335
    .line 336
    if-ne v10, v14, :cond_d

    .line 337
    .line 338
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->t:I

    .line 339
    .line 340
    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->b:I

    .line 341
    .line 342
    if-ne v10, v14, :cond_d

    .line 343
    .line 344
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->u:I

    .line 345
    .line 346
    if-ne v10, v2, :cond_d

    .line 347
    .line 348
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->w:I

    .line 349
    .line 350
    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->d:I

    .line 351
    .line 352
    if-ne v10, v14, :cond_d

    .line 353
    .line 354
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->v:I

    .line 355
    .line 356
    iget v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->e:I

    .line 357
    .line 358
    if-ne v10, v14, :cond_d

    .line 359
    .line 360
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    iget-object v14, v15, Landroidx/media3/ui/CaptionStyleCompat;->f:Landroid/graphics/Typeface;

    .line 365
    .line 366
    invoke-static {v10, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    if-eqz v10, :cond_d

    .line 371
    .line 372
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->x:F

    .line 373
    .line 374
    cmpl-float v10, v10, v34

    .line 375
    .line 376
    if-nez v10, :cond_d

    .line 377
    .line 378
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->y:F

    .line 379
    .line 380
    cmpl-float v10, v10, v23

    .line 381
    .line 382
    if-nez v10, :cond_d

    .line 383
    .line 384
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->z:F

    .line 385
    .line 386
    cmpl-float v10, v10, v22

    .line 387
    .line 388
    if-nez v10, :cond_d

    .line 389
    .line 390
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->A:I

    .line 391
    .line 392
    if-ne v10, v4, :cond_d

    .line 393
    .line 394
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 395
    .line 396
    if-ne v10, v5, :cond_d

    .line 397
    .line 398
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->C:I

    .line 399
    .line 400
    if-ne v10, v6, :cond_d

    .line 401
    .line 402
    iget v10, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 403
    .line 404
    if-ne v10, v7, :cond_d

    .line 405
    .line 406
    invoke-virtual {v11, v1, v13}, Landroidx/media3/ui/SubtitlePainter;->a(Landroid/graphics/Canvas;Z)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_4

    .line 410
    .line 411
    :cond_d
    :goto_7
    sget-object v10, Landroidx/media3/ui/BidiUtils;->a:Lcom/google/common/base/Splitter;

    .line 412
    .line 413
    if-nez v12, :cond_f

    .line 414
    .line 415
    :cond_e
    move/from16 v40, v6

    .line 416
    .line 417
    move/from16 v36, v7

    .line 418
    .line 419
    move/from16 v35, v13

    .line 420
    .line 421
    goto/16 :goto_12

    .line 422
    .line 423
    :cond_f
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 424
    .line 425
    .line 426
    move-result v10

    .line 427
    const/4 v14, 0x0

    .line 428
    :goto_8
    if-ge v14, v10, :cond_e

    .line 429
    .line 430
    invoke-static {v12, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 431
    .line 432
    .line 433
    move-result v35

    .line 434
    move/from16 v36, v10

    .line 435
    .line 436
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->getDirectionality(I)B

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    move/from16 v37, v14

    .line 441
    .line 442
    const/4 v14, 0x1

    .line 443
    if-eq v10, v14, :cond_11

    .line 444
    .line 445
    const/4 v14, 0x2

    .line 446
    if-eq v10, v14, :cond_11

    .line 447
    .line 448
    const/16 v14, 0x10

    .line 449
    .line 450
    if-eq v10, v14, :cond_11

    .line 451
    .line 452
    const/16 v14, 0x11

    .line 453
    .line 454
    if-ne v10, v14, :cond_10

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_10
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->charCount(I)I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    add-int v14, v10, v37

    .line 462
    .line 463
    move/from16 v10, v36

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_11
    :goto_9
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    instance-of v14, v12, Landroid/text/Spanned;

    .line 471
    .line 472
    if-eqz v14, :cond_12

    .line 473
    .line 474
    move-object v14, v12

    .line 475
    check-cast v14, Landroid/text/Spanned;

    .line 476
    .line 477
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    move/from16 v35, v13

    .line 482
    .line 483
    const-class v13, Ljava/lang/Object;

    .line 484
    .line 485
    move/from16 v36, v7

    .line 486
    .line 487
    const/4 v7, 0x0

    .line 488
    invoke-interface {v14, v7, v1, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    array-length v7, v1

    .line 493
    new-array v7, v7, [I

    .line 494
    .line 495
    array-length v13, v1

    .line 496
    new-array v13, v13, [I

    .line 497
    .line 498
    move-object/from16 v18, v1

    .line 499
    .line 500
    const/4 v1, -0x1

    .line 501
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([II)V

    .line 502
    .line 503
    .line 504
    invoke-static {v13, v1}, Ljava/util/Arrays;->fill([II)V

    .line 505
    .line 506
    .line 507
    move-object/from16 v1, v18

    .line 508
    .line 509
    move-object/from16 v18, v7

    .line 510
    .line 511
    goto :goto_a

    .line 512
    :cond_12
    move/from16 v36, v7

    .line 513
    .line 514
    move/from16 v35, v13

    .line 515
    .line 516
    const/4 v1, 0x0

    .line 517
    const/4 v13, 0x0

    .line 518
    const/4 v14, 0x0

    .line 519
    const/16 v18, 0x0

    .line 520
    .line 521
    :goto_a
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    move-object/from16 v37, v13

    .line 526
    .line 527
    const-string v13, "\r\n"

    .line 528
    .line 529
    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    if-eqz v7, :cond_13

    .line 534
    .line 535
    sget-object v7, Landroidx/media3/ui/BidiUtils;->b:Lcom/google/common/base/Splitter;

    .line 536
    .line 537
    invoke-virtual {v7, v12}, Lcom/google/common/base/Splitter;->c(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    const/4 v12, 0x2

    .line 542
    goto :goto_b

    .line 543
    :cond_13
    sget-object v7, Landroidx/media3/ui/BidiUtils;->a:Lcom/google/common/base/Splitter;

    .line 544
    .line 545
    invoke-virtual {v7, v12}, Lcom/google/common/base/Splitter;->c(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    const/4 v12, 0x1

    .line 550
    :goto_b
    new-instance v13, Ljava/util/ArrayList;

    .line 551
    .line 552
    move-object/from16 v38, v7

    .line 553
    .line 554
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    .line 560
    .line 561
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v7

    .line 565
    move-object/from16 v39, v7

    .line 566
    .line 567
    const/4 v7, 0x0

    .line 568
    const/16 v38, 0x0

    .line 569
    .line 570
    :goto_c
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    .line 572
    .line 573
    move-result v40

    .line 574
    if-eqz v40, :cond_1b

    .line 575
    .line 576
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v40

    .line 580
    move/from16 v41, v12

    .line 581
    .line 582
    move-object/from16 v12, v40

    .line 583
    .line 584
    check-cast v12, Ljava/lang/String;

    .line 585
    .line 586
    move/from16 v40, v6

    .line 587
    .line 588
    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 589
    .line 590
    invoke-virtual {v10, v12, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    if-eqz v1, :cond_1a

    .line 595
    .line 596
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 606
    .line 607
    .line 608
    move-result v42

    .line 609
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 610
    .line 611
    .line 612
    move-result v43

    .line 613
    sub-int v42, v42, v43

    .line 614
    .line 615
    if-lez v42, :cond_14

    .line 616
    .line 617
    add-int/lit8 v38, v38, 0x1

    .line 618
    .line 619
    :cond_14
    move-object/from16 v43, v10

    .line 620
    .line 621
    move-object/from16 v44, v12

    .line 622
    .line 623
    const/4 v10, 0x0

    .line 624
    :goto_d
    array-length v12, v1

    .line 625
    if-ge v10, v12, :cond_18

    .line 626
    .line 627
    aget v12, v18, v10

    .line 628
    .line 629
    if-gez v12, :cond_15

    .line 630
    .line 631
    aget-object v12, v1, v10

    .line 632
    .line 633
    invoke-interface {v14, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 634
    .line 635
    .line 636
    move-result v12

    .line 637
    if-lt v12, v7, :cond_15

    .line 638
    .line 639
    aget-object v12, v1, v10

    .line 640
    .line 641
    invoke-interface {v14, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 642
    .line 643
    .line 644
    move-result v12

    .line 645
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    .line 646
    .line 647
    .line 648
    move-result v45

    .line 649
    move/from16 v46, v10

    .line 650
    .line 651
    add-int v10, v45, v7

    .line 652
    .line 653
    if-ge v12, v10, :cond_16

    .line 654
    .line 655
    aput v38, v18, v46

    .line 656
    .line 657
    goto :goto_e

    .line 658
    :cond_15
    move/from16 v46, v10

    .line 659
    .line 660
    :cond_16
    :goto_e
    aget v10, v37, v46

    .line 661
    .line 662
    if-gez v10, :cond_17

    .line 663
    .line 664
    aget-object v10, v1, v46

    .line 665
    .line 666
    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 667
    .line 668
    .line 669
    move-result v10

    .line 670
    const/16 v20, 0x1

    .line 671
    .line 672
    add-int/lit8 v10, v10, -0x1

    .line 673
    .line 674
    if-lt v10, v7, :cond_17

    .line 675
    .line 676
    aget-object v10, v1, v46

    .line 677
    .line 678
    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 679
    .line 680
    .line 681
    move-result v10

    .line 682
    add-int/lit8 v10, v10, -0x1

    .line 683
    .line 684
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    .line 685
    .line 686
    .line 687
    move-result v12

    .line 688
    add-int/2addr v12, v7

    .line 689
    if-ge v10, v12, :cond_17

    .line 690
    .line 691
    aput v38, v37, v46

    .line 692
    .line 693
    :cond_17
    add-int/lit8 v10, v46, 0x1

    .line 694
    .line 695
    goto :goto_d

    .line 696
    :cond_18
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    .line 697
    .line 698
    .line 699
    move-result v10

    .line 700
    add-int v10, v10, v41

    .line 701
    .line 702
    add-int/2addr v10, v7

    .line 703
    if-lez v42, :cond_19

    .line 704
    .line 705
    add-int/lit8 v38, v38, 0x1

    .line 706
    .line 707
    :cond_19
    move v7, v10

    .line 708
    goto :goto_f

    .line 709
    :cond_1a
    move-object/from16 v43, v10

    .line 710
    .line 711
    :goto_f
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move/from16 v6, v40

    .line 715
    .line 716
    move/from16 v12, v41

    .line 717
    .line 718
    move-object/from16 v10, v43

    .line 719
    .line 720
    goto/16 :goto_c

    .line 721
    .line 722
    :cond_1b
    move/from16 v40, v6

    .line 723
    .line 724
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .line 725
    .line 726
    sget-object v6, Landroidx/media3/ui/BidiUtils;->c:Lcom/google/common/base/Joiner;

    .line 727
    .line 728
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 729
    .line 730
    .line 731
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    new-instance v10, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v6, v10, v7}, Lcom/google/common/base/Joiner;->a(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v6

    .line 747
    invoke-direct {v12, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 748
    .line 749
    .line 750
    if-eqz v1, :cond_1d

    .line 751
    .line 752
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 756
    .line 757
    .line 758
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    const/4 v6, 0x0

    .line 762
    :goto_10
    array-length v7, v1

    .line 763
    if-ge v6, v7, :cond_1d

    .line 764
    .line 765
    aget-object v7, v1, v6

    .line 766
    .line 767
    invoke-interface {v14, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 768
    .line 769
    .line 770
    move-result v7

    .line 771
    aget v10, v18, v6

    .line 772
    .line 773
    add-int/2addr v7, v10

    .line 774
    aget-object v10, v1, v6

    .line 775
    .line 776
    invoke-interface {v14, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 777
    .line 778
    .line 779
    move-result v10

    .line 780
    aget v13, v37, v6

    .line 781
    .line 782
    add-int/2addr v10, v13

    .line 783
    aget-object v13, v1, v6

    .line 784
    .line 785
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 786
    .line 787
    .line 788
    move-result v13

    .line 789
    move-object/from16 v38, v1

    .line 790
    .line 791
    if-ltz v7, :cond_1c

    .line 792
    .line 793
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-ge v7, v1, :cond_1c

    .line 798
    .line 799
    if-ltz v10, :cond_1c

    .line 800
    .line 801
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    if-gt v10, v1, :cond_1c

    .line 806
    .line 807
    aget-object v1, v38, v6

    .line 808
    .line 809
    invoke-virtual {v12, v1, v7, v10, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 810
    .line 811
    .line 812
    move/from16 v39, v6

    .line 813
    .line 814
    goto :goto_11

    .line 815
    :cond_1c
    const-string v1, ",end="

    .line 816
    .line 817
    const-string v13, ",len="

    .line 818
    .line 819
    move/from16 v39, v6

    .line 820
    .line 821
    const-string v6, "Span out of bounds: start="

    .line 822
    .line 823
    invoke-static {v6, v7, v1, v10, v13}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    .line 828
    .line 829
    .line 830
    move-result v6

    .line 831
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    const-string v6, "BidiUtils"

    .line 839
    .line 840
    invoke-static {v6, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    :goto_11
    add-int/lit8 v6, v39, 0x1

    .line 844
    .line 845
    move-object/from16 v1, v38

    .line 846
    .line 847
    goto :goto_10

    .line 848
    :cond_1d
    :goto_12
    iput-object v12, v11, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    .line 849
    .line 850
    iput-object v8, v11, Landroidx/media3/ui/SubtitlePainter;->j:Landroid/text/Layout$Alignment;

    .line 851
    .line 852
    iput-object v3, v11, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    .line 853
    .line 854
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->l:F

    .line 855
    .line 856
    iput v9, v11, Landroidx/media3/ui/SubtitlePainter;->m:I

    .line 857
    .line 858
    move/from16 v0, v29

    .line 859
    .line 860
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->n:I

    .line 861
    .line 862
    move/from16 v0, v28

    .line 863
    .line 864
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->o:F

    .line 865
    .line 866
    move/from16 v0, v27

    .line 867
    .line 868
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->p:I

    .line 869
    .line 870
    move/from16 v0, v26

    .line 871
    .line 872
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->q:F

    .line 873
    .line 874
    move/from16 v0, v25

    .line 875
    .line 876
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->r:F

    .line 877
    .line 878
    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->a:I

    .line 879
    .line 880
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->s:I

    .line 881
    .line 882
    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->b:I

    .line 883
    .line 884
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->t:I

    .line 885
    .line 886
    iput v2, v11, Landroidx/media3/ui/SubtitlePainter;->u:I

    .line 887
    .line 888
    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->d:I

    .line 889
    .line 890
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->w:I

    .line 891
    .line 892
    iget v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->e:I

    .line 893
    .line 894
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->v:I

    .line 895
    .line 896
    iget-object v0, v15, Landroidx/media3/ui/CaptionStyleCompat;->f:Landroid/graphics/Typeface;

    .line 897
    .line 898
    move-object/from16 v1, v24

    .line 899
    .line 900
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 901
    .line 902
    .line 903
    move/from16 v0, v34

    .line 904
    .line 905
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->x:F

    .line 906
    .line 907
    move/from16 v2, v23

    .line 908
    .line 909
    iput v2, v11, Landroidx/media3/ui/SubtitlePainter;->y:F

    .line 910
    .line 911
    move/from16 v2, v22

    .line 912
    .line 913
    iput v2, v11, Landroidx/media3/ui/SubtitlePainter;->z:F

    .line 914
    .line 915
    iput v4, v11, Landroidx/media3/ui/SubtitlePainter;->A:I

    .line 916
    .line 917
    iput v5, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 918
    .line 919
    move/from16 v6, v40

    .line 920
    .line 921
    iput v6, v11, Landroidx/media3/ui/SubtitlePainter;->C:I

    .line 922
    .line 923
    move/from16 v3, v36

    .line 924
    .line 925
    iput v3, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 926
    .line 927
    if-eqz v35, :cond_34

    .line 928
    .line 929
    iget-object v2, v11, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    .line 930
    .line 931
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    .line 933
    .line 934
    iget-object v2, v11, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    .line 935
    .line 936
    instance-of v7, v2, Landroid/text/SpannableStringBuilder;

    .line 937
    .line 938
    if-eqz v7, :cond_1e

    .line 939
    .line 940
    check-cast v2, Landroid/text/SpannableStringBuilder;

    .line 941
    .line 942
    goto :goto_13

    .line 943
    :cond_1e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 944
    .line 945
    iget-object v7, v11, Landroidx/media3/ui/SubtitlePainter;->i:Ljava/lang/CharSequence;

    .line 946
    .line 947
    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 948
    .line 949
    .line 950
    :goto_13
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->C:I

    .line 951
    .line 952
    iget v8, v11, Landroidx/media3/ui/SubtitlePainter;->A:I

    .line 953
    .line 954
    sub-int/2addr v7, v8

    .line 955
    iget v8, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 956
    .line 957
    iget v9, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 958
    .line 959
    sub-int/2addr v8, v9

    .line 960
    iget v9, v11, Landroidx/media3/ui/SubtitlePainter;->x:F

    .line 961
    .line 962
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 963
    .line 964
    .line 965
    iget v9, v11, Landroidx/media3/ui/SubtitlePainter;->x:F

    .line 966
    .line 967
    const/high16 v10, 0x3e000000    # 0.125f

    .line 968
    .line 969
    mul-float/2addr v9, v10

    .line 970
    const/high16 v10, 0x3f000000    # 0.5f

    .line 971
    .line 972
    add-float/2addr v9, v10

    .line 973
    float-to-int v9, v9

    .line 974
    mul-int/lit8 v10, v9, 0x2

    .line 975
    .line 976
    sub-int v12, v7, v10

    .line 977
    .line 978
    iget v13, v11, Landroidx/media3/ui/SubtitlePainter;->q:F

    .line 979
    .line 980
    const v19, -0x800001

    .line 981
    .line 982
    .line 983
    cmpl-float v14, v13, v19

    .line 984
    .line 985
    if-eqz v14, :cond_1f

    .line 986
    .line 987
    int-to-float v12, v12

    .line 988
    mul-float/2addr v12, v13

    .line 989
    float-to-int v12, v12

    .line 990
    :cond_1f
    move/from16 v25, v12

    .line 991
    .line 992
    const-string v12, "SubtitlePainter"

    .line 993
    .line 994
    if-gtz v25, :cond_20

    .line 995
    .line 996
    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 997
    .line 998
    invoke-static {v12, v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    move/from16 v34, v0

    .line 1002
    .line 1003
    :goto_14
    const/4 v15, 0x0

    .line 1004
    goto/16 :goto_20

    .line 1005
    .line 1006
    :cond_20
    iget v13, v11, Landroidx/media3/ui/SubtitlePainter;->y:F

    .line 1007
    .line 1008
    cmpl-float v13, v13, v16

    .line 1009
    .line 1010
    const/high16 v14, 0xff0000

    .line 1011
    .line 1012
    if-lez v13, :cond_21

    .line 1013
    .line 1014
    new-instance v13, Landroid/text/style/AbsoluteSizeSpan;

    .line 1015
    .line 1016
    iget v15, v11, Landroidx/media3/ui/SubtitlePainter;->y:F

    .line 1017
    .line 1018
    float-to-int v15, v15

    .line 1019
    invoke-direct {v13, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1023
    .line 1024
    .line 1025
    move-result v15

    .line 1026
    move/from16 v34, v0

    .line 1027
    .line 1028
    const/4 v0, 0x0

    .line 1029
    invoke-virtual {v2, v13, v0, v15, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_15

    .line 1033
    :cond_21
    move/from16 v34, v0

    .line 1034
    .line 1035
    const/4 v0, 0x0

    .line 1036
    :goto_15
    new-instance v13, Landroid/text/SpannableStringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v13, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1039
    .line 1040
    .line 1041
    iget v15, v11, Landroidx/media3/ui/SubtitlePainter;->w:I

    .line 1042
    .line 1043
    const/4 v14, 0x1

    .line 1044
    if-ne v15, v14, :cond_22

    .line 1045
    .line 1046
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1047
    .line 1048
    .line 1049
    move-result v14

    .line 1050
    const-class v15, Landroid/text/style/ForegroundColorSpan;

    .line 1051
    .line 1052
    invoke-virtual {v13, v0, v14, v15}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v14

    .line 1056
    check-cast v14, [Landroid/text/style/ForegroundColorSpan;

    .line 1057
    .line 1058
    array-length v0, v14

    .line 1059
    const/4 v15, 0x0

    .line 1060
    :goto_16
    if-ge v15, v0, :cond_22

    .line 1061
    .line 1062
    move/from16 v22, v0

    .line 1063
    .line 1064
    aget-object v0, v14, v15

    .line 1065
    .line 1066
    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1067
    .line 1068
    .line 1069
    add-int/lit8 v15, v15, 0x1

    .line 1070
    .line 1071
    move/from16 v0, v22

    .line 1072
    .line 1073
    goto :goto_16

    .line 1074
    :cond_22
    iget v0, v11, Landroidx/media3/ui/SubtitlePainter;->t:I

    .line 1075
    .line 1076
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 1077
    .line 1078
    .line 1079
    move-result v0

    .line 1080
    if-lez v0, :cond_25

    .line 1081
    .line 1082
    iget v0, v11, Landroidx/media3/ui/SubtitlePainter;->w:I

    .line 1083
    .line 1084
    if-eqz v0, :cond_23

    .line 1085
    .line 1086
    const/4 v14, 0x2

    .line 1087
    if-ne v0, v14, :cond_24

    .line 1088
    .line 1089
    :cond_23
    move-object/from16 v24, v1

    .line 1090
    .line 1091
    const/high16 v1, 0xff0000

    .line 1092
    .line 1093
    const/4 v15, 0x0

    .line 1094
    goto :goto_17

    .line 1095
    :cond_24
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 1096
    .line 1097
    iget v14, v11, Landroidx/media3/ui/SubtitlePainter;->t:I

    .line 1098
    .line 1099
    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1103
    .line 1104
    .line 1105
    move-result v14

    .line 1106
    move-object/from16 v24, v1

    .line 1107
    .line 1108
    const/high16 v1, 0xff0000

    .line 1109
    .line 1110
    const/4 v15, 0x0

    .line 1111
    invoke-virtual {v13, v0, v15, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1112
    .line 1113
    .line 1114
    goto :goto_18

    .line 1115
    :goto_17
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 1116
    .line 1117
    iget v14, v11, Landroidx/media3/ui/SubtitlePainter;->t:I

    .line 1118
    .line 1119
    invoke-direct {v0, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 1123
    .line 1124
    .line 1125
    move-result v14

    .line 1126
    invoke-virtual {v2, v0, v15, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_18

    .line 1130
    :cond_25
    move-object/from16 v24, v1

    .line 1131
    .line 1132
    :goto_18
    iget-object v0, v11, Landroidx/media3/ui/SubtitlePainter;->j:Landroid/text/Layout$Alignment;

    .line 1133
    .line 1134
    if-nez v0, :cond_26

    .line 1135
    .line 1136
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1137
    .line 1138
    :cond_26
    move-object/from16 v26, v0

    .line 1139
    .line 1140
    new-instance v22, Landroid/text/StaticLayout;

    .line 1141
    .line 1142
    iget v0, v11, Landroidx/media3/ui/SubtitlePainter;->d:F

    .line 1143
    .line 1144
    iget v1, v11, Landroidx/media3/ui/SubtitlePainter;->e:F

    .line 1145
    .line 1146
    const/16 v29, 0x1

    .line 1147
    .line 1148
    move/from16 v27, v0

    .line 1149
    .line 1150
    move/from16 v28, v1

    .line 1151
    .line 1152
    move-object/from16 v23, v2

    .line 1153
    .line 1154
    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1155
    .line 1156
    .line 1157
    move-object/from16 v1, v22

    .line 1158
    .line 1159
    move/from16 v0, v25

    .line 1160
    .line 1161
    iput-object v1, v11, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    .line 1162
    .line 1163
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    iget-object v2, v11, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    .line 1168
    .line 1169
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    .line 1170
    .line 1171
    .line 1172
    move-result v2

    .line 1173
    const/4 v14, 0x0

    .line 1174
    const/4 v15, 0x0

    .line 1175
    :goto_19
    if-ge v14, v2, :cond_27

    .line 1176
    .line 1177
    move/from16 v18, v1

    .line 1178
    .line 1179
    iget-object v1, v11, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    .line 1180
    .line 1181
    invoke-virtual {v1, v14}, Landroid/text/Layout;->getLineWidth(I)F

    .line 1182
    .line 1183
    .line 1184
    move-result v1

    .line 1185
    move/from16 v22, v2

    .line 1186
    .line 1187
    float-to-double v1, v1

    .line 1188
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v1

    .line 1192
    double-to-int v1, v1

    .line 1193
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    .line 1194
    .line 1195
    .line 1196
    move-result v15

    .line 1197
    add-int/lit8 v14, v14, 0x1

    .line 1198
    .line 1199
    move/from16 v1, v18

    .line 1200
    .line 1201
    move/from16 v2, v22

    .line 1202
    .line 1203
    goto :goto_19

    .line 1204
    :cond_27
    move/from16 v18, v1

    .line 1205
    .line 1206
    iget v1, v11, Landroidx/media3/ui/SubtitlePainter;->q:F

    .line 1207
    .line 1208
    const v19, -0x800001

    .line 1209
    .line 1210
    .line 1211
    cmpl-float v1, v1, v19

    .line 1212
    .line 1213
    if-eqz v1, :cond_28

    .line 1214
    .line 1215
    if-ge v15, v0, :cond_28

    .line 1216
    .line 1217
    move/from16 v25, v0

    .line 1218
    .line 1219
    goto :goto_1a

    .line 1220
    :cond_28
    move/from16 v25, v15

    .line 1221
    .line 1222
    :goto_1a
    add-int v25, v25, v10

    .line 1223
    .line 1224
    iget v0, v11, Landroidx/media3/ui/SubtitlePainter;->o:F

    .line 1225
    .line 1226
    cmpl-float v1, v0, v19

    .line 1227
    .line 1228
    if-eqz v1, :cond_2b

    .line 1229
    .line 1230
    int-to-float v1, v7

    .line 1231
    mul-float/2addr v1, v0

    .line 1232
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1233
    .line 1234
    .line 1235
    move-result v0

    .line 1236
    iget v1, v11, Landroidx/media3/ui/SubtitlePainter;->A:I

    .line 1237
    .line 1238
    add-int/2addr v0, v1

    .line 1239
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->p:I

    .line 1240
    .line 1241
    const/4 v14, 0x1

    .line 1242
    if-eq v2, v14, :cond_2a

    .line 1243
    .line 1244
    const/4 v14, 0x2

    .line 1245
    if-eq v2, v14, :cond_29

    .line 1246
    .line 1247
    goto :goto_1b

    .line 1248
    :cond_29
    sub-int v0, v0, v25

    .line 1249
    .line 1250
    goto :goto_1b

    .line 1251
    :cond_2a
    const/4 v14, 0x2

    .line 1252
    mul-int/lit8 v0, v0, 0x2

    .line 1253
    .line 1254
    sub-int v0, v0, v25

    .line 1255
    .line 1256
    div-int/2addr v0, v14

    .line 1257
    :goto_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 1258
    .line 1259
    .line 1260
    move-result v0

    .line 1261
    add-int v1, v0, v25

    .line 1262
    .line 1263
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->C:I

    .line 1264
    .line 1265
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1266
    .line 1267
    .line 1268
    move-result v1

    .line 1269
    goto :goto_1c

    .line 1270
    :cond_2b
    const/4 v14, 0x2

    .line 1271
    sub-int v7, v7, v25

    .line 1272
    .line 1273
    div-int/2addr v7, v14

    .line 1274
    iget v0, v11, Landroidx/media3/ui/SubtitlePainter;->A:I

    .line 1275
    .line 1276
    add-int/2addr v0, v7

    .line 1277
    add-int v1, v0, v25

    .line 1278
    .line 1279
    :goto_1c
    sub-int v25, v1, v0

    .line 1280
    .line 1281
    if-gtz v25, :cond_2c

    .line 1282
    .line 1283
    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 1284
    .line 1285
    invoke-static {v12, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_14

    .line 1289
    .line 1290
    :cond_2c
    iget v1, v11, Landroidx/media3/ui/SubtitlePainter;->l:F

    .line 1291
    .line 1292
    const v19, -0x800001

    .line 1293
    .line 1294
    .line 1295
    cmpl-float v2, v1, v19

    .line 1296
    .line 1297
    if-eqz v2, :cond_32

    .line 1298
    .line 1299
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->m:I

    .line 1300
    .line 1301
    if-nez v2, :cond_2f

    .line 1302
    .line 1303
    int-to-float v2, v8

    .line 1304
    mul-float/2addr v2, v1

    .line 1305
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 1306
    .line 1307
    .line 1308
    move-result v1

    .line 1309
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 1310
    .line 1311
    add-int/2addr v1, v2

    .line 1312
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->n:I

    .line 1313
    .line 1314
    const/4 v14, 0x2

    .line 1315
    if-ne v2, v14, :cond_2d

    .line 1316
    .line 1317
    sub-int v1, v1, v18

    .line 1318
    .line 1319
    goto :goto_1d

    .line 1320
    :cond_2d
    const/4 v10, 0x1

    .line 1321
    if-ne v2, v10, :cond_2e

    .line 1322
    .line 1323
    mul-int/lit8 v1, v1, 0x2

    .line 1324
    .line 1325
    sub-int v1, v1, v18

    .line 1326
    .line 1327
    div-int/2addr v1, v14

    .line 1328
    :cond_2e
    :goto_1d
    const/4 v15, 0x0

    .line 1329
    goto :goto_1e

    .line 1330
    :cond_2f
    iget-object v1, v11, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    .line 1331
    .line 1332
    const/4 v15, 0x0

    .line 1333
    invoke-virtual {v1, v15}, Landroid/text/Layout;->getLineBottom(I)I

    .line 1334
    .line 1335
    .line 1336
    move-result v1

    .line 1337
    iget-object v2, v11, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    .line 1338
    .line 1339
    invoke-virtual {v2, v15}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 1340
    .line 1341
    .line 1342
    move-result v2

    .line 1343
    sub-int/2addr v1, v2

    .line 1344
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->l:F

    .line 1345
    .line 1346
    cmpl-float v7, v2, v16

    .line 1347
    .line 1348
    if-ltz v7, :cond_30

    .line 1349
    .line 1350
    int-to-float v1, v1

    .line 1351
    mul-float/2addr v2, v1

    .line 1352
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 1353
    .line 1354
    .line 1355
    move-result v1

    .line 1356
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 1357
    .line 1358
    add-int/2addr v1, v2

    .line 1359
    goto :goto_1e

    .line 1360
    :cond_30
    add-float v2, v2, v17

    .line 1361
    .line 1362
    int-to-float v1, v1

    .line 1363
    mul-float/2addr v2, v1

    .line 1364
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 1365
    .line 1366
    .line 1367
    move-result v1

    .line 1368
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 1369
    .line 1370
    add-int/2addr v1, v2

    .line 1371
    sub-int v1, v1, v18

    .line 1372
    .line 1373
    :goto_1e
    add-int v2, v1, v18

    .line 1374
    .line 1375
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 1376
    .line 1377
    if-le v2, v7, :cond_31

    .line 1378
    .line 1379
    sub-int v1, v7, v18

    .line 1380
    .line 1381
    goto :goto_1f

    .line 1382
    :cond_31
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 1383
    .line 1384
    if-ge v1, v2, :cond_33

    .line 1385
    .line 1386
    move v1, v2

    .line 1387
    goto :goto_1f

    .line 1388
    :cond_32
    const/4 v15, 0x0

    .line 1389
    iget v1, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 1390
    .line 1391
    sub-int v1, v1, v18

    .line 1392
    .line 1393
    int-to-float v2, v8

    .line 1394
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->z:F

    .line 1395
    .line 1396
    mul-float/2addr v2, v7

    .line 1397
    float-to-int v2, v2

    .line 1398
    sub-int/2addr v1, v2

    .line 1399
    :cond_33
    :goto_1f
    new-instance v22, Landroid/text/StaticLayout;

    .line 1400
    .line 1401
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->d:F

    .line 1402
    .line 1403
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->e:F

    .line 1404
    .line 1405
    const/16 v29, 0x1

    .line 1406
    .line 1407
    move/from16 v27, v2

    .line 1408
    .line 1409
    move/from16 v28, v7

    .line 1410
    .line 1411
    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1412
    .line 1413
    .line 1414
    move-object/from16 v2, v22

    .line 1415
    .line 1416
    iput-object v2, v11, Landroidx/media3/ui/SubtitlePainter;->E:Landroid/text/StaticLayout;

    .line 1417
    .line 1418
    new-instance v22, Landroid/text/StaticLayout;

    .line 1419
    .line 1420
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->d:F

    .line 1421
    .line 1422
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->e:F

    .line 1423
    .line 1424
    move/from16 v27, v2

    .line 1425
    .line 1426
    move/from16 v28, v7

    .line 1427
    .line 1428
    move-object/from16 v23, v13

    .line 1429
    .line 1430
    invoke-direct/range {v22 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1431
    .line 1432
    .line 1433
    move-object/from16 v2, v22

    .line 1434
    .line 1435
    iput-object v2, v11, Landroidx/media3/ui/SubtitlePainter;->F:Landroid/text/StaticLayout;

    .line 1436
    .line 1437
    iput v0, v11, Landroidx/media3/ui/SubtitlePainter;->G:I

    .line 1438
    .line 1439
    iput v1, v11, Landroidx/media3/ui/SubtitlePainter;->H:I

    .line 1440
    .line 1441
    iput v9, v11, Landroidx/media3/ui/SubtitlePainter;->I:I

    .line 1442
    .line 1443
    :goto_20
    move-object/from16 v1, p1

    .line 1444
    .line 1445
    move/from16 v0, v35

    .line 1446
    .line 1447
    goto/16 :goto_26

    .line 1448
    .line 1449
    :cond_34
    move/from16 v34, v0

    .line 1450
    .line 1451
    const/4 v15, 0x0

    .line 1452
    iget-object v0, v11, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    .line 1453
    .line 1454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1455
    .line 1456
    .line 1457
    iget-object v0, v11, Landroidx/media3/ui/SubtitlePainter;->k:Landroid/graphics/Bitmap;

    .line 1458
    .line 1459
    iget v1, v11, Landroidx/media3/ui/SubtitlePainter;->C:I

    .line 1460
    .line 1461
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->A:I

    .line 1462
    .line 1463
    sub-int/2addr v1, v2

    .line 1464
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->D:I

    .line 1465
    .line 1466
    iget v8, v11, Landroidx/media3/ui/SubtitlePainter;->B:I

    .line 1467
    .line 1468
    sub-int/2addr v7, v8

    .line 1469
    int-to-float v2, v2

    .line 1470
    int-to-float v1, v1

    .line 1471
    iget v9, v11, Landroidx/media3/ui/SubtitlePainter;->o:F

    .line 1472
    .line 1473
    mul-float/2addr v9, v1

    .line 1474
    add-float/2addr v9, v2

    .line 1475
    int-to-float v2, v8

    .line 1476
    int-to-float v7, v7

    .line 1477
    iget v8, v11, Landroidx/media3/ui/SubtitlePainter;->l:F

    .line 1478
    .line 1479
    mul-float/2addr v8, v7

    .line 1480
    add-float/2addr v8, v2

    .line 1481
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->q:F

    .line 1482
    .line 1483
    mul-float/2addr v1, v2

    .line 1484
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1485
    .line 1486
    .line 1487
    move-result v1

    .line 1488
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->r:F

    .line 1489
    .line 1490
    const v19, -0x800001

    .line 1491
    .line 1492
    .line 1493
    cmpl-float v10, v2, v19

    .line 1494
    .line 1495
    if-eqz v10, :cond_35

    .line 1496
    .line 1497
    mul-float/2addr v7, v2

    .line 1498
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 1499
    .line 1500
    .line 1501
    move-result v0

    .line 1502
    goto :goto_21

    .line 1503
    :cond_35
    int-to-float v2, v1

    .line 1504
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1505
    .line 1506
    .line 1507
    move-result v7

    .line 1508
    int-to-float v7, v7

    .line 1509
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1510
    .line 1511
    .line 1512
    move-result v0

    .line 1513
    int-to-float v0, v0

    .line 1514
    div-float/2addr v7, v0

    .line 1515
    mul-float/2addr v7, v2

    .line 1516
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 1517
    .line 1518
    .line 1519
    move-result v0

    .line 1520
    :goto_21
    iget v2, v11, Landroidx/media3/ui/SubtitlePainter;->p:I

    .line 1521
    .line 1522
    const/4 v14, 0x2

    .line 1523
    if-ne v2, v14, :cond_36

    .line 1524
    .line 1525
    int-to-float v2, v1

    .line 1526
    :goto_22
    sub-float/2addr v9, v2

    .line 1527
    goto :goto_23

    .line 1528
    :cond_36
    const/4 v14, 0x1

    .line 1529
    if-ne v2, v14, :cond_37

    .line 1530
    .line 1531
    div-int/lit8 v2, v1, 0x2

    .line 1532
    .line 1533
    int-to-float v2, v2

    .line 1534
    goto :goto_22

    .line 1535
    :cond_37
    :goto_23
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 1536
    .line 1537
    .line 1538
    move-result v2

    .line 1539
    iget v7, v11, Landroidx/media3/ui/SubtitlePainter;->n:I

    .line 1540
    .line 1541
    const/4 v14, 0x2

    .line 1542
    if-ne v7, v14, :cond_38

    .line 1543
    .line 1544
    int-to-float v7, v0

    .line 1545
    :goto_24
    sub-float/2addr v8, v7

    .line 1546
    goto :goto_25

    .line 1547
    :cond_38
    const/4 v14, 0x1

    .line 1548
    if-ne v7, v14, :cond_39

    .line 1549
    .line 1550
    div-int/lit8 v7, v0, 0x2

    .line 1551
    .line 1552
    int-to-float v7, v7

    .line 1553
    goto :goto_24

    .line 1554
    :cond_39
    :goto_25
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 1555
    .line 1556
    .line 1557
    move-result v7

    .line 1558
    new-instance v8, Landroid/graphics/Rect;

    .line 1559
    .line 1560
    add-int/2addr v1, v2

    .line 1561
    add-int/2addr v0, v7

    .line 1562
    invoke-direct {v8, v2, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1563
    .line 1564
    .line 1565
    iput-object v8, v11, Landroidx/media3/ui/SubtitlePainter;->J:Landroid/graphics/Rect;

    .line 1566
    .line 1567
    goto :goto_20

    .line 1568
    :goto_26
    invoke-virtual {v11, v1, v0}, Landroidx/media3/ui/SubtitlePainter;->a(Landroid/graphics/Canvas;Z)V

    .line 1569
    .line 1570
    .line 1571
    :goto_27
    add-int/lit8 v13, v33, 0x1

    .line 1572
    .line 1573
    move-object/from16 v0, p0

    .line 1574
    .line 1575
    move v7, v3

    .line 1576
    move v10, v15

    .line 1577
    move/from16 v11, v16

    .line 1578
    .line 1579
    move-object/from16 v2, v21

    .line 1580
    .line 1581
    move/from16 v3, v30

    .line 1582
    .line 1583
    move/from16 v8, v31

    .line 1584
    .line 1585
    move/from16 v12, v32

    .line 1586
    .line 1587
    move/from16 v9, v34

    .line 1588
    .line 1589
    goto/16 :goto_0

    .line 1590
    .line 1591
    :cond_3a
    :goto_28
    return-void
.end method
