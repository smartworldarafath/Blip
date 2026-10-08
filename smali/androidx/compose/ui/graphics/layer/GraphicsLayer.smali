.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public A:Z

.field public B:Landroid/graphics/RectF;

.field public final a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

.field public b:Landroidx/compose/ui/unit/Density;

.field public c:Landroidx/compose/ui/unit/LayoutDirection;

.field public d:Lkotlin/jvm/functions/Function1;

.field public final e:Lkotlin/jvm/functions/Function1;

.field public f:Landroid/graphics/Outline;

.field public g:Z

.field public h:J

.field public i:J

.field public j:F

.field public k:Landroidx/compose/ui/graphics/Outline;

.field public l:Landroidx/compose/ui/graphics/Path;

.field public m:Landroidx/compose/ui/graphics/AndroidPath;

.field public n:Z

.field public o:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public p:Landroidx/compose/ui/graphics/AndroidPaint;

.field public q:I

.field public final r:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

.field public s:Z

.field public t:J

.field public u:J

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "robolectric"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawContextKt;->a:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;->k:Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer$clipDrawBlock$1;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->e:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 31
    .line 32
    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    iput-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 38
    .line 39
    new-instance v4, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->r:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-interface {p1, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E(Z)V

    .line 48
    .line 49
    .line 50
    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->t:J

    .line 51
    .line 52
    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    .line 53
    .line 54
    iput-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->z:J

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_10

    .line 7
    .line 8
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->L()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v5, 0x0

    .line 20
    cmpl-float v1, v1, v5

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v4, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E(Z)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    invoke-interface {v4, v3, v5, v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->i(Landroid/graphics/Outline;J)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 36
    .line 37
    const-wide v5, 0xffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/16 v7, 0x20

    .line 43
    .line 44
    if-eqz v1, :cond_d

    .line 45
    .line 46
    iget-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->B:Landroid/graphics/RectF;

    .line 47
    .line 48
    if-nez v8, :cond_2

    .line 49
    .line 50
    new-instance v8, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->B:Landroid/graphics/RectF;

    .line 56
    .line 57
    :cond_2
    instance-of v9, v1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 58
    .line 59
    const-string v10, "Unable to obtain android.graphics.Path"

    .line 60
    .line 61
    if-eqz v9, :cond_c

    .line 62
    .line 63
    move-object v11, v1

    .line 64
    check-cast v11, Landroidx/compose/ui/graphics/AndroidPath;

    .line 65
    .line 66
    iget-object v11, v11, Landroidx/compose/ui/graphics/AndroidPath;->a:Landroid/graphics/Path;

    .line 67
    .line 68
    invoke-virtual {v11, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 69
    .line 70
    .line 71
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .line 73
    const/16 v13, 0x1c

    .line 74
    .line 75
    const/4 v14, 0x1

    .line 76
    if-gt v12, v13, :cond_5

    .line 77
    .line 78
    invoke-virtual {v11}, Landroid/graphics/Path;->isConvex()Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v13, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f:Landroid/graphics/Outline;

    .line 86
    .line 87
    if-eqz v9, :cond_4

    .line 88
    .line 89
    invoke-virtual {v9}, Landroid/graphics/Outline;->setEmpty()V

    .line 90
    .line 91
    .line 92
    :cond_4
    iput-boolean v14, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 93
    .line 94
    move-object v13, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    :goto_1
    iget-object v13, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f:Landroid/graphics/Outline;

    .line 97
    .line 98
    if-nez v13, :cond_6

    .line 99
    .line 100
    new-instance v13, Landroid/graphics/Outline;

    .line 101
    .line 102
    invoke-direct {v13}, Landroid/graphics/Outline;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v13, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f:Landroid/graphics/Outline;

    .line 106
    .line 107
    :cond_6
    const/16 v15, 0x1e

    .line 108
    .line 109
    if-lt v12, v15, :cond_8

    .line 110
    .line 111
    if-eqz v9, :cond_7

    .line 112
    .line 113
    invoke-static {v13, v11}, Lj;->s(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    invoke-static {v10}, Lfe;->t(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    if-eqz v9, :cond_b

    .line 122
    .line 123
    invoke-virtual {v13, v11}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    iget v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:I

    .line 127
    .line 128
    iget v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:I

    .line 129
    .line 130
    invoke-virtual {v13, v9, v10}, Landroid/graphics/Outline;->offset(II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13}, Landroid/graphics/Outline;->canClip()Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    xor-int/2addr v9, v14

    .line 138
    iput-boolean v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 139
    .line 140
    :goto_3
    iput-object v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 141
    .line 142
    if-eqz v13, :cond_9

    .line 143
    .line 144
    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a()F

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {v13, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 149
    .line 150
    .line 151
    move-object v3, v13

    .line 152
    :cond_9
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    int-to-long v9, v1

    .line 169
    shl-long/2addr v9, v7

    .line 170
    int-to-long v7, v8

    .line 171
    and-long/2addr v5, v7

    .line 172
    or-long/2addr v5, v9

    .line 173
    invoke-interface {v4, v3, v5, v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->i(Landroid/graphics/Outline;J)V

    .line 174
    .line 175
    .line 176
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 177
    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 181
    .line 182
    if-eqz v1, :cond_a

    .line 183
    .line 184
    invoke-interface {v4, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E(Z)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->k()V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_a
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 193
    .line 194
    invoke-interface {v4, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E(Z)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_5

    .line 198
    .line 199
    :cond_b
    invoke-static {v10}, Lfe;->t(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_c
    invoke-static {v10}, Lfe;->t(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_d
    iget-boolean v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->A:Z

    .line 208
    .line 209
    invoke-interface {v4, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->E(Z)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f:Landroid/graphics/Outline;

    .line 213
    .line 214
    if-nez v1, :cond_e

    .line 215
    .line 216
    new-instance v1, Landroid/graphics/Outline;

    .line 217
    .line 218
    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    .line 219
    .line 220
    .line 221
    iput-object v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->f:Landroid/graphics/Outline;

    .line 222
    .line 223
    :cond_e
    move-object v8, v1

    .line 224
    iget-wide v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    .line 225
    .line 226
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 227
    .line 228
    .line 229
    move-result-wide v9

    .line 230
    iget-wide v11, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 231
    .line 232
    iget-wide v13, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 233
    .line 234
    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    cmp-long v1, v13, v15

    .line 240
    .line 241
    if-nez v1, :cond_f

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_f
    move-wide v9, v13

    .line 245
    :goto_4
    shr-long v13, v11, v7

    .line 246
    .line 247
    long-to-int v1, v13

    .line 248
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    and-long/2addr v11, v5

    .line 257
    long-to-int v11, v11

    .line 258
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    shr-long v13, v9, v7

    .line 271
    .line 272
    long-to-int v14, v13

    .line 273
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    add-float/2addr v13, v1

    .line 278
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    and-long/2addr v9, v5

    .line 287
    long-to-int v15, v9

    .line 288
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    add-float/2addr v9, v11

    .line 293
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    iget v13, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->j:F

    .line 298
    .line 299
    move v11, v1

    .line 300
    move v10, v12

    .line 301
    move v12, v9

    .line 302
    move v9, v3

    .line 303
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a()F

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {v8, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 311
    .line 312
    .line 313
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    int-to-long v9, v1

    .line 330
    shl-long/2addr v9, v7

    .line 331
    int-to-long v11, v3

    .line 332
    and-long/2addr v5, v11

    .line 333
    or-long/2addr v5, v9

    .line 334
    invoke-interface {v4, v8, v5, v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->i(Landroid/graphics/Outline;J)V

    .line 335
    .line 336
    .line 337
    :cond_10
    :goto_5
    iput-boolean v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 338
    .line 339
    return-void
.end method

.method public final b()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->r:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    iput v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->c:Landroidx/collection/MutableScatterSet;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v2, v0, Landroidx/collection/ScatterSet;->a:[J

    .line 34
    .line 35
    array-length v3, v2

    .line 36
    add-int/lit8 v3, v3, -0x2

    .line 37
    .line 38
    if-ltz v3, :cond_4

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    move v5, v4

    .line 42
    :goto_0
    aget-wide v6, v2, v5

    .line 43
    .line 44
    not-long v8, v6

    .line 45
    const/4 v10, 0x7

    .line 46
    shl-long/2addr v8, v10

    .line 47
    and-long/2addr v8, v6

    .line 48
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v8, v10

    .line 54
    cmp-long v8, v8, v10

    .line 55
    .line 56
    if-eqz v8, :cond_3

    .line 57
    .line 58
    sub-int v8, v5, v3

    .line 59
    .line 60
    not-int v8, v8

    .line 61
    ushr-int/lit8 v8, v8, 0x1f

    .line 62
    .line 63
    const/16 v9, 0x8

    .line 64
    .line 65
    rsub-int/lit8 v8, v8, 0x8

    .line 66
    .line 67
    move v10, v4

    .line 68
    :goto_1
    if-ge v10, v8, :cond_2

    .line 69
    .line 70
    const-wide/16 v11, 0xff

    .line 71
    .line 72
    and-long/2addr v11, v6

    .line 73
    const-wide/16 v13, 0x80

    .line 74
    .line 75
    cmp-long v11, v11, v13

    .line 76
    .line 77
    if-gez v11, :cond_1

    .line 78
    .line 79
    shl-int/lit8 v11, v5, 0x3

    .line 80
    .line 81
    add-int/2addr v11, v10

    .line 82
    aget-object v11, v1, v11

    .line 83
    .line 84
    check-cast v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 85
    .line 86
    iget v12, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 87
    .line 88
    add-int/lit8 v12, v12, -0x1

    .line 89
    .line 90
    iput v12, v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 91
    .line 92
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b()V

    .line 93
    .line 94
    .line 95
    :cond_1
    shr-long/2addr v6, v9

    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    if-ne v8, v9, :cond_4

    .line 100
    .line 101
    :cond_3
    if-eq v5, v3, :cond_4

    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->f()V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 110
    .line 111
    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->k()V

    .line 112
    .line 113
    .line 114
    :cond_6
    return-void
.end method

.method public final c(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->r:Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 4
    .line 5
    iput-object v1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->c:Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->d:Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    sget-object v2, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 22
    .line 23
    new-instance v2, Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    invoke-direct {v2}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->d:Landroidx/collection/MutableScatterSet;

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterSet;->k(Landroidx/collection/ScatterSet;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->f()V

    .line 34
    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->e:Z

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->d:Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    iput-boolean p0, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->e:Z

    .line 46
    .line 47
    iget-object p1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget v1, p1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 52
    .line 53
    add-int/lit8 v1, v1, -0x1

    .line 54
    .line 55
    iput v1, p1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b()V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object p1, v0, Landroidx/compose/ui/graphics/layer/ChildLayerDependenciesTracker;->d:Landroidx/collection/MutableScatterSet;

    .line 61
    .line 62
    if-eqz p1, :cond_7

    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/collection/ScatterSet;->c()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    iget-object v0, p1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v1, p1, Landroidx/collection/ScatterSet;->a:[J

    .line 73
    .line 74
    array-length v2, v1

    .line 75
    add-int/lit8 v2, v2, -0x2

    .line 76
    .line 77
    if-ltz v2, :cond_6

    .line 78
    .line 79
    move v3, p0

    .line 80
    :goto_0
    aget-wide v4, v1, v3

    .line 81
    .line 82
    not-long v6, v4

    .line 83
    const/4 v8, 0x7

    .line 84
    shl-long/2addr v6, v8

    .line 85
    and-long/2addr v6, v4

    .line 86
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    and-long/2addr v6, v8

    .line 92
    cmp-long v6, v6, v8

    .line 93
    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    sub-int v6, v3, v2

    .line 97
    .line 98
    not-int v6, v6

    .line 99
    ushr-int/lit8 v6, v6, 0x1f

    .line 100
    .line 101
    const/16 v7, 0x8

    .line 102
    .line 103
    rsub-int/lit8 v6, v6, 0x8

    .line 104
    .line 105
    move v8, p0

    .line 106
    :goto_1
    if-ge v8, v6, :cond_4

    .line 107
    .line 108
    const-wide/16 v9, 0xff

    .line 109
    .line 110
    and-long/2addr v9, v4

    .line 111
    const-wide/16 v11, 0x80

    .line 112
    .line 113
    cmp-long v9, v9, v11

    .line 114
    .line 115
    if-gez v9, :cond_3

    .line 116
    .line 117
    shl-int/lit8 v9, v3, 0x3

    .line 118
    .line 119
    add-int/2addr v9, v8

    .line 120
    aget-object v9, v0, v9

    .line 121
    .line 122
    check-cast v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 123
    .line 124
    iget v10, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 125
    .line 126
    add-int/lit8 v10, v10, -0x1

    .line 127
    .line 128
    iput v10, v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->q:I

    .line 129
    .line 130
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->b()V

    .line 131
    .line 132
    .line 133
    :cond_3
    shr-long/2addr v4, v7

    .line 134
    add-int/lit8 v8, v8, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    if-ne v6, v7, :cond_6

    .line 138
    .line 139
    :cond_5
    if-eq v3, v2, :cond_6

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_6
    invoke-virtual {p1}, Landroidx/collection/MutableScatterSet;->f()V

    .line 145
    .line 146
    .line 147
    :cond_7
    return-void
.end method

.method public final d()Landroidx/compose/ui/graphics/Outline;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k:Landroidx/compose/ui/graphics/Outline;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k:Landroidx/compose/ui/graphics/Outline;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->u:J

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 25
    .line 26
    iget-wide v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 27
    .line 28
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmp-long v6, v4, v6

    .line 34
    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-wide v0, v4

    .line 39
    :goto_0
    const/16 v4, 0x20

    .line 40
    .line 41
    shr-long v5, v2, v4

    .line 42
    .line 43
    long-to-int v5, v5

    .line 44
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const-wide v7, 0xffffffffL

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    and-long/2addr v2, v7

    .line 54
    long-to-int v2, v2

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    shr-long v9, v0, v4

    .line 60
    .line 61
    long-to-int v3, v9

    .line 62
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-float/2addr v3, v6

    .line 67
    and-long/2addr v0, v7

    .line 68
    long-to-int v0, v0

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-float v9, v0, v2

    .line 74
    .line 75
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->j:F

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    cmpl-float v1, v0, v1

    .line 79
    .line 80
    if-lez v1, :cond_3

    .line 81
    .line 82
    new-instance v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    int-to-long v10, v5

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v12, v0

    .line 94
    shl-long v4, v10, v4

    .line 95
    .line 96
    and-long/2addr v7, v12

    .line 97
    or-long v10, v4, v7

    .line 98
    .line 99
    move v7, v2

    .line 100
    move v8, v3

    .line 101
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/geometry/RoundRectKt;->a(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move v7, v2

    .line 110
    move v8, v3

    .line 111
    new-instance v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 112
    .line 113
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 114
    .line 115
    invoke-direct {v0, v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k:Landroidx/compose/ui/graphics/Outline;

    .line 122
    .line 123
    return-object v1
.end method

.method public final e(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    cmpg-float v0, v0, p1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->v(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(JJF)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->v:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->w:I

    .line 5
    .line 6
    int-to-float v1, v1

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-long v2, v0

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    const/16 v4, 0x20

    .line 18
    .line 19
    shl-long/2addr v2, v4

    .line 20
    const-wide v4, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v0, v4

    .line 26
    or-long/2addr v0, v2

    .line 27
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 32
    .line 33
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 40
    .line 41
    invoke-static {v0, v1, p3, p4}, Landroidx/compose/ui/geometry/Size;->a(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->j:F

    .line 48
    .line 49
    cmpg-float v0, v0, p5

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->k:Landroidx/compose/ui/graphics/Outline;

    .line 61
    .line 62
    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->l:Landroidx/compose/ui/graphics/Path;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->g:Z

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->n:Z

    .line 69
    .line 70
    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h:J

    .line 71
    .line 72
    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->i:J

    .line 73
    .line 74
    iput p5, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->j:F

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->a()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
