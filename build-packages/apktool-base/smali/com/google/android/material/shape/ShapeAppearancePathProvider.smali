.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
    }
.end annotation


# instance fields
.field public final a:[Lcom/google/android/material/shape/ShapePath;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Lcom/google/android/material/shape/ShapePath;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 12
    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    .line 37
    .line 38
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    .line 48
    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 75
    .line 76
    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    .line 77
    .line 78
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 79
    .line 80
    .line 81
    aput-object v3, v2, v1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v3, v2, v1

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v3, v2, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 6
    .line 7
    .line 8
    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 11
    .line 12
    .line 13
    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    .line 14
    .line 15
    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    .line 20
    invoke-virtual {v8, v4, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;

    .line 24
    .line 25
    move-object/from16 v2, p1

    .line 26
    .line 27
    move/from16 v3, p2

    .line 28
    .line 29
    move-object/from16 v5, p4

    .line 30
    .line 31
    move-object/from16 v6, p5

    .line 32
    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_0
    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 38
    .line 39
    const/4 v10, 0x2

    .line 40
    const/4 v11, 0x3

    .line 41
    iget-object v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    .line 42
    .line 43
    const/4 v13, 0x4

    .line 44
    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 45
    .line 46
    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 47
    .line 48
    const/16 p2, 0x0

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-ge v5, v13, :cond_9

    .line 52
    .line 53
    if-eq v5, v3, :cond_2

    .line 54
    .line 55
    if-eq v5, v10, :cond_1

    .line 56
    .line 57
    if-eq v5, v11, :cond_0

    .line 58
    .line 59
    iget-object v13, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-object v13, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v13, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v13, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    .line 69
    .line 70
    :goto_1
    if-eq v5, v3, :cond_5

    .line 71
    .line 72
    if-eq v5, v10, :cond_4

    .line 73
    .line 74
    if-eq v5, v11, :cond_3

    .line 75
    .line 76
    iget-object v11, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/CornerTreatment;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v11, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->a:Lcom/google/android/material/shape/CornerTreatment;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    iget-object v11, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/CornerTreatment;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget-object v11, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/CornerTreatment;

    .line 86
    .line 87
    :goto_2
    aget-object v10, v14, v5

    .line 88
    .line 89
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-interface {v13, v4}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    iget v3, v1, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->a:F

    .line 97
    .line 98
    invoke-virtual {v11, v10, v3, v13}, Lcom/google/android/material/shape/CornerTreatment;->a(Lcom/google/android/material/shape/ShapePath;FF)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v3, v5, 0x1

    .line 102
    .line 103
    mul-int/lit8 v10, v3, 0x5a

    .line 104
    .line 105
    int-to-float v10, v10

    .line 106
    aget-object v11, v15, v5

    .line 107
    .line 108
    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 109
    .line 110
    .line 111
    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    .line 112
    .line 113
    const/4 v13, 0x1

    .line 114
    if-eq v5, v13, :cond_8

    .line 115
    .line 116
    const/4 v13, 0x2

    .line 117
    if-eq v5, v13, :cond_7

    .line 118
    .line 119
    const/4 v13, 0x3

    .line 120
    if-eq v5, v13, :cond_6

    .line 121
    .line 122
    iget v13, v4, Landroid/graphics/RectF;->right:F

    .line 123
    .line 124
    move-object/from16 v17, v1

    .line 125
    .line 126
    iget v1, v4, Landroid/graphics/RectF;->top:F

    .line 127
    .line 128
    invoke-virtual {v11, v13, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move-object/from16 v17, v1

    .line 133
    .line 134
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 135
    .line 136
    iget v13, v4, Landroid/graphics/RectF;->top:F

    .line 137
    .line 138
    invoke-virtual {v11, v1, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_7
    move-object/from16 v17, v1

    .line 143
    .line 144
    iget v1, v4, Landroid/graphics/RectF;->left:F

    .line 145
    .line 146
    iget v13, v4, Landroid/graphics/RectF;->bottom:F

    .line 147
    .line 148
    invoke-virtual {v11, v1, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    move-object/from16 v17, v1

    .line 153
    .line 154
    iget v1, v4, Landroid/graphics/RectF;->right:F

    .line 155
    .line 156
    iget v13, v4, Landroid/graphics/RectF;->bottom:F

    .line 157
    .line 158
    invoke-virtual {v11, v1, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 159
    .line 160
    .line 161
    :goto_3
    aget-object v1, v15, v5

    .line 162
    .line 163
    iget v13, v11, Landroid/graphics/PointF;->x:F

    .line 164
    .line 165
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 166
    .line 167
    invoke-virtual {v1, v13, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 168
    .line 169
    .line 170
    aget-object v1, v15, v5

    .line 171
    .line 172
    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 173
    .line 174
    .line 175
    aget-object v1, v14, v5

    .line 176
    .line 177
    iget v11, v1, Lcom/google/android/material/shape/ShapePath;->b:F

    .line 178
    .line 179
    aput v11, v12, p2

    .line 180
    .line 181
    iget v1, v1, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 182
    .line 183
    const/16 v16, 0x1

    .line 184
    .line 185
    aput v1, v12, v16

    .line 186
    .line 187
    aget-object v1, v15, v5

    .line 188
    .line 189
    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    .line 191
    .line 192
    aget-object v1, v9, v5

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 195
    .line 196
    .line 197
    aget-object v1, v9, v5

    .line 198
    .line 199
    aget v11, v12, p2

    .line 200
    .line 201
    aget v12, v12, v16

    .line 202
    .line 203
    invoke-virtual {v1, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 204
    .line 205
    .line 206
    aget-object v1, v9, v5

    .line 207
    .line 208
    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 209
    .line 210
    .line 211
    move v5, v3

    .line 212
    move-object/from16 v1, v17

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_9
    move/from16 v1, p2

    .line 217
    .line 218
    :goto_4
    if-ge v1, v13, :cond_13

    .line 219
    .line 220
    aget-object v3, v14, v1

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    aput v5, v12, p2

    .line 227
    .line 228
    iget v3, v3, Lcom/google/android/material/shape/ShapePath;->a:F

    .line 229
    .line 230
    const/16 v16, 0x1

    .line 231
    .line 232
    aput v3, v12, v16

    .line 233
    .line 234
    aget-object v3, v15, v1

    .line 235
    .line 236
    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 237
    .line 238
    .line 239
    if-nez v1, :cond_a

    .line 240
    .line 241
    aget v3, v12, p2

    .line 242
    .line 243
    aget v10, v12, v16

    .line 244
    .line 245
    invoke-virtual {v6, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_a
    aget v3, v12, p2

    .line 250
    .line 251
    aget v10, v12, v16

    .line 252
    .line 253
    invoke-virtual {v6, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    .line 255
    .line 256
    :goto_5
    aget-object v3, v14, v1

    .line 257
    .line 258
    aget-object v10, v15, v1

    .line 259
    .line 260
    invoke-virtual {v3, v10, v6}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 261
    .line 262
    .line 263
    if-eqz p4, :cond_b

    .line 264
    .line 265
    aget-object v3, v14, v1

    .line 266
    .line 267
    aget-object v10, v15, v1

    .line 268
    .line 269
    move-object/from16 v11, p4

    .line 270
    .line 271
    check-cast v11, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    .line 272
    .line 273
    iget-object v11, v11, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 274
    .line 275
    iget-object v13, v11, Lcom/google/android/material/shape/MaterialShapeDrawable;->m:Ljava/util/BitSet;

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    move/from16 v18, v5

    .line 281
    .line 282
    move/from16 v5, p2

    .line 283
    .line 284
    invoke-virtual {v13, v1, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 285
    .line 286
    .line 287
    iget-object v5, v11, Lcom/google/android/material/shape/MaterialShapeDrawable;->k:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 288
    .line 289
    iget v11, v3, Lcom/google/android/material/shape/ShapePath;->e:F

    .line 290
    .line 291
    invoke-virtual {v3, v11}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 292
    .line 293
    .line 294
    new-instance v11, Landroid/graphics/Matrix;

    .line 295
    .line 296
    invoke-direct {v11, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 297
    .line 298
    .line 299
    new-instance v10, Ljava/util/ArrayList;

    .line 300
    .line 301
    iget-object v3, v3, Lcom/google/android/material/shape/ShapePath;->g:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    .line 305
    .line 306
    new-instance v3, Lcom/google/android/material/shape/ShapePath$1;

    .line 307
    .line 308
    invoke-direct {v3, v10, v11}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 309
    .line 310
    .line 311
    aput-object v3, v5, v1

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_b
    move/from16 v18, v5

    .line 315
    .line 316
    :goto_6
    add-int/lit8 v5, v1, 0x1

    .line 317
    .line 318
    rem-int/lit8 v3, v5, 0x4

    .line 319
    .line 320
    aget-object v10, v14, v1

    .line 321
    .line 322
    iget v11, v10, Lcom/google/android/material/shape/ShapePath;->b:F

    .line 323
    .line 324
    const/4 v13, 0x0

    .line 325
    aput v11, v12, v13

    .line 326
    .line 327
    iget v10, v10, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 328
    .line 329
    const/16 v16, 0x1

    .line 330
    .line 331
    aput v10, v12, v16

    .line 332
    .line 333
    aget-object v10, v15, v1

    .line 334
    .line 335
    invoke-virtual {v10, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 336
    .line 337
    .line 338
    aget-object v10, v14, v3

    .line 339
    .line 340
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    .line 344
    .line 345
    aput v18, v11, v13

    .line 346
    .line 347
    iget v10, v10, Lcom/google/android/material/shape/ShapePath;->a:F

    .line 348
    .line 349
    aput v10, v11, v16

    .line 350
    .line 351
    aget-object v10, v15, v3

    .line 352
    .line 353
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 354
    .line 355
    .line 356
    aget v10, v12, v13

    .line 357
    .line 358
    aget v19, v11, v13

    .line 359
    .line 360
    sub-float v10, v10, v19

    .line 361
    .line 362
    move v13, v5

    .line 363
    float-to-double v4, v10

    .line 364
    aget v10, v12, v16

    .line 365
    .line 366
    aget v11, v11, v16

    .line 367
    .line 368
    sub-float/2addr v10, v11

    .line 369
    float-to-double v10, v10

    .line 370
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 371
    .line 372
    .line 373
    move-result-wide v4

    .line 374
    double-to-float v4, v4

    .line 375
    const v5, 0x3a83126f    # 0.001f

    .line 376
    .line 377
    .line 378
    sub-float/2addr v4, v5

    .line 379
    move/from16 v5, v18

    .line 380
    .line 381
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    aget-object v5, v14, v1

    .line 386
    .line 387
    iget v10, v5, Lcom/google/android/material/shape/ShapePath;->b:F

    .line 388
    .line 389
    const/4 v11, 0x0

    .line 390
    aput v10, v12, v11

    .line 391
    .line 392
    iget v5, v5, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 393
    .line 394
    const/4 v10, 0x1

    .line 395
    aput v5, v12, v10

    .line 396
    .line 397
    aget-object v5, v15, v1

    .line 398
    .line 399
    invoke-virtual {v5, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 400
    .line 401
    .line 402
    if-eq v1, v10, :cond_c

    .line 403
    .line 404
    const/4 v5, 0x3

    .line 405
    if-eq v1, v5, :cond_c

    .line 406
    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    aget v11, v12, v10

    .line 412
    .line 413
    sub-float/2addr v5, v11

    .line 414
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 415
    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    const/4 v11, 0x0

    .line 423
    aget v10, v12, v11

    .line 424
    .line 425
    sub-float/2addr v5, v10

    .line 426
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 427
    .line 428
    .line 429
    :goto_7
    const/high16 v5, 0x43870000    # 270.0f

    .line 430
    .line 431
    iget-object v10, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    .line 432
    .line 433
    const/4 v11, 0x0

    .line 434
    invoke-virtual {v10, v11, v5, v11}, Lcom/google/android/material/shape/ShapePath;->d(FFF)V

    .line 435
    .line 436
    .line 437
    const/4 v5, 0x1

    .line 438
    if-eq v1, v5, :cond_f

    .line 439
    .line 440
    const/4 v5, 0x2

    .line 441
    if-eq v1, v5, :cond_e

    .line 442
    .line 443
    const/4 v11, 0x3

    .line 444
    if-eq v1, v11, :cond_d

    .line 445
    .line 446
    iget-object v5, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/EdgeTreatment;

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_d
    iget-object v5, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/EdgeTreatment;

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_e
    const/4 v11, 0x3

    .line 453
    iget-object v5, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/EdgeTreatment;

    .line 454
    .line 455
    goto :goto_8

    .line 456
    :cond_f
    const/4 v11, 0x3

    .line 457
    iget-object v5, v2, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/EdgeTreatment;

    .line 458
    .line 459
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    const/4 v5, 0x0

    .line 463
    invoke-virtual {v10, v4, v5}, Lcom/google/android/material/shape/ShapePath;->c(FF)V

    .line 464
    .line 465
    .line 466
    iget-object v4, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    .line 467
    .line 468
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 469
    .line 470
    .line 471
    aget-object v5, v9, v1

    .line 472
    .line 473
    invoke-virtual {v10, v5, v4}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 474
    .line 475
    .line 476
    iget-boolean v5, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    .line 477
    .line 478
    if-eqz v5, :cond_10

    .line 479
    .line 480
    invoke-virtual {v0, v4, v1}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b(Landroid/graphics/Path;I)Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-nez v5, :cond_11

    .line 485
    .line 486
    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b(Landroid/graphics/Path;I)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_10

    .line 491
    .line 492
    goto :goto_9

    .line 493
    :cond_10
    const/16 v16, 0x1

    .line 494
    .line 495
    goto :goto_a

    .line 496
    :cond_11
    :goto_9
    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 497
    .line 498
    invoke-virtual {v4, v4, v8, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 499
    .line 500
    .line 501
    const/4 v5, 0x0

    .line 502
    const/16 v18, 0x0

    .line 503
    .line 504
    aput v18, v12, v5

    .line 505
    .line 506
    iget v3, v10, Lcom/google/android/material/shape/ShapePath;->a:F

    .line 507
    .line 508
    const/16 v16, 0x1

    .line 509
    .line 510
    aput v3, v12, v16

    .line 511
    .line 512
    aget-object v3, v9, v1

    .line 513
    .line 514
    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 515
    .line 516
    .line 517
    aget v3, v12, v5

    .line 518
    .line 519
    aget v4, v12, v16

    .line 520
    .line 521
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 522
    .line 523
    .line 524
    aget-object v3, v9, v1

    .line 525
    .line 526
    invoke-virtual {v10, v3, v7}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 527
    .line 528
    .line 529
    goto :goto_b

    .line 530
    :goto_a
    aget-object v3, v9, v1

    .line 531
    .line 532
    invoke-virtual {v10, v3, v6}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 533
    .line 534
    .line 535
    :goto_b
    if-eqz p4, :cond_12

    .line 536
    .line 537
    aget-object v3, v9, v1

    .line 538
    .line 539
    move-object/from16 v4, p4

    .line 540
    .line 541
    check-cast v4, Lcom/google/android/material/shape/MaterialShapeDrawable$1;

    .line 542
    .line 543
    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable$1;->a:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 544
    .line 545
    iget-object v5, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->m:Ljava/util/BitSet;

    .line 546
    .line 547
    add-int/lit8 v11, v1, 0x4

    .line 548
    .line 549
    const/4 v0, 0x0

    .line 550
    invoke-virtual {v5, v11, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 551
    .line 552
    .line 553
    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->l:[Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;

    .line 554
    .line 555
    iget v5, v10, Lcom/google/android/material/shape/ShapePath;->e:F

    .line 556
    .line 557
    invoke-virtual {v10, v5}, Lcom/google/android/material/shape/ShapePath;->a(F)V

    .line 558
    .line 559
    .line 560
    new-instance v5, Landroid/graphics/Matrix;

    .line 561
    .line 562
    invoke-direct {v5, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 563
    .line 564
    .line 565
    new-instance v3, Ljava/util/ArrayList;

    .line 566
    .line 567
    iget-object v10, v10, Lcom/google/android/material/shape/ShapePath;->g:Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 570
    .line 571
    .line 572
    new-instance v10, Lcom/google/android/material/shape/ShapePath$1;

    .line 573
    .line 574
    invoke-direct {v10, v3, v5}, Lcom/google/android/material/shape/ShapePath$1;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    .line 575
    .line 576
    .line 577
    aput-object v10, v4, v1

    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_12
    const/4 v0, 0x0

    .line 581
    :goto_c
    move-object/from16 v4, p3

    .line 582
    .line 583
    move/from16 p2, v0

    .line 584
    .line 585
    move v1, v13

    .line 586
    const/4 v13, 0x4

    .line 587
    move-object/from16 v0, p0

    .line 588
    .line 589
    goto/16 :goto_4

    .line 590
    .line 591
    :cond_13
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7}, Landroid/graphics/Path;->isEmpty()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-nez v0, :cond_14

    .line 602
    .line 603
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 604
    .line 605
    invoke-virtual {v6, v7, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 606
    .line 607
    .line 608
    :cond_14
    return-void
.end method

.method public final b(Landroid/graphics/Path;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 11
    .line 12
    aget-object p0, p0, p2

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    cmpl-float p0, p0, v0

    .line 58
    .line 59
    if-lez p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_1
    :goto_0
    return p2
.end method
