.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation runtime Lkotlin/Deprecated;
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final b:Landroidx/compose/ui/text/input/InputMethodManagerImpl;

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Landroidx/compose/ui/text/input/TextFieldValue;

.field public k:Landroidx/compose/ui/text/TextLayoutResult;

.field public l:Landroidx/compose/ui/text/input/OffsetMapping;

.field public m:Lkotlin/jvm/functions/Function1;

.field public n:Landroidx/compose/ui/geometry/Rect;

.field public o:Landroidx/compose/ui/geometry/Rect;

.field public final p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final q:[F

.field public final r:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/text/input/InputMethodManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/InputMethodManagerImpl;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->c:Ljava/lang/Object;

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;->j:Landroidx/compose/ui/text/input/CursorAnchorInfoController$textFieldToRootTransform$1;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->m:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->b:Landroidx/compose/ui/text/input/InputMethodManagerImpl;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->b:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/compose/ui/text/input/InputMethodManagerImpl;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->m:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    new-instance v4, Landroidx/compose/ui/graphics/Matrix;

    .line 25
    .line 26
    iget-object v5, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->q:[F

    .line 27
    .line 28
    invoke-direct {v4, v5}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->p([F)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->r:Landroid/graphics/Matrix;

    .line 40
    .line 41
    invoke-static {v3, v5}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->a(Landroid/graphics/Matrix;[F)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-wide v5, v4, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 50
    .line 51
    iget-object v7, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v8, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->k:Landroidx/compose/ui/text/TextLayoutResult;

    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v9, v8, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 62
    .line 63
    iget-object v10, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    .line 64
    .line 65
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v11, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->o:Landroidx/compose/ui/geometry/Rect;

    .line 69
    .line 70
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-boolean v12, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->f:Z

    .line 74
    .line 75
    iget-boolean v13, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->g:Z

    .line 76
    .line 77
    iget-boolean v14, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->h:Z

    .line 78
    .line 79
    iget-boolean v15, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->i:Z

    .line 80
    .line 81
    move-object/from16 v23, v2

    .line 82
    .line 83
    iget-object v2, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->p:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 89
    .line 90
    .line 91
    iget-object v3, v4, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    .line 92
    .line 93
    move-wide/from16 v16, v5

    .line 94
    .line 95
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 104
    .line 105
    .line 106
    const/16 v24, 0x1

    .line 107
    .line 108
    if-eqz v12, :cond_8

    .line 109
    .line 110
    if-gez v5, :cond_1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_1
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-virtual {v8, v5}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    iget v6, v12, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 122
    .line 123
    move/from16 v22, v13

    .line 124
    .line 125
    move/from16 v25, v14

    .line 126
    .line 127
    iget-wide v13, v8, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 128
    .line 129
    const/16 v16, 0x20

    .line 130
    .line 131
    shr-long v13, v13, v16

    .line 132
    .line 133
    long-to-int v13, v13

    .line 134
    int-to-float v13, v13

    .line 135
    const/4 v14, 0x0

    .line 136
    invoke-static {v6, v14, v13}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    iget v13, v12, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 141
    .line 142
    invoke-static {v10, v6, v13}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    iget v14, v12, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 147
    .line 148
    invoke-static {v10, v6, v14}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    invoke-virtual {v8, v5}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    move-object/from16 v16, v2

    .line 157
    .line 158
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 159
    .line 160
    if-ne v5, v2, :cond_2

    .line 161
    .line 162
    move/from16 v2, v24

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    const/4 v2, 0x0

    .line 166
    :goto_0
    if-nez v13, :cond_4

    .line 167
    .line 168
    if-eqz v14, :cond_3

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    const/4 v5, 0x0

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    :goto_1
    move/from16 v5, v24

    .line 174
    .line 175
    :goto_2
    if-eqz v13, :cond_5

    .line 176
    .line 177
    if-nez v14, :cond_6

    .line 178
    .line 179
    :cond_5
    or-int/lit8 v5, v5, 0x2

    .line 180
    .line 181
    :cond_6
    if-eqz v2, :cond_7

    .line 182
    .line 183
    or-int/lit8 v5, v5, 0x4

    .line 184
    .line 185
    :cond_7
    move/from16 v21, v5

    .line 186
    .line 187
    iget v2, v12, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 188
    .line 189
    iget v5, v12, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 190
    .line 191
    move/from16 v20, v5

    .line 192
    .line 193
    move/from16 v18, v2

    .line 194
    .line 195
    move/from16 v19, v5

    .line 196
    .line 197
    move/from16 v17, v6

    .line 198
    .line 199
    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 200
    .line 201
    .line 202
    move-object/from16 v2, v16

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    :goto_3
    move/from16 v22, v13

    .line 206
    .line 207
    move/from16 v25, v14

    .line 208
    .line 209
    :goto_4
    if-eqz v22, :cond_e

    .line 210
    .line 211
    const/4 v5, -0x1

    .line 212
    if-eqz v3, :cond_9

    .line 213
    .line 214
    iget-wide v12, v3, Landroidx/compose/ui/text/TextRange;->a:J

    .line 215
    .line 216
    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    goto :goto_5

    .line 221
    :cond_9
    move v6, v5

    .line 222
    :goto_5
    if-eqz v3, :cond_a

    .line 223
    .line 224
    iget-wide v12, v3, Landroidx/compose/ui/text/TextRange;->a:J

    .line 225
    .line 226
    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    :cond_a
    if-ltz v6, :cond_e

    .line 231
    .line 232
    if-ge v6, v5, :cond_e

    .line 233
    .line 234
    iget-object v3, v4, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 235
    .line 236
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v2, v6, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 243
    .line 244
    .line 245
    invoke-interface {v7, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    sub-int v12, v4, v3

    .line 254
    .line 255
    mul-int/lit8 v12, v12, 0x4

    .line 256
    .line 257
    new-array v12, v12, [F

    .line 258
    .line 259
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 260
    .line 261
    .line 262
    move-result-wide v13

    .line 263
    invoke-virtual {v9, v13, v14, v12}, Landroidx/compose/ui/text/MultiParagraph;->a(J[F)V

    .line 264
    .line 265
    .line 266
    :goto_6
    if-ge v6, v5, :cond_e

    .line 267
    .line 268
    invoke-interface {v7, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    sub-int v13, v4, v3

    .line 273
    .line 274
    mul-int/lit8 v13, v13, 0x4

    .line 275
    .line 276
    new-instance v14, Landroidx/compose/ui/geometry/Rect;

    .line 277
    .line 278
    move-object/from16 v16, v2

    .line 279
    .line 280
    aget v2, v12, v13

    .line 281
    .line 282
    add-int/lit8 v17, v13, 0x1

    .line 283
    .line 284
    move/from16 v26, v3

    .line 285
    .line 286
    aget v3, v12, v17

    .line 287
    .line 288
    add-int/lit8 v17, v13, 0x2

    .line 289
    .line 290
    move/from16 v27, v5

    .line 291
    .line 292
    aget v5, v12, v17

    .line 293
    .line 294
    add-int/lit8 v13, v13, 0x3

    .line 295
    .line 296
    aget v13, v12, v13

    .line 297
    .line 298
    invoke-direct {v14, v2, v3, v5, v13}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v14}, Landroidx/compose/ui/geometry/Rect;->g(Landroidx/compose/ui/geometry/Rect;)Z

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    invoke-static {v10, v2, v3}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 306
    .line 307
    .line 308
    move-result v17

    .line 309
    if-eqz v17, :cond_b

    .line 310
    .line 311
    invoke-static {v10, v5, v13}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 312
    .line 313
    .line 314
    move-result v17

    .line 315
    if-nez v17, :cond_c

    .line 316
    .line 317
    :cond_b
    or-int/lit8 v14, v14, 0x2

    .line 318
    .line 319
    :cond_c
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    move/from16 v18, v2

    .line 324
    .line 325
    sget-object v2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 326
    .line 327
    if-ne v4, v2, :cond_d

    .line 328
    .line 329
    or-int/lit8 v14, v14, 0x4

    .line 330
    .line 331
    :cond_d
    move/from16 v19, v3

    .line 332
    .line 333
    move/from16 v20, v5

    .line 334
    .line 335
    move/from16 v17, v6

    .line 336
    .line 337
    move/from16 v21, v13

    .line 338
    .line 339
    move/from16 v22, v14

    .line 340
    .line 341
    invoke-virtual/range {v16 .. v22}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 342
    .line 343
    .line 344
    move-object/from16 v2, v16

    .line 345
    .line 346
    add-int/lit8 v6, v17, 0x1

    .line 347
    .line 348
    move/from16 v3, v26

    .line 349
    .line 350
    move/from16 v5, v27

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 354
    .line 355
    const/16 v4, 0x21

    .line 356
    .line 357
    if-lt v3, v4, :cond_f

    .line 358
    .line 359
    if-eqz v25, :cond_f

    .line 360
    .line 361
    invoke-static {}, Ll;->m()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-static {v11}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-static {v4, v5}, Ll;->n(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-static {v11}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-static {v4, v5}, Ll;->B(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-static {v4}, Ll;->o(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v2, v4}, Ll;->l(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 386
    .line 387
    .line 388
    :cond_f
    const/16 v4, 0x22

    .line 389
    .line 390
    if-lt v3, v4, :cond_11

    .line 391
    .line 392
    if-eqz v15, :cond_11

    .line 393
    .line 394
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->f()Z

    .line 395
    .line 396
    .line 397
    move-result v3

    .line 398
    if-nez v3, :cond_11

    .line 399
    .line 400
    iget v3, v9, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 401
    .line 402
    add-int/lit8 v3, v3, -0x1

    .line 403
    .line 404
    if-gez v3, :cond_10

    .line 405
    .line 406
    const/4 v3, 0x0

    .line 407
    :cond_10
    iget v4, v10, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 408
    .line 409
    invoke-virtual {v9, v4}, Landroidx/compose/ui/text/MultiParagraph;->e(F)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    const/4 v5, 0x0

    .line 414
    invoke-static {v4, v5, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    iget v6, v10, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 419
    .line 420
    invoke-virtual {v9, v6}, Landroidx/compose/ui/text/MultiParagraph;->e(F)I

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    invoke-static {v6, v5, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-gt v4, v3, :cond_11

    .line 429
    .line 430
    :goto_7
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)F

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    invoke-virtual {v9, v4}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->e(I)F

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    invoke-virtual {v9, v4}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    .line 443
    .line 444
    .line 445
    move-result v10

    .line 446
    invoke-static {v2, v5, v6, v7, v10}, Ld1;->q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    .line 447
    .line 448
    .line 449
    if-eq v4, v3, :cond_11

    .line 450
    .line 451
    add-int/lit8 v4, v4, 0x1

    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_11
    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-interface/range {v23 .. v23}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 463
    .line 464
    invoke-virtual {v3, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 465
    .line 466
    .line 467
    const/4 v5, 0x0

    .line 468
    iput-boolean v5, v0, Landroidx/compose/ui/text/input/CursorAnchorInfoController;->e:Z

    .line 469
    .line 470
    return-void
.end method
