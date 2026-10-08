.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/VNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final b:Landroidx/compose/ui/graphics/vector/GroupComponent;

.field public c:Ljava/lang/String;

.field public d:Z

.field public final e:Landroidx/compose/ui/graphics/vector/DrawCache;

.field public f:Lkotlin/jvm/functions/Function0;

.field public final g:Landroidx/compose/runtime/MutableState;

.field public h:Landroidx/compose/ui/graphics/BlendModeColorFilter;

.field public final i:Landroidx/compose/runtime/MutableState;

.field public j:J

.field public k:F

.field public l:F

.field public final m:Lhi;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 5
    .line 6
    new-instance v0, Lhi;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lhi;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p1, Landroidx/compose/ui/graphics/vector/GroupComponent;->i:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/DrawCache;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 27
    .line 28
    new-instance v0, Ln;

    .line 29
    .line 30
    const/16 v1, 0x13

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    new-instance v0, Landroidx/compose/ui/geometry/Size;

    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/MutableState;

    .line 56
    .line 57
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    .line 63
    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    .line 67
    .line 68
    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    .line 69
    .line 70
    new-instance v0, Lhi;

    .line 71
    .line 72
    invoke-direct {v0, p0, p1}, Lhi;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;I)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->m:Lhi;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 6
    .line 7
    iget-boolean v3, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->d:Z

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v3, :cond_4

    .line 13
    .line 14
    iget-wide v7, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->e:J

    .line 15
    .line 16
    const-wide/16 v9, 0x10

    .line 17
    .line 18
    cmp-long v3, v7, v9

    .line 19
    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    move-object v3, v4

    .line 23
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/compose/ui/graphics/ColorFilter;

    .line 30
    .line 31
    sget v7, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 32
    .line 33
    instance-of v7, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const/4 v9, 0x5

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 40
    .line 41
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->c:I

    .line 42
    .line 43
    if-ne v3, v9, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-ne v3, v8, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-nez v3, :cond_4

    .line 50
    .line 51
    :goto_0
    instance-of v3, v1, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    move-object v3, v1

    .line 56
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 57
    .line 58
    iget v3, v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;->c:I

    .line 59
    .line 60
    if-ne v3, v9, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    if-ne v3, v8, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    if-nez v1, :cond_4

    .line 67
    .line 68
    :goto_1
    move v3, v5

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    const/4 v3, 0x0

    .line 71
    :goto_2
    iget-boolean v7, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 72
    .line 73
    iget-object v8, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/DrawCache;

    .line 74
    .line 75
    if-nez v7, :cond_6

    .line 76
    .line 77
    iget-wide v9, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    .line 78
    .line 79
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_6

    .line 88
    .line 89
    iget-object v7, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 90
    .line 91
    if-eqz v7, :cond_5

    .line 92
    .line 93
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/4 v7, 0x0

    .line 99
    :goto_3
    if-ne v3, v7, :cond_6

    .line 100
    .line 101
    goto/16 :goto_7

    .line 102
    .line 103
    :cond_6
    if-ne v3, v5, :cond_8

    .line 104
    .line 105
    iget-wide v9, v2, Landroidx/compose/ui/graphics/vector/GroupComponent;->e:J

    .line 106
    .line 107
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 108
    .line 109
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    const/high16 v5, 0x3f800000    # 1.0f

    .line 114
    .line 115
    cmpg-float v2, v2, v5

    .line 116
    .line 117
    if-nez v2, :cond_7

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    invoke-static {v9, v10, v5}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    :goto_4
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    const/4 v2, 0x0

    .line 130
    :goto_5
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->h:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 131
    .line 132
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 133
    .line 134
    .line 135
    move-result-wide v9

    .line 136
    const/16 v2, 0x20

    .line 137
    .line 138
    shr-long/2addr v9, v2

    .line 139
    long-to-int v5, v9

    .line 140
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    iget-object v7, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/MutableState;

    .line 145
    .line 146
    move-object v9, v7

    .line 147
    check-cast v9, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 148
    .line 149
    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    check-cast v9, Landroidx/compose/ui/geometry/Size;

    .line 154
    .line 155
    iget-wide v9, v9, Landroidx/compose/ui/geometry/Size;->a:J

    .line 156
    .line 157
    shr-long/2addr v9, v2

    .line 158
    long-to-int v9, v9

    .line 159
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    div-float/2addr v5, v9

    .line 164
    iput v5, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    .line 165
    .line 166
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 167
    .line 168
    .line 169
    move-result-wide v9

    .line 170
    const-wide v11, 0xffffffffL

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    and-long/2addr v9, v11

    .line 176
    long-to-int v5, v9

    .line 177
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 182
    .line 183
    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Landroidx/compose/ui/geometry/Size;

    .line 188
    .line 189
    iget-wide v9, v7, Landroidx/compose/ui/geometry/Size;->a:J

    .line 190
    .line 191
    and-long/2addr v9, v11

    .line 192
    long-to-int v7, v9

    .line 193
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    div-float/2addr v5, v7

    .line 198
    iput v5, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    .line 199
    .line 200
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 201
    .line 202
    .line 203
    move-result-wide v9

    .line 204
    shr-long/2addr v9, v2

    .line 205
    long-to-int v5, v9

    .line 206
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    float-to-double v9, v5

    .line 211
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 212
    .line 213
    .line 214
    move-result-wide v9

    .line 215
    double-to-float v5, v9

    .line 216
    float-to-int v5, v5

    .line 217
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 218
    .line 219
    .line 220
    move-result-wide v9

    .line 221
    and-long/2addr v9, v11

    .line 222
    long-to-int v7, v9

    .line 223
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    float-to-double v9, v7

    .line 228
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    .line 229
    .line 230
    .line 231
    move-result-wide v9

    .line 232
    double-to-float v7, v9

    .line 233
    float-to-int v7, v7

    .line 234
    int-to-long v9, v5

    .line 235
    shl-long/2addr v9, v2

    .line 236
    int-to-long v13, v7

    .line 237
    and-long/2addr v13, v11

    .line 238
    or-long/2addr v9, v13

    .line 239
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    iget-object v7, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 244
    .line 245
    iget-object v13, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->b:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 246
    .line 247
    if-eqz v7, :cond_9

    .line 248
    .line 249
    if-eqz v13, :cond_9

    .line 250
    .line 251
    shr-long v14, v9, v2

    .line 252
    .line 253
    long-to-int v14, v14

    .line 254
    iget-object v15, v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 255
    .line 256
    move/from16 v16, v2

    .line 257
    .line 258
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    move-wide/from16 v17, v11

    .line 263
    .line 264
    if-gt v14, v2, :cond_a

    .line 265
    .line 266
    and-long v11, v9, v17

    .line 267
    .line 268
    long-to-int v2, v11

    .line 269
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-gt v2, v11, :cond_a

    .line 274
    .line 275
    iget v2, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->d:I

    .line 276
    .line 277
    if-ne v2, v3, :cond_a

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_9
    move/from16 v16, v2

    .line 281
    .line 282
    move-wide/from16 v17, v11

    .line 283
    .line 284
    :cond_a
    shr-long v11, v9, v16

    .line 285
    .line 286
    long-to-int v2, v11

    .line 287
    and-long v11, v9, v17

    .line 288
    .line 289
    long-to-int v7, v11

    .line 290
    invoke-static {v2, v7, v3}, Landroidx/compose/ui/graphics/ImageBitmapKt;->a(III)Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-static {v7}, Landroidx/compose/ui/graphics/CanvasKt;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    iput-object v7, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 299
    .line 300
    iput-object v13, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->b:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 301
    .line 302
    iput v3, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->d:I

    .line 303
    .line 304
    :goto_6
    iput-wide v9, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->c:J

    .line 305
    .line 306
    iget-object v14, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->e:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 307
    .line 308
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 309
    .line 310
    .line 311
    move-result-wide v2

    .line 312
    iget-object v9, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 313
    .line 314
    iget-object v10, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 315
    .line 316
    iget-object v11, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 317
    .line 318
    iget-object v12, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 319
    .line 320
    move-object/from16 v22, v7

    .line 321
    .line 322
    iget-wide v6, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 323
    .line 324
    move-object/from16 v15, p1

    .line 325
    .line 326
    iput-object v15, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 327
    .line 328
    iput-object v5, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 329
    .line 330
    iput-object v13, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 331
    .line 332
    iput-wide v2, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 333
    .line 334
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 335
    .line 336
    .line 337
    sget-wide v15, Landroidx/compose/ui/graphics/Color;->b:J

    .line 338
    .line 339
    const/16 v20, 0x0

    .line 340
    .line 341
    const/16 v21, 0x3e

    .line 342
    .line 343
    const-wide/16 v17, 0x0

    .line 344
    .line 345
    const/16 v19, 0x0

    .line 346
    .line 347
    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 348
    .line 349
    .line 350
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->m:Lhi;

    .line 351
    .line 352
    invoke-virtual {v2, v14}, Lhi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 356
    .line 357
    .line 358
    iget-object v2, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 359
    .line 360
    iput-object v10, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->a:Landroidx/compose/ui/unit/Density;

    .line 361
    .line 362
    iput-object v11, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->b:Landroidx/compose/ui/unit/LayoutDirection;

    .line 363
    .line 364
    iput-object v12, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->c:Landroidx/compose/ui/graphics/Canvas;

    .line 365
    .line 366
    iput-wide v6, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->d:J

    .line 367
    .line 368
    move-object/from16 v7, v22

    .line 369
    .line 370
    iget-object v2, v7, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 371
    .line 372
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 373
    .line 374
    .line 375
    const/4 v2, 0x0

    .line 376
    iput-boolean v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 377
    .line 378
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 379
    .line 380
    .line 381
    move-result-wide v2

    .line 382
    iput-wide v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    .line 383
    .line 384
    :goto_7
    if-eqz v1, :cond_b

    .line 385
    .line 386
    move-object/from16 v30, v1

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_b
    move-object v1, v4

    .line 390
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 391
    .line 392
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    check-cast v1, Landroidx/compose/ui/graphics/ColorFilter;

    .line 397
    .line 398
    if-eqz v1, :cond_c

    .line 399
    .line 400
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 401
    .line 402
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 407
    .line 408
    :goto_8
    move-object/from16 v30, v0

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_c
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/VectorComponent;->h:Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 412
    .line 413
    goto :goto_8

    .line 414
    :goto_9
    iget-object v0, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->a:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 415
    .line 416
    if-eqz v0, :cond_d

    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_d
    const-string v1, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    .line 420
    .line 421
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :goto_a
    iget-wide v1, v8, Landroidx/compose/ui/graphics/vector/DrawCache;->c:J

    .line 425
    .line 426
    const/16 v31, 0x0

    .line 427
    .line 428
    const/16 v32, 0x35a

    .line 429
    .line 430
    const-wide/16 v27, 0x0

    .line 431
    .line 432
    move-object/from16 v23, p1

    .line 433
    .line 434
    move/from16 v29, p2

    .line 435
    .line 436
    move-object/from16 v24, v0

    .line 437
    .line 438
    move-wide/from16 v25, v1

    .line 439
    .line 440
    invoke-static/range {v23 .. v32}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->A(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJFLandroidx/compose/ui/graphics/ColorFilter;II)V

    .line 441
    .line 442
    .line 443
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Params: \tname: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n\tviewportWidth: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 28
    .line 29
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->a:J

    .line 30
    .line 31
    const/16 v3, 0x20

    .line 32
    .line 33
    shr-long/2addr v1, v3

    .line 34
    long-to-int v1, v1

    .line 35
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\n\tviewportHeight: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/compose/ui/geometry/Size;

    .line 54
    .line 55
    iget-wide v1, p0, Landroidx/compose/ui/geometry/Size;->a:J

    .line 56
    .line 57
    const-wide v3, 0xffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    and-long/2addr v1, v3

    .line 63
    long-to-int p0, v1

    .line 64
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, "\n"

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
