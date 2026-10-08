.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public j:Landroidx/compose/ui/graphics/AndroidPaint;

.field public k:Z

.field public l:Landroidx/compose/ui/graphics/ColorFilter;

.field public m:F

.field public n:Landroidx/compose/ui/unit/LayoutDirection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->m:F

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->n:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic h(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/node/LayoutNodeDrawScope;J)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/graphics/painter/Painter;->g(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public d(F)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public e(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public f(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Landroidx/compose/ui/node/LayoutNodeDrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->m:F

    .line 4
    .line 5
    cmpg-float v1, v1, p4

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->d(F)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_4

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpg-float v1, p4, v1

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/compose/ui/graphics/painter/Painter;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v4, p4}, Landroidx/compose/ui/graphics/AndroidPaint;->d(F)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-boolean v3, p0, Landroidx/compose/ui/graphics/painter/Painter;->k:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-nez v4, :cond_3

    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iput-object v4, p0, Landroidx/compose/ui/graphics/painter/Painter;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 41
    .line 42
    :cond_3
    invoke-virtual {v4, p4}, Landroidx/compose/ui/graphics/AndroidPaint;->d(F)V

    .line 43
    .line 44
    .line 45
    iput-boolean v2, p0, Landroidx/compose/ui/graphics/painter/Painter;->k:Z

    .line 46
    .line 47
    :cond_4
    :goto_0
    iput p4, p0, Landroidx/compose/ui/graphics/painter/Painter;->m:F

    .line 48
    .line 49
    :goto_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->l:Landroidx/compose/ui/graphics/ColorFilter;

    .line 50
    .line 51
    invoke-static {v1, p5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_9

    .line 56
    .line 57
    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->e(Landroidx/compose/ui/graphics/ColorFilter;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_8

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 64
    .line 65
    if-nez p5, :cond_6

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/graphics/painter/Painter;->k:Z

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    if-nez v1, :cond_7

    .line 77
    .line 78
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 83
    .line 84
    :cond_7
    invoke-virtual {v1, p5}, Landroidx/compose/ui/graphics/AndroidPaint;->g(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 85
    .line 86
    .line 87
    iput-boolean v2, p0, Landroidx/compose/ui/graphics/painter/Painter;->k:Z

    .line 88
    .line 89
    :cond_8
    :goto_2
    iput-object p5, p0, Landroidx/compose/ui/graphics/painter/Painter;->l:Landroidx/compose/ui/graphics/ColorFilter;

    .line 90
    .line 91
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 92
    .line 93
    .line 94
    move-result-object p5

    .line 95
    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/Painter;->n:Landroidx/compose/ui/unit/LayoutDirection;

    .line 96
    .line 97
    if-eq v1, p5, :cond_a

    .line 98
    .line 99
    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->f(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 100
    .line 101
    .line 102
    iput-object p5, p0, Landroidx/compose/ui/graphics/painter/Painter;->n:Landroidx/compose/ui/unit/LayoutDirection;

    .line 103
    .line 104
    :cond_a
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    const/16 p5, 0x20

    .line 109
    .line 110
    shr-long/2addr v1, p5

    .line 111
    long-to-int v1, v1

    .line 112
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    shr-long v2, p2, p5

    .line 117
    .line 118
    long-to-int v2, v2

    .line 119
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    sub-float/2addr v1, v3

    .line 124
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    const-wide v5, 0xffffffffL

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    and-long/2addr v3, v5

    .line 134
    long-to-int v3, v3

    .line 135
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    and-long/2addr p2, v5

    .line 140
    long-to-int p2, p2

    .line 141
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    sub-float/2addr v3, p3

    .line 146
    iget-object p3, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 147
    .line 148
    iget-object p3, p3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p3, v4, v4, v1, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a(FFFF)V

    .line 152
    .line 153
    .line 154
    cmpl-float p3, p4, v4

    .line 155
    .line 156
    const/high16 p4, -0x80000000

    .line 157
    .line 158
    if-lez p3, :cond_d

    .line 159
    .line 160
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    cmpl-float p3, p3, v4

    .line 165
    .line 166
    if-lez p3, :cond_d

    .line 167
    .line 168
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    cmpl-float p3, p3, v4

    .line 173
    .line 174
    if-lez p3, :cond_d

    .line 175
    .line 176
    iget-boolean p3, p0, Landroidx/compose/ui/graphics/painter/Painter;->k:Z

    .line 177
    .line 178
    if-eqz p3, :cond_c

    .line 179
    .line 180
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    int-to-long v7, p3

    .line 193
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    int-to-long p2, p2

    .line 198
    shl-long/2addr v7, p5

    .line 199
    and-long/2addr p2, v5

    .line 200
    or-long/2addr p2, v7

    .line 201
    const-wide/16 v4, 0x0

    .line 202
    .line 203
    invoke-static {v4, v5, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iget-object p3, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 208
    .line 209
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    iget-object p5, p0, Landroidx/compose/ui/graphics/painter/Painter;->j:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 214
    .line 215
    if-nez p5, :cond_b

    .line 216
    .line 217
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->a()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 218
    .line 219
    .line 220
    move-result-object p5

    .line 221
    iput-object p5, p0, Landroidx/compose/ui/graphics/painter/Painter;->j:Landroidx/compose/ui/graphics/AndroidPaint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .line 223
    :cond_b
    :try_start_1
    invoke-interface {p3, p2, p5}, Landroidx/compose/ui/graphics/Canvas;->c(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    .line 228
    .line 229
    :try_start_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :catchall_0
    move-exception p0

    .line 234
    goto :goto_3

    .line 235
    :catchall_1
    move-exception p0

    .line 236
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 237
    .line 238
    .line 239
    throw p0

    .line 240
    :cond_c
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :goto_3
    iget-object p1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 245
    .line 246
    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 247
    .line 248
    neg-float p2, v1

    .line 249
    neg-float p3, v3

    .line 250
    invoke-virtual {p1, p4, p4, p2, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a(FFFF)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :cond_d
    :goto_4
    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 255
    .line 256
    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 257
    .line 258
    neg-float p1, v1

    .line 259
    neg-float p2, v3

    .line 260
    invoke-virtual {p0, p4, p4, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a(FFFF)V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public abstract i()J
.end method

.method public abstract j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
.end method
