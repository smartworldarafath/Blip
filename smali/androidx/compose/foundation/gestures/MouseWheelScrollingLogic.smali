.class public final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;
.super Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    }
.end annotation


# instance fields
.field public final f:Landroidx/compose/foundation/gestures/AndroidConfig;

.field public final g:Lkotlinx/coroutines/channels/BufferedChannel;

.field public h:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/AndroidConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->f:Landroidx/compose/foundation/gestures/AndroidConfig;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 p2, 0x6

    .line 8
    const p3, 0x7fffffff

    .line 9
    .line 10
    .line 11
    invoke-static {p3, p2, p1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 16
    .line 17
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    iget-object v9, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    .line 10
    .line 11
    instance-of v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    .line 17
    .line 18
    iget v3, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 19
    .line 20
    const/high16 v4, -0x80000000

    .line 21
    .line 22
    and-int v6, v3, v4

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    iput v3, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 28
    .line 29
    :goto_0
    move-object v10, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;

    .line 32
    .line 33
    invoke-direct {v2, v5, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v1, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->p:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    iget v2, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    const/4 v15, 0x2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    if-eq v2, v3, :cond_2

    .line 51
    .line 52
    if-ne v2, v15, :cond_1

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v14

    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v13

    .line 64
    :cond_2
    iget v0, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->o:F

    .line 65
    .line 66
    iget-object v2, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 67
    .line 68
    iget-object v3, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->m:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object/from16 v16, v14

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move v1, v3

    .line 81
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 87
    .line 88
    iget-wide v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->b:J

    .line 89
    .line 90
    move-object/from16 v16, v14

    .line 91
    .line 92
    iget-wide v13, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 93
    .line 94
    iget-object v0, v9, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 95
    .line 96
    const/16 v4, 0x20

    .line 97
    .line 98
    move-wide/from16 v17, v13

    .line 99
    .line 100
    shr-long v12, v17, v4

    .line 101
    .line 102
    long-to-int v6, v12

    .line 103
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v0, v1, v2, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v9, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 111
    .line 112
    const-wide v19, 0xffffffffL

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    and-long v12, v17, v19

    .line 118
    .line 119
    long-to-int v6, v12

    .line 120
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual {v0, v1, v2, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 128
    .line 129
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget-wide v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->b:J

    .line 136
    .line 137
    iget-wide v12, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 138
    .line 139
    iget-object v6, v9, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 140
    .line 141
    shr-long v4, v12, v4

    .line 142
    .line 143
    long-to-int v4, v4

    .line 144
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {v6, v1, v2, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 149
    .line 150
    .line 151
    iget-object v4, v9, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 152
    .line 153
    and-long v5, v12, v19

    .line 154
    .line 155
    long-to-int v5, v5

    .line 156
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-virtual {v4, v1, v2, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 172
    .line 173
    :cond_4
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 181
    .line 182
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 183
    .line 184
    invoke-virtual {v7, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    invoke-virtual {v7, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iput v0, v1, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 193
    .line 194
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    goto/16 :goto_6

    .line 201
    .line 202
    :cond_5
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    const/16 v0, 0x1e

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-static {v4, v4, v0}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFI)Landroidx/compose/animation/core/AnimationState;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 215
    .line 216
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    .line 217
    .line 218
    const/4 v8, 0x0

    .line 219
    move-object/from16 v5, p0

    .line 220
    .line 221
    move/from16 v4, p3

    .line 222
    .line 223
    move/from16 v6, p4

    .line 224
    .line 225
    const/4 v12, 0x1

    .line 226
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/foundation/gestures/MouseWheelScrollingLogic;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 227
    .line 228
    .line 229
    iput-object v7, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->m:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 230
    .line 231
    iput-object v1, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 232
    .line 233
    iput v6, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->o:F

    .line 234
    .line 235
    iput v12, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 236
    .line 237
    invoke-virtual {v5, v0, v10}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-ne v0, v11, :cond_6

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_6
    move-object v2, v1

    .line 245
    move v0, v6

    .line 246
    move-object v3, v7

    .line 247
    :goto_2
    iget-object v1, v9, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 248
    .line 249
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->c(F)F

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    iget-object v6, v9, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 257
    .line 258
    invoke-virtual {v6, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->c(F)F

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    invoke-static {v1, v4}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 263
    .line 264
    .line 265
    move-result-wide v6

    .line 266
    const-wide/16 v8, 0x0

    .line 267
    .line 268
    cmp-long v1, v6, v8

    .line 269
    .line 270
    if-nez v1, :cond_9

    .line 271
    .line 272
    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    const/high16 v4, 0x42c80000    # 100.0f

    .line 279
    .line 280
    div-float/2addr v1, v4

    .line 281
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 286
    .line 287
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    invoke-virtual {v3, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    mul-float/2addr v1, v0

    .line 296
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 297
    .line 298
    mul-float/2addr v1, v0

    .line 299
    const/4 v4, 0x0

    .line 300
    cmpg-float v0, v1, v4

    .line 301
    .line 302
    if-nez v0, :cond_7

    .line 303
    .line 304
    move-wide v6, v8

    .line 305
    goto :goto_4

    .line 306
    :cond_7
    iget-object v0, v3, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    .line 307
    .line 308
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 309
    .line 310
    if-ne v0, v2, :cond_8

    .line 311
    .line 312
    invoke-static {v1, v4}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 313
    .line 314
    .line 315
    move-result-wide v0

    .line 316
    :goto_3
    move-wide v6, v0

    .line 317
    goto :goto_4

    .line 318
    :cond_8
    invoke-static {v4, v1}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 319
    .line 320
    .line 321
    move-result-wide v0

    .line 322
    goto :goto_3

    .line 323
    :cond_9
    :goto_4
    iget-object v0, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->b:Lkotlin/jvm/functions/Function2;

    .line 324
    .line 325
    new-instance v1, Landroidx/compose/ui/unit/Velocity;

    .line 326
    .line 327
    invoke-direct {v1, v6, v7}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 328
    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    iput-object v2, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->m:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 332
    .line 333
    iput-object v2, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 334
    .line 335
    iput v15, v10, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$1;->r:I

    .line 336
    .line 337
    invoke-interface {v0, v1, v10}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-ne v0, v11, :cond_a

    .line 342
    .line 343
    :goto_5
    return-object v11

    .line 344
    :cond_a
    :goto_6
    return-object v16
.end method

.method public static final d(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-wide/from16 v1, p5

    .line 2
    .line 3
    move-object/from16 v3, p7

    .line 4
    .line 5
    instance-of v4, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    move-object v4, v3

    .line 10
    check-cast v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    .line 11
    .line 12
    iget v5, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->s:I

    .line 13
    .line 14
    const/high16 v6, -0x80000000

    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    sub-int/2addr v5, v6

    .line 21
    iput v5, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->s:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;

    .line 25
    .line 26
    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v3, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->r:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v6, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->s:I

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    if-ne v6, v8, :cond_1

    .line 40
    .line 41
    iget-object v0, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v1, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->p:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 44
    .line 45
    iget-object v2, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->o:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 46
    .line 47
    iget-object v5, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    .line 49
    iget-object v4, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->m:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 50
    .line 51
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v10, v0

    .line 55
    move-object v9, v1

    .line 56
    move-object v0, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v7

    .line 64
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v9, 0x0

    .line 68
    .line 69
    cmp-long v3, v1, v9

    .line 70
    .line 71
    if-gez v3, :cond_3

    .line 72
    .line 73
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    new-instance v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2;

    .line 77
    .line 78
    invoke-direct {v3, p0, v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    iput-object p0, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->m:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 82
    .line 83
    iput-object p1, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 84
    .line 85
    iput-object p2, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->o:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 86
    .line 87
    move-object/from16 v9, p3

    .line 88
    .line 89
    iput-object v9, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->p:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 90
    .line 91
    move-object/from16 v10, p4

    .line 92
    .line 93
    iput-object v10, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    iput v8, v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;->s:I

    .line 96
    .line 97
    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-ne v3, v5, :cond_4

    .line 102
    .line 103
    return-object v5

    .line 104
    :cond_4
    move-object v0, p0

    .line 105
    move-object v5, p1

    .line 106
    move-object v2, p2

    .line 107
    :goto_1
    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 108
    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 114
    .line 115
    iget-boolean v1, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->c:Z

    .line 116
    .line 117
    iget-wide v6, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 118
    .line 119
    iget-wide v11, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->b:J

    .line 120
    .line 121
    new-instance v4, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 122
    .line 123
    move/from16 p5, v1

    .line 124
    .line 125
    move-object p0, v4

    .line 126
    move-wide p1, v6

    .line 127
    move-wide/from16 p3, v11

    .line 128
    .line 129
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;-><init>(JJZ)V

    .line 130
    .line 131
    .line 132
    move-object v1, p0

    .line 133
    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v9, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v4

    .line 139
    invoke-virtual {v9, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    iput v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 144
    .line 145
    const/16 v1, 0x1e

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static {v4, v4, v1}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFI)Landroidx/compose/animation/core/AnimationState;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    .line 155
    .line 156
    iget-wide v4, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->b:J

    .line 157
    .line 158
    iget-wide v6, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    .line 159
    .line 160
    iget-object v1, v0, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 161
    .line 162
    const/16 v3, 0x20

    .line 163
    .line 164
    shr-long v9, v6, v3

    .line 165
    .line 166
    long-to-int v3, v9

    .line 167
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v1, v4, v5, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 175
    .line 176
    const-wide v9, 0xffffffffL

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    and-long/2addr v6, v9

    .line 182
    long-to-int v1, v6

    .line 183
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-virtual {v0, v4, v5, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 188
    .line 189
    .line 190
    iget v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 191
    .line 192
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    xor-int/2addr v0, v8

    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v0, 0x0

    .line 199
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0
.end method

.method public static g(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/b;-><init>(Lkotlinx/coroutines/channels/Channel;I)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$untilNull$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->e(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    :goto_1
    move-object v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final e(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(F)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 14
    .line 15
    iget-object p2, p1, Landroidx/compose/foundation/gestures/ScrollingLogic;->k:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->d(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)F

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final f(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->f:Landroidx/compose/foundation/gestures/AndroidConfig;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/gestures/AndroidConfig;->a:Landroid/view/ViewConfiguration;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    neg-float v2, v2

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    neg-float v1, v1

    .line 15
    iget-object v3, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 16
    .line 17
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x0

    .line 29
    move v7, v6

    .line 30
    :goto_0
    iget-wide v8, v4, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 31
    .line 32
    if-ge v7, v5, :cond_0

    .line 33
    .line 34
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 39
    .line 40
    iget-wide v10, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->j:J

    .line 41
    .line 42
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 47
    .line 48
    invoke-direct {v4, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v3, 0x20

    .line 55
    .line 56
    shr-long v4, v8, v3

    .line 57
    .line 58
    long-to-int v4, v4

    .line 59
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    mul-float/2addr v4, v1

    .line 64
    const-wide v10, 0xffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    and-long v7, v8, v10

    .line 70
    .line 71
    long-to-int v1, v7

    .line 72
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    mul-float/2addr v1, v2

    .line 77
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-long v4, v2

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-long v1, v1

    .line 87
    shl-long v3, v4, v3

    .line 88
    .line 89
    and-long/2addr v1, v10

    .line 90
    or-long v8, v3, v1

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 93
    .line 94
    invoke-virtual {v1, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/4 v3, 0x0

    .line 103
    cmpg-float v4, v2, v3

    .line 104
    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    cmpl-float v2, v2, v3

    .line 109
    .line 110
    iget-object v1, v1, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 111
    .line 112
    if-lez v2, :cond_2

    .line 113
    .line 114
    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->d()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-interface {v1}, Landroidx/compose/foundation/gestures/ScrollableState;->b()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    :goto_1
    if-eqz v6, :cond_3

    .line 124
    .line 125
    new-instance v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 126
    .line 127
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 134
    .line 135
    iget-wide v10, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const/4 v12, 0x0

    .line 141
    invoke-direct/range {v7 .. v12}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;-><init>(JJZ)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 145
    .line 146
    invoke-interface {p0, v7}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    instance-of p0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 151
    .line 152
    xor-int/lit8 p0, p0, 0x1

    .line 153
    .line 154
    return p0

    .line 155
    :cond_3
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    .line 156
    .line 157
    return p0
.end method
