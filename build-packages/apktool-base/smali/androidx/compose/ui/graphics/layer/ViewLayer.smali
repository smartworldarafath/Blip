.class public final Landroidx/compose/ui/graphics/layer/ViewLayer;
.super Landroid/view/View;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final v:Landroidx/compose/ui/graphics/layer/ViewLayer$Companion$LayerOutlineProvider$1;


# instance fields
.field public final j:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

.field public final k:Landroidx/compose/ui/graphics/CanvasHolder;

.field public final l:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public m:Z

.field public n:Landroid/graphics/Outline;

.field public o:Z

.field public p:Landroidx/compose/ui/unit/Density;

.field public q:Landroidx/compose/ui/unit/LayoutDirection;

.field public r:Lkotlin/jvm/functions/Function1;

.field public s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public t:F

.field public u:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/layer/ViewLayer$Companion$LayerOutlineProvider$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->v:Landroidx/compose/ui/graphics/layer/ViewLayer$Companion$LayerOutlineProvider$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;Landroidx/compose/ui/graphics/CanvasHolder;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->j:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->k:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 11
    .line 12
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->l:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 13
    .line 14
    sget-object p1, Landroidx/compose/ui/graphics/layer/ViewLayer;->v:Landroidx/compose/ui/graphics/layer/ViewLayer$Companion$LayerOutlineProvider$1;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->o:Z

    .line 21
    .line 22
    sget-object p1, Landroidx/compose/ui/graphics/drawscope/DrawContextKt;->a:Landroidx/compose/ui/unit/Density;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->p:Landroidx/compose/ui/unit/Density;

    .line 25
    .line 26
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->q:Landroidx/compose/ui/unit/LayoutDirection;

    .line 29
    .line 30
    sget-object p1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->a:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object p1, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion$DefaultDrawBlock$1;->k:Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl$Companion$DefaultDrawBlock$1;

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->r:Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->t:F

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    cmpl-float v2, v2, v3

    .line 9
    .line 10
    const-wide v4, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/16 v6, 0x20

    .line 16
    .line 17
    iget-object v7, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->l:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 18
    .line 19
    iget-object v8, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->k:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 20
    .line 21
    if-gtz v2, :cond_1

    .line 22
    .line 23
    iget v2, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->u:F

    .line 24
    .line 25
    cmpl-float v2, v2, v3

    .line 26
    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v2, v8, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 32
    .line 33
    iget-object v3, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 34
    .line 35
    iput-object v1, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->p:Landroidx/compose/ui/unit/Density;

    .line 38
    .line 39
    iget-object v9, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->q:Landroidx/compose/ui/unit/LayoutDirection;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    int-to-float v10, v10

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    int-to-float v11, v11

    .line 51
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    int-to-long v12, v10

    .line 56
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    int-to-long v10, v10

    .line 61
    shl-long/2addr v12, v6

    .line 62
    and-long/2addr v4, v10

    .line 63
    or-long/2addr v4, v12

    .line 64
    iget-object v6, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 65
    .line 66
    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->r:Lkotlin/jvm/functions/Function1;

    .line 67
    .line 68
    iget-object v11, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 69
    .line 70
    iget-object v12, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 71
    .line 72
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    move-object/from16 p1, v14

    .line 85
    .line 86
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 87
    .line 88
    .line 89
    move-result-wide v14

    .line 90
    move-object/from16 v16, v3

    .line 91
    .line 92
    iget-object v3, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 93
    .line 94
    invoke-virtual {v12, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 104
    .line 105
    .line 106
    iput-object v6, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 109
    .line 110
    .line 111
    :try_start_0
    invoke-interface {v10, v7}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v1, p1

    .line 124
    .line 125
    invoke-virtual {v12, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 129
    .line 130
    .line 131
    iput-object v3, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 132
    .line 133
    iget-object v1, v8, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 134
    .line 135
    move-object/from16 v2, v16

    .line 136
    .line 137
    iput-object v2, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move-object/from16 v1, p1

    .line 143
    .line 144
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v12, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12, v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 157
    .line 158
    .line 159
    iput-object v3, v12, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 160
    .line 161
    throw v0

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    iget v3, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->t:F

    .line 167
    .line 168
    iget v9, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->u:F

    .line 169
    .line 170
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    .line 172
    .line 173
    iget-object v3, v8, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 174
    .line 175
    iget-object v9, v3, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 176
    .line 177
    iput-object v1, v3, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 178
    .line 179
    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->p:Landroidx/compose/ui/unit/Density;

    .line 180
    .line 181
    iget-object v11, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->q:Landroidx/compose/ui/unit/LayoutDirection;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    int-to-float v12, v12

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    int-to-float v13, v13

    .line 193
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    int-to-long v14, v12

    .line 198
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    int-to-long v12, v12

    .line 203
    shl-long/2addr v14, v6

    .line 204
    and-long/2addr v4, v12

    .line 205
    or-long/2addr v4, v14

    .line 206
    iget-object v6, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 207
    .line 208
    iget-object v12, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->r:Lkotlin/jvm/functions/Function1;

    .line 209
    .line 210
    iget-object v13, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 211
    .line 212
    iget-object v14, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 213
    .line 214
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b()Landroidx/compose/ui/unit/Density;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->c()Landroidx/compose/ui/unit/LayoutDirection;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object/from16 v16, v8

    .line 227
    .line 228
    move-object/from16 v17, v9

    .line 229
    .line 230
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 231
    .line 232
    .line 233
    move-result-wide v8

    .line 234
    move/from16 v18, v2

    .line 235
    .line 236
    iget-object v2, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 237
    .line 238
    invoke-virtual {v14, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v14, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 248
    .line 249
    .line 250
    iput-object v6, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 251
    .line 252
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidCanvas;->g()V

    .line 253
    .line 254
    .line 255
    :try_start_1
    invoke-interface {v12, v7}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v14, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v14, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v14, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 271
    .line 272
    .line 273
    iput-object v2, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 274
    .line 275
    move-object/from16 v1, v16

    .line 276
    .line 277
    iget-object v1, v1, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 278
    .line 279
    move-object/from16 v2, v17

    .line 280
    .line 281
    iput-object v2, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 282
    .line 283
    move-object/from16 v1, p1

    .line 284
    .line 285
    move/from16 v2, v18

    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 288
    .line 289
    .line 290
    :goto_1
    const/4 v1, 0x0

    .line 291
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/layer/ViewLayer;->m:Z

    .line 292
    .line 293
    return-void

    .line 294
    :catchall_1
    move-exception v0

    .line 295
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidCanvas;->r()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v14, v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->f(Landroidx/compose/ui/unit/Density;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14, v15}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->g(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v14, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->e(Landroidx/compose/ui/graphics/Canvas;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v14, v8, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->h(J)V

    .line 308
    .line 309
    .line 310
    iput-object v2, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 311
    .line 312
    throw v0
.end method

.method public final forceLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCanUseCompositingLayer$ui_graphics()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getCanvasHolder()Landroidx/compose/ui/graphics/CanvasHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->k:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOwnerView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->j:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->m:Z

    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCanUseCompositingLayer$ui_graphics(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->o:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->o:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/ViewLayer;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setInvalidated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/ViewLayer;->m:Z

    .line 2
    .line 3
    return-void
.end method
