.class public final synthetic La8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(FLjava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, La8;->j:I

    iput p1, p0, La8;->k:F

    iput-object p2, p0, La8;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;F)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, La8;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, La8;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, La8;->k:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, La8;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v0, La8;->k:F

    .line 11
    .line 12
    iget-object v0, v0, La8;->l:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v9, v0, Landroidx/compose/animation/core/Transition;->h:Landroidx/compose/runtime/MutableLongState;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    move-object v1, v9

    .line 36
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 39
    .line 40
    .line 41
    move-result-wide v10

    .line 42
    const-wide/high16 v12, -0x8000000000000000L

    .line 43
    .line 44
    cmp-long v1, v10, v12

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    move-object v1, v9

    .line 49
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 50
    .line 51
    invoke-virtual {v1, v7, v8}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->k(J)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 55
    .line 56
    iget-object v1, v1, Landroidx/compose/animation/core/TransitionState;->a:Landroidx/compose/runtime/MutableState;

    .line 57
    .line 58
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 61
    .line 62
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    check-cast v9, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;

    .line 66
    .line 67
    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableLongStateImpl;->j()J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    sub-long/2addr v7, v9

    .line 72
    cmpg-float v1, v6, v3

    .line 73
    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    long-to-double v7, v7

    .line 78
    float-to-double v9, v6

    .line 79
    div-double/2addr v7, v9

    .line 80
    invoke-static {v7, v8}, Lkotlin/math/MathKt;->c(D)J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    :goto_0
    invoke-virtual {v0, v7, v8}, Landroidx/compose/animation/core/Transition;->o(J)V

    .line 85
    .line 86
    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    move v2, v5

    .line 90
    :cond_2
    invoke-virtual {v0, v7, v8, v2}, Landroidx/compose/animation/core/Transition;->i(JZ)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-object v4

    .line 94
    :pswitch_0
    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    .line 95
    .line 96
    move-object/from16 v1, p1

    .line 97
    .line 98
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 99
    .line 100
    move-object v7, v1

    .line 101
    check-cast v7, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 102
    .line 103
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 104
    .line 105
    .line 106
    iget-object v1, v7, Landroidx/compose/ui/node/LayoutNodeDrawScope;->j:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 107
    .line 108
    invoke-static {v6, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDensity()F

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    mul-float v13, v2, v6

    .line 120
    .line 121
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    const-wide v8, 0xffffffffL

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    and-long/2addr v5, v8

    .line 131
    long-to-int v2, v5

    .line 132
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    const/high16 v5, 0x40000000    # 2.0f

    .line 137
    .line 138
    div-float v5, v13, v5

    .line 139
    .line 140
    sub-float/2addr v2, v5

    .line 141
    iget-object v0, v0, Landroidx/compose/foundation/BorderStroke;->b:Landroidx/compose/ui/graphics/SolidColor;

    .line 142
    .line 143
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    int-to-long v5, v3

    .line 148
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    int-to-long v10, v3

    .line 153
    const/16 v3, 0x20

    .line 154
    .line 155
    shl-long/2addr v5, v3

    .line 156
    and-long/2addr v10, v8

    .line 157
    or-long/2addr v5, v10

    .line 158
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->i()J

    .line 159
    .line 160
    .line 161
    move-result-wide v10

    .line 162
    shr-long/2addr v10, v3

    .line 163
    long-to-int v1, v10

    .line 164
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    int-to-long v10, v1

    .line 173
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    int-to-long v1, v1

    .line 178
    shl-long/2addr v10, v3

    .line 179
    and-long/2addr v1, v8

    .line 180
    or-long v11, v10, v1

    .line 181
    .line 182
    const/4 v14, 0x0

    .line 183
    const/16 v15, 0x1f0

    .line 184
    .line 185
    move-object v8, v0

    .line 186
    move-wide v9, v5

    .line 187
    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->d0(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/SolidColor;JJFFI)V

    .line 188
    .line 189
    .line 190
    :goto_1
    return-object v4

    .line 191
    :pswitch_1
    check-cast v0, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 192
    .line 193
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 196
    .line 197
    new-instance v2, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 198
    .line 199
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt;->f(Ljava/lang/Float;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Ljava/lang/Number;

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-direct {v2, v3, v0}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;)V

    .line 214
    .line 215
    .line 216
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 217
    .line 218
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 219
    .line 220
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 221
    .line 222
    aget-object v3, v3, v5

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v4

    .line 231
    :pswitch_2
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 232
    .line 233
    move-object/from16 v1, p1

    .line 234
    .line 235
    check-cast v1, Landroidx/compose/foundation/gestures/DraggableGestureConnection;

    .line 236
    .line 237
    invoke-interface {v1}, Landroidx/compose/foundation/GestureConnection;->T()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    const-string v4, "waiting"

    .line 242
    .line 243
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-interface {v1}, Landroidx/compose/foundation/gestures/DraggableGestureConnection;->b0()Landroidx/compose/foundation/gestures/Orientation;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    if-nez v4, :cond_6

    .line 252
    .line 253
    :cond_5
    move v1, v2

    .line 254
    goto :goto_3

    .line 255
    :cond_6
    invoke-interface {v1}, Landroidx/compose/foundation/gestures/DraggableGestureConnection;->b0()Landroidx/compose/foundation/gestures/Orientation;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    sget-object v4, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    .line 263
    .line 264
    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 265
    .line 266
    const/high16 v7, 0x41f00000    # 30.0f

    .line 267
    .line 268
    if-ne v1, v4, :cond_7

    .line 269
    .line 270
    cmpg-float v1, v6, v7

    .line 271
    .line 272
    if-gtz v1, :cond_5

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_7
    cmpl-float v1, v6, v7

    .line 276
    .line 277
    if-lez v1, :cond_5

    .line 278
    .line 279
    const/high16 v1, 0x42b40000    # 90.0f

    .line 280
    .line 281
    cmpg-float v1, v6, v1

    .line 282
    .line 283
    if-gtz v1, :cond_5

    .line 284
    .line 285
    :goto_2
    move v1, v5

    .line 286
    :goto_3
    iget-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 287
    .line 288
    if-nez v4, :cond_8

    .line 289
    .line 290
    if-eqz v3, :cond_9

    .line 291
    .line 292
    if-eqz v1, :cond_9

    .line 293
    .line 294
    :cond_8
    move v2, v5

    .line 295
    :cond_9
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 296
    .line 297
    xor-int/lit8 v0, v2, 0x1

    .line 298
    .line 299
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    return-object v0

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
