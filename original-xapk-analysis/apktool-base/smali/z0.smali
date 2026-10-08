.class public final synthetic Lz0;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lz0;->j:I

    iput p1, p0, Lz0;->k:F

    iput-object p2, p0, Lz0;->l:Ljava/lang/Object;

    iput-object p3, p0, Lz0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/UpdatableAnimationState;FLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lz0;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lz0;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lz0;->k:F

    .line 10
    .line 11
    iput-object p3, p0, Lz0;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lz0;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lz0;->m:Ljava/lang/Object;

    .line 7
    .line 8
    iget v4, p0, Lz0;->k:F

    .line 9
    .line 10
    iget-object p0, p0, Lz0;->l:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 16
    .line 17
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    iget-wide v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    .line 26
    .line 27
    const-wide/high16 v9, -0x8000000000000000L

    .line 28
    .line 29
    cmp-long p1, v7, v9

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iput-wide v5, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    .line 34
    .line 35
    :cond_0
    new-instance v10, Landroidx/compose/animation/core/AnimationVector1D;

    .line 36
    .line 37
    iget p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    .line 38
    .line 39
    invoke-direct {v10, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 40
    .line 41
    .line 42
    cmpg-float v0, v4, v2

    .line 43
    .line 44
    sget-object v11, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->f:Landroidx/compose/animation/core/AnimationVector1D;

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 49
    .line 50
    new-instance v2, Landroidx/compose/animation/core/AnimationVector1D;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/AnimationVector1D;

    .line 56
    .line 57
    invoke-interface {v0, v2, v11, p1}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->b(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    :goto_0
    move-wide v8, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-wide v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    .line 64
    .line 65
    sub-long v7, v5, v7

    .line 66
    .line 67
    long-to-float p1, v7

    .line 68
    div-float/2addr p1, v4

    .line 69
    float-to-double v7, p1

    .line 70
    invoke-static {v7, v8}, Lkotlin/math/MathKt;->c(D)J

    .line 71
    .line 72
    .line 73
    move-result-wide v7

    .line 74
    goto :goto_0

    .line 75
    :goto_1
    iget-object v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 76
    .line 77
    iget-object v12, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/AnimationVector1D;

    .line 78
    .line 79
    invoke-interface/range {v7 .. v12}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 84
    .line 85
    iget p1, p1, Landroidx/compose/animation/core/AnimationVector1D;->a:F

    .line 86
    .line 87
    iget-object v7, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->a:Landroidx/compose/animation/core/VectorizedAnimationSpec;

    .line 88
    .line 89
    iget-object v12, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/AnimationVector1D;

    .line 90
    .line 91
    invoke-interface/range {v7 .. v12}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->c(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 96
    .line 97
    iput-object v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->c:Landroidx/compose/animation/core/AnimationVector1D;

    .line 98
    .line 99
    iput-wide v5, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->b:J

    .line 100
    .line 101
    iget v0, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    .line 102
    .line 103
    sub-float/2addr v0, p1

    .line 104
    iput p1, p0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->e:F

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 115
    .line 116
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 117
    .line 118
    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    .line 119
    .line 120
    cmpl-float v0, v4, v2

    .line 121
    .line 122
    if-lez v0, :cond_3

    .line 123
    .line 124
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Number;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    cmpl-float v2, v0, v4

    .line 139
    .line 140
    if-lez v2, :cond_2

    .line 141
    .line 142
    :goto_2
    move v2, v4

    .line 143
    goto :goto_3

    .line 144
    :cond_2
    move v2, v0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    cmpg-float v0, v4, v2

    .line 147
    .line 148
    if-gez v0, :cond_4

    .line 149
    .line 150
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 151
    .line 152
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    cmpg-float v2, v0, v4

    .line 165
    .line 166
    if-gez v2, :cond_2

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_4
    :goto_3
    iget v0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 170
    .line 171
    sub-float v0, v2, v0

    .line 172
    .line 173
    invoke-interface {v3, v0}, Landroidx/compose/foundation/gestures/ScrollScope;->f(F)F

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    cmpg-float v3, v0, v3

    .line 178
    .line 179
    if-nez v3, :cond_5

    .line 180
    .line 181
    iget-object v3, p1, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 182
    .line 183
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/lang/Number;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    cmpg-float v2, v2, v3

    .line 196
    .line 197
    if-nez v2, :cond_5

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationScope;->a()V

    .line 201
    .line 202
    .line 203
    :goto_4
    iget p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 204
    .line 205
    add-float/2addr p1, v0

    .line 206
    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 207
    .line 208
    return-object v1

    .line 209
    :pswitch_1
    check-cast p0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 210
    .line 211
    check-cast v3, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 212
    .line 213
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 214
    .line 215
    sget v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a:F

    .line 216
    .line 217
    check-cast p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 220
    .line 221
    .line 222
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 223
    .line 224
    iget-object v5, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->k:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 225
    .line 226
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    .line 227
    .line 228
    .line 229
    move-result-wide v6

    .line 230
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->g()V

    .line 235
    .line 236
    .line 237
    :try_start_0
    iget-object v0, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 238
    .line 239
    invoke-virtual {v0, v4, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(FF)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const/4 v2, 0x0

    .line 249
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    invoke-interface {v0, v4, v8}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->p()V

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    neg-float v4, v4

    .line 268
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    neg-float v2, v2

    .line 273
    invoke-interface {v0, v4, v2}, Landroidx/compose/ui/graphics/Canvas;->o(FF)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, p0, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->d(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/BlendModeColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .line 278
    .line 279
    invoke-static {v5, v6, v7}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 280
    .line 281
    .line 282
    return-object v1

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    move-object p0, v0

    .line 285
    invoke-static {v5, v6, v7}, Lq;->v(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    .line 286
    .line 287
    .line 288
    throw p0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
