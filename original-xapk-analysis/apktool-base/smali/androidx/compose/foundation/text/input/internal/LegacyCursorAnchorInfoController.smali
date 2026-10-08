.class public final Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

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

.field public m:Landroidx/compose/ui/geometry/Rect;

.field public n:Landroidx/compose/ui/geometry/Rect;

.field public final o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field public final p:[F

.field public final q:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->b:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->c:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->p:[F

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/Matrix;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->q:Landroid/graphics/Matrix;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->b:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->a()Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, v1, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_12

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 18
    .line 19
    if-eqz v2, :cond_12

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 22
    .line 23
    if-eqz v2, :cond_12

    .line 24
    .line 25
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->k:Landroidx/compose/ui/text/TextLayoutResult;

    .line 26
    .line 27
    if-eqz v2, :cond_12

    .line 28
    .line 29
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->m:Landroidx/compose/ui/geometry/Rect;

    .line 30
    .line 31
    if-eqz v2, :cond_12

    .line 32
    .line 33
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->p:[F

    .line 40
    .line 41
    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Landroidx/compose/ui/graphics/Matrix;

    .line 45
    .line 46
    invoke-direct {v4, v2}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->a:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    check-cast v5, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v4, v4, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 62
    .line 63
    neg-float v4, v4

    .line 64
    iget-object v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget v5, v5, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 70
    .line 71
    neg-float v5, v5

    .line 72
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->f([FFF)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->q:Landroid/graphics/Matrix;

    .line 76
    .line 77
    invoke-static {v4, v2}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->a(Landroid/graphics/Matrix;[F)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-wide v5, v2, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 86
    .line 87
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->l:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->k:Landroidx/compose/ui/text/TextLayoutResult;

    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object v9, v8, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 98
    .line 99
    iget-object v10, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->m:Landroidx/compose/ui/geometry/Rect;

    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v11, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->n:Landroidx/compose/ui/geometry/Rect;

    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-boolean v12, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->f:Z

    .line 110
    .line 111
    iget-boolean v13, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->g:Z

    .line 112
    .line 113
    iget-boolean v14, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->h:Z

    .line 114
    .line 115
    iget-boolean v15, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->i:Z

    .line 116
    .line 117
    move-object/from16 v23, v1

    .line 118
    .line 119
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->o:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 125
    .line 126
    .line 127
    iget-object v4, v2, Landroidx/compose/ui/text/input/TextFieldValue;->c:Landroidx/compose/ui/text/TextRange;

    .line 128
    .line 129
    move-wide/from16 v16, v5

    .line 130
    .line 131
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 140
    .line 141
    .line 142
    const/16 v24, 0x1

    .line 143
    .line 144
    if-eqz v12, :cond_8

    .line 145
    .line 146
    if-gez v5, :cond_1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_1
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v8, v5}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    iget v6, v12, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 158
    .line 159
    move/from16 v22, v13

    .line 160
    .line 161
    move/from16 v25, v14

    .line 162
    .line 163
    iget-wide v13, v8, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 164
    .line 165
    const/16 v16, 0x20

    .line 166
    .line 167
    shr-long v13, v13, v16

    .line 168
    .line 169
    long-to-int v13, v13

    .line 170
    int-to-float v13, v13

    .line 171
    const/4 v14, 0x0

    .line 172
    invoke-static {v6, v14, v13}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    iget v13, v12, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 177
    .line 178
    invoke-static {v10, v6, v13}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    iget v14, v12, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 183
    .line 184
    invoke-static {v10, v6, v14}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    invoke-virtual {v8, v5}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    move-object/from16 v16, v1

    .line 193
    .line 194
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 195
    .line 196
    if-ne v5, v1, :cond_2

    .line 197
    .line 198
    move/from16 v1, v24

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_2
    const/4 v1, 0x0

    .line 202
    :goto_0
    if-nez v13, :cond_4

    .line 203
    .line 204
    if-eqz v14, :cond_3

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    const/4 v5, 0x0

    .line 208
    goto :goto_2

    .line 209
    :cond_4
    :goto_1
    move/from16 v5, v24

    .line 210
    .line 211
    :goto_2
    if-eqz v13, :cond_5

    .line 212
    .line 213
    if-nez v14, :cond_6

    .line 214
    .line 215
    :cond_5
    or-int/lit8 v5, v5, 0x2

    .line 216
    .line 217
    :cond_6
    if-eqz v1, :cond_7

    .line 218
    .line 219
    or-int/lit8 v5, v5, 0x4

    .line 220
    .line 221
    :cond_7
    move/from16 v21, v5

    .line 222
    .line 223
    iget v1, v12, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 224
    .line 225
    iget v5, v12, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 226
    .line 227
    move/from16 v20, v5

    .line 228
    .line 229
    move/from16 v18, v1

    .line 230
    .line 231
    move/from16 v19, v5

    .line 232
    .line 233
    move/from16 v17, v6

    .line 234
    .line 235
    invoke-virtual/range {v16 .. v21}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 236
    .line 237
    .line 238
    move-object/from16 v1, v16

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_8
    :goto_3
    move/from16 v22, v13

    .line 242
    .line 243
    move/from16 v25, v14

    .line 244
    .line 245
    :goto_4
    if-eqz v22, :cond_e

    .line 246
    .line 247
    const/4 v5, -0x1

    .line 248
    if-eqz v4, :cond_9

    .line 249
    .line 250
    iget-wide v12, v4, Landroidx/compose/ui/text/TextRange;->a:J

    .line 251
    .line 252
    invoke-static {v12, v13}, Landroidx/compose/ui/text/TextRange;->f(J)I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    goto :goto_5

    .line 257
    :cond_9
    move v6, v5

    .line 258
    :goto_5
    if-eqz v4, :cond_a

    .line 259
    .line 260
    iget-wide v4, v4, Landroidx/compose/ui/text/TextRange;->a:J

    .line 261
    .line 262
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->e(J)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    :cond_a
    if-ltz v6, :cond_e

    .line 267
    .line 268
    if-ge v6, v5, :cond_e

    .line 269
    .line 270
    iget-object v2, v2, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 271
    .line 272
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v1, v6, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 279
    .line 280
    .line 281
    invoke-interface {v7, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    invoke-interface {v7, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    sub-int v12, v4, v2

    .line 290
    .line 291
    mul-int/lit8 v12, v12, 0x4

    .line 292
    .line 293
    new-array v12, v12, [F

    .line 294
    .line 295
    invoke-static {v2, v4}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 296
    .line 297
    .line 298
    move-result-wide v13

    .line 299
    invoke-virtual {v9, v13, v14, v12}, Landroidx/compose/ui/text/MultiParagraph;->a(J[F)V

    .line 300
    .line 301
    .line 302
    :goto_6
    if-ge v6, v5, :cond_e

    .line 303
    .line 304
    invoke-interface {v7, v6}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    sub-int v13, v4, v2

    .line 309
    .line 310
    mul-int/lit8 v13, v13, 0x4

    .line 311
    .line 312
    new-instance v14, Landroidx/compose/ui/geometry/Rect;

    .line 313
    .line 314
    move-object/from16 v16, v1

    .line 315
    .line 316
    aget v1, v12, v13

    .line 317
    .line 318
    add-int/lit8 v17, v13, 0x1

    .line 319
    .line 320
    move/from16 v26, v2

    .line 321
    .line 322
    aget v2, v12, v17

    .line 323
    .line 324
    add-int/lit8 v17, v13, 0x2

    .line 325
    .line 326
    move/from16 v27, v5

    .line 327
    .line 328
    aget v5, v12, v17

    .line 329
    .line 330
    add-int/lit8 v13, v13, 0x3

    .line 331
    .line 332
    aget v13, v12, v13

    .line 333
    .line 334
    invoke-direct {v14, v1, v2, v5, v13}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v10, v14}, Landroidx/compose/ui/geometry/Rect;->g(Landroidx/compose/ui/geometry/Rect;)Z

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    invoke-static {v10, v1, v2}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 342
    .line 343
    .line 344
    move-result v17

    .line 345
    if-eqz v17, :cond_b

    .line 346
    .line 347
    invoke-static {v10, v5, v13}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoBuilder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;FF)Z

    .line 348
    .line 349
    .line 350
    move-result v17

    .line 351
    if-nez v17, :cond_c

    .line 352
    .line 353
    :cond_b
    or-int/lit8 v14, v14, 0x2

    .line 354
    .line 355
    :cond_c
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->a(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    move/from16 v18, v1

    .line 360
    .line 361
    sget-object v1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->k:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 362
    .line 363
    if-ne v4, v1, :cond_d

    .line 364
    .line 365
    or-int/lit8 v14, v14, 0x4

    .line 366
    .line 367
    :cond_d
    move/from16 v19, v2

    .line 368
    .line 369
    move/from16 v20, v5

    .line 370
    .line 371
    move/from16 v17, v6

    .line 372
    .line 373
    move/from16 v21, v13

    .line 374
    .line 375
    move/from16 v22, v14

    .line 376
    .line 377
    invoke-virtual/range {v16 .. v22}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 378
    .line 379
    .line 380
    move-object/from16 v1, v16

    .line 381
    .line 382
    add-int/lit8 v6, v17, 0x1

    .line 383
    .line 384
    move/from16 v2, v26

    .line 385
    .line 386
    move/from16 v5, v27

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 390
    .line 391
    const/16 v4, 0x21

    .line 392
    .line 393
    if-lt v2, v4, :cond_f

    .line 394
    .line 395
    if-eqz v25, :cond_f

    .line 396
    .line 397
    invoke-static {}, Ll;->m()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-static {v11}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-static {v4, v5}, Ll;->n(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-static {v11}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-static {v4, v5}, Ll;->B(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-static {v4}, Ll;->o(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {v1, v4}, Ll;->l(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 422
    .line 423
    .line 424
    :cond_f
    const/16 v4, 0x22

    .line 425
    .line 426
    if-lt v2, v4, :cond_11

    .line 427
    .line 428
    if-eqz v15, :cond_11

    .line 429
    .line 430
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->f()Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-nez v2, :cond_11

    .line 435
    .line 436
    iget v2, v9, Landroidx/compose/ui/text/MultiParagraph;->f:I

    .line 437
    .line 438
    add-int/lit8 v2, v2, -0x1

    .line 439
    .line 440
    if-gez v2, :cond_10

    .line 441
    .line 442
    const/4 v2, 0x0

    .line 443
    :cond_10
    iget v4, v10, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 444
    .line 445
    invoke-virtual {v9, v4}, Landroidx/compose/ui/text/MultiParagraph;->e(F)I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    const/4 v5, 0x0

    .line 450
    invoke-static {v4, v5, v2}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    iget v6, v10, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 455
    .line 456
    invoke-virtual {v9, v6}, Landroidx/compose/ui/text/MultiParagraph;->e(F)I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    invoke-static {v6, v5, v2}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-gt v4, v2, :cond_11

    .line 465
    .line 466
    :goto_7
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->d(I)F

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    invoke-virtual {v9, v4}, Landroidx/compose/ui/text/MultiParagraph;->f(I)F

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/TextLayoutResult;->e(I)F

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    invoke-virtual {v9, v4}, Landroidx/compose/ui/text/MultiParagraph;->b(I)F

    .line 479
    .line 480
    .line 481
    move-result v10

    .line 482
    invoke-static {v1, v5, v6, v7, v10}, Ld1;->q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    .line 483
    .line 484
    .line 485
    if-eq v4, v2, :cond_11

    .line 486
    .line 487
    add-int/lit8 v4, v4, 0x1

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :cond_11
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;->a()Landroid/view/inputmethod/InputMethodManager;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 499
    .line 500
    .line 501
    const/4 v5, 0x0

    .line 502
    iput-boolean v5, v0, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;->e:Z

    .line 503
    .line 504
    :cond_12
    :goto_8
    return-void
.end method
