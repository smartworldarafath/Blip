.class public abstract Landroidx/compose/animation/core/SuspendAnimationKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v3, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-direct {v3, p0}, Ljava/lang/Float;-><init>(F)V

    .line 4
    .line 5
    .line 6
    new-instance v4, Ljava/lang/Float;

    .line 7
    .line 8
    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-direct {p0, p2}, Ljava/lang/Float;-><init>(F)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 17
    .line 18
    move-object p1, v2

    .line 19
    check-cast p1, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/animation/core/TwoWayConverterImpl;->a:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroidx/compose/animation/core/AnimationVector;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationVector;->c()Landroidx/compose/animation/core/AnimationVector;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_0
    move-object v5, p0

    .line 42
    new-instance p1, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 43
    .line 44
    move-object v0, p1

    .line 45
    move-object v1, p3

    .line 46
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Landroidx/compose/animation/core/AnimationState;

    .line 50
    .line 51
    const/16 p2, 0x38

    .line 52
    .line 53
    invoke-direct {p0, v2, v3, v5, p2}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;I)V

    .line 54
    .line 55
    .line 56
    move-object p2, p4

    .line 57
    new-instance p4, Landroidx/compose/animation/core/a;

    .line 58
    .line 59
    invoke-direct {p4, p2}, Landroidx/compose/animation/core/a;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 60
    .line 61
    .line 62
    const-wide/high16 p2, -0x8000000000000000L

    .line 63
    .line 64
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 69
    .line 70
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    if-ne p0, p1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object p0, p2

    .line 76
    :goto_0
    if-ne p0, p1, :cond_2

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_2
    return-object p2
.end method

.method public static final b(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    instance-of v1, v0, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    .line 11
    .line 12
    iget v2, v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->r:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v2, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v4

    .line 21
    iput v2, v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->r:I

    .line 22
    .line 23
    :goto_0
    move-object v8, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v8, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    iget-object v1, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->q:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v2, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->r:I

    .line 38
    .line 39
    const/4 v10, 0x7

    .line 40
    sget-object v11, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;->j:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    .line 41
    .line 42
    const/4 v12, 0x2

    .line 43
    const/4 v13, 0x1

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    if-eq v2, v13, :cond_2

    .line 47
    .line 48
    if-ne v2, v12, :cond_1

    .line 49
    .line 50
    iget-object v2, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v0, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->o:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    iget-object v3, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->n:Landroidx/compose/animation/core/Animation;

    .line 55
    .line 56
    iget-object v4, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->m:Landroidx/compose/animation/core/AnimationState;

    .line 57
    .line 58
    :goto_2
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto/16 :goto_b

    .line 65
    .line 66
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    return-object v0

    .line 73
    :cond_2
    iget-object v2, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 74
    .line 75
    iget-object v0, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->o:Lkotlin/jvm/functions/Function1;

    .line 76
    .line 77
    iget-object v3, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->n:Landroidx/compose/animation/core/Animation;

    .line 78
    .line 79
    iget-object v4, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->m:Landroidx/compose/animation/core/AnimationState;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v1, 0x0

    .line 86
    .line 87
    invoke-interface {v3, v1, v2}, Landroidx/compose/animation/core/Animation;->f(J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    invoke-interface {v3, v1, v2}, Landroidx/compose/animation/core/Animation;->d(J)Landroidx/compose/animation/core/AnimationVector;

    .line 92
    .line 93
    .line 94
    move-result-object v17

    .line 95
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    const-wide/high16 v4, -0x8000000000000000L

    .line 101
    .line 102
    cmp-long v2, p2, v4

    .line 103
    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lkotlin/coroutines/CoroutineContext;)F

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    new-instance v0, Lkg;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 114
    .line 115
    move-object/from16 v5, p0

    .line 116
    .line 117
    move-object/from16 v7, p4

    .line 118
    .line 119
    move-object v2, v15

    .line 120
    move-object/from16 v4, v17

    .line 121
    .line 122
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lkg;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationState;FLkotlin/jvm/functions/Function1;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    .line 124
    .line 125
    move-object v7, v1

    .line 126
    :try_start_3
    iput-object v5, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->m:Landroidx/compose/animation/core/AnimationState;

    .line 127
    .line 128
    iput-object v3, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->n:Landroidx/compose/animation/core/Animation;

    .line 129
    .line 130
    move-object/from16 v6, p4

    .line 131
    .line 132
    iput-object v6, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->o:Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    iput-object v7, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 135
    .line 136
    iput v13, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->r:I

    .line 137
    .line 138
    invoke-interface {v3}, Landroidx/compose/animation/core/Animation;->a()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v1, v11}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-nez v1, :cond_4

    .line 153
    .line 154
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1, v8, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_5
    new-instance v1, Lc8;

    .line 174
    .line 175
    invoke-direct {v1, v0, v10}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0, v8, v1}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 190
    :goto_3
    if-ne v0, v9, :cond_6

    .line 191
    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :cond_6
    move-object v4, v5

    .line 195
    move-object v0, v6

    .line 196
    move-object v2, v7

    .line 197
    :cond_7
    :goto_4
    move-object v1, v2

    .line 198
    goto :goto_8

    .line 199
    :goto_5
    move-object v4, v5

    .line 200
    :goto_6
    move-object v2, v7

    .line 201
    goto/16 :goto_b

    .line 202
    .line 203
    :catch_1
    move-exception v0

    .line 204
    goto :goto_5

    .line 205
    :catch_2
    move-exception v0

    .line 206
    :goto_7
    move-object v7, v1

    .line 207
    goto :goto_5

    .line 208
    :catch_3
    move-exception v0

    .line 209
    move-object/from16 v5, p0

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_8
    move-object/from16 v5, p0

    .line 213
    .line 214
    move-object/from16 v6, p4

    .line 215
    .line 216
    move-object v7, v1

    .line 217
    :try_start_4
    new-instance v14, Landroidx/compose/animation/core/AnimationScope;

    .line 218
    .line 219
    invoke-interface {v3}, Landroidx/compose/animation/core/Animation;->c()Landroidx/compose/animation/core/TwoWayConverter;

    .line 220
    .line 221
    .line 222
    move-result-object v16

    .line 223
    invoke-interface {v3}, Landroidx/compose/animation/core/Animation;->g()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v20

    .line 227
    new-instance v1, Ljg;

    .line 228
    .line 229
    invoke-direct {v1, v13, v5}, Ljg;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    .line 230
    .line 231
    .line 232
    move-wide/from16 v21, p2

    .line 233
    .line 234
    move-wide/from16 v18, p2

    .line 235
    .line 236
    move-object/from16 v23, v1

    .line 237
    .line 238
    invoke-direct/range {v14 .. v23}, Landroidx/compose/animation/core/AnimationScope;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JLkotlin/jvm/functions/Function0;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lkotlin/coroutines/CoroutineContext;)F

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    move-wide/from16 v1, p2

    .line 249
    .line 250
    move-object v4, v3

    .line 251
    move v3, v0

    .line 252
    move-object v0, v14

    .line 253
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V

    .line 254
    .line 255
    .line 256
    move-object v14, v0

    .line 257
    iput-object v14, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_6

    .line 258
    .line 259
    move-object/from16 v4, p0

    .line 260
    .line 261
    move-object/from16 v3, p1

    .line 262
    .line 263
    move-object/from16 v0, p4

    .line 264
    .line 265
    move-object v1, v7

    .line 266
    :goto_8
    :try_start_5
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    check-cast v2, Landroidx/compose/animation/core/AnimationScope;

    .line 272
    .line 273
    iget-object v2, v2, Landroidx/compose/animation/core/AnimationScope;->i:Landroidx/compose/runtime/MutableState;

    .line 274
    .line 275
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 276
    .line 277
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_b

    .line 288
    .line 289
    iget-object v2, v8, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {v2}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Lkotlin/coroutines/CoroutineContext;)F

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    new-instance v5, Llg;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 299
    .line 300
    move-object/from16 p5, v0

    .line 301
    .line 302
    move-object/from16 p1, v1

    .line 303
    .line 304
    move/from16 p2, v2

    .line 305
    .line 306
    move-object/from16 p3, v3

    .line 307
    .line 308
    move-object/from16 p4, v4

    .line 309
    .line 310
    move-object/from16 p0, v5

    .line 311
    .line 312
    :try_start_6
    invoke-direct/range {p0 .. p5}, Llg;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_4

    .line 313
    .line 314
    .line 315
    move-object/from16 v1, p0

    .line 316
    .line 317
    move-object/from16 v2, p1

    .line 318
    .line 319
    move-object/from16 v3, p3

    .line 320
    .line 321
    move-object/from16 v4, p4

    .line 322
    .line 323
    move-object/from16 v0, p5

    .line 324
    .line 325
    :try_start_7
    iput-object v4, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->m:Landroidx/compose/animation/core/AnimationState;

    .line 326
    .line 327
    iput-object v3, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->n:Landroidx/compose/animation/core/Animation;

    .line 328
    .line 329
    iput-object v0, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->o:Lkotlin/jvm/functions/Function1;

    .line 330
    .line 331
    iput-object v2, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 332
    .line 333
    iput v12, v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->r:I

    .line 334
    .line 335
    invoke-interface {v3}, Landroidx/compose/animation/core/Animation;->a()Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_a

    .line 340
    .line 341
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-interface {v5, v11}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    if-nez v5, :cond_9

    .line 350
    .line 351
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-static {v5}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-interface {v5, v8, v1}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    goto :goto_9

    .line 364
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    .line 365
    .line 366
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_a
    new-instance v5, Lc8;

    .line 371
    .line 372
    invoke-direct {v5, v1, v10}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v8}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-interface {v1, v8, v5}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v1
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0

    .line 387
    :goto_9
    if-ne v1, v9, :cond_7

    .line 388
    .line 389
    :goto_a
    return-object v9

    .line 390
    :catch_4
    move-exception v0

    .line 391
    move-object/from16 v2, p1

    .line 392
    .line 393
    move-object/from16 v4, p4

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :catch_5
    move-exception v0

    .line 397
    move-object v2, v1

    .line 398
    goto :goto_b

    .line 399
    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 400
    .line 401
    return-object v0

    .line 402
    :catch_6
    move-exception v0

    .line 403
    move-object/from16 v4, p0

    .line 404
    .line 405
    goto/16 :goto_6

    .line 406
    .line 407
    :goto_b
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 410
    .line 411
    if-eqz v1, :cond_c

    .line 412
    .line 413
    iget-object v1, v1, Landroidx/compose/animation/core/AnimationScope;->i:Landroidx/compose/runtime/MutableState;

    .line 414
    .line 415
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 416
    .line 417
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 418
    .line 419
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    :cond_c
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 425
    .line 426
    if-eqz v1, :cond_d

    .line 427
    .line 428
    iget-wide v1, v1, Landroidx/compose/animation/core/AnimationScope;->g:J

    .line 429
    .line 430
    iget-wide v5, v4, Landroidx/compose/animation/core/AnimationState;->m:J

    .line 431
    .line 432
    cmp-long v1, v1, v5

    .line 433
    .line 434
    if-nez v1, :cond_d

    .line 435
    .line 436
    const/4 v1, 0x0

    .line 437
    iput-boolean v1, v4, Landroidx/compose/animation/core/AnimationState;->o:Z

    .line 438
    .line 439
    :cond_d
    throw v0
.end method

.method public static synthetic c(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x7

    .line 6
    const/4 p5, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p5, p5, v0, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    move-object v3, p2

    .line 13
    const/4 v2, 0x0

    .line 14
    move v0, p0

    .line 15
    move v1, p1

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->a(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final d(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/compose/animation/core/AnimationState;->l:Landroidx/compose/animation/core/AnimationVector;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/animation/core/AnimationState;->j:Landroidx/compose/animation/core/TwoWayConverter;

    .line 12
    .line 13
    new-instance v4, Landroidx/compose/animation/core/DecayAnimation;

    .line 14
    .line 15
    invoke-direct {v4, p1, v2, v0, v1}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    iget-wide p1, p0, Landroidx/compose/animation/core/AnimationState;->m:J

    .line 21
    .line 22
    :goto_0
    move-object v3, p0

    .line 23
    move-wide v5, p1

    .line 24
    move-object v7, p3

    .line 25
    move-object v8, p4

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-ne p0, p1, :cond_1

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final e(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    iget-object v3, p0, Landroidx/compose/animation/core/AnimationState;->j:Landroidx/compose/animation/core/TwoWayConverter;

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/compose/animation/core/AnimationState;->l:Landroidx/compose/animation/core/AnimationVector;

    .line 12
    .line 13
    new-instance v1, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 14
    .line 15
    move-object v5, p1

    .line 16
    move-object v2, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 18
    .line 19
    .line 20
    move-object p1, v1

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    iget-wide p2, p0, Landroidx/compose/animation/core/AnimationState;->m:J

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide/high16 p2, -0x8000000000000000L

    .line 27
    .line 28
    :goto_0
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-ne p0, p1, :cond_1

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/SpringSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 v0, p6, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x7

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v0, v1, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :cond_0
    move-object v2, p2

    .line 13
    and-int/lit8 p2, p6, 0x8

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    new-instance p4, Lle;

    .line 18
    .line 19
    const/16 p2, 0x1a

    .line 20
    .line 21
    invoke-direct {p4, p2}, Lle;-><init>(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move-object v5, p5

    .line 29
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->e(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final g(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p3, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p4}, Landroidx/compose/animation/core/Animation;->b()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationScope;->c:J

    .line 12
    .line 13
    sub-long v0, p1, v0

    .line 14
    .line 15
    long-to-float v0, v0

    .line 16
    div-float/2addr v0, p3

    .line 17
    float-to-long v0, v0

    .line 18
    :goto_0
    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationScope;->g:J

    .line 19
    .line 20
    invoke-interface {p4, v0, v1}, Landroidx/compose/animation/core/Animation;->f(J)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    check-cast p2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p4, v0, v1}, Landroidx/compose/animation/core/Animation;->d(J)Landroidx/compose/animation/core/AnimationVector;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 36
    .line 37
    invoke-interface {p4, v0, v1}, Landroidx/compose/animation/core/Animation;->e(J)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-wide p1, p0, Landroidx/compose/animation/core/AnimationScope;->g:J

    .line 44
    .line 45
    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationScope;->h:J

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->i:Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {p0, p5}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p6, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static final h(Lkotlin/coroutines/CoroutineContext;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/MotionDurationScale$Key;->j:Landroidx/compose/ui/MotionDurationScale$Key;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/MotionDurationScale;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Landroidx/compose/ui/MotionDurationScale;->a0()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    cmpl-float v0, p0, v0

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    const-string v0, "negative scale factor"

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/animation/core/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return p0
.end method

.method public static final i(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Landroidx/compose/animation/core/AnimationState;->l:Landroidx/compose/animation/core/AnimationVector;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/animation/core/AnimationVector;->b()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroidx/compose/animation/core/AnimationVector;->a(I)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, v3, v4}, Landroidx/compose/animation/core/AnimationVector;->e(IF)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationScope;->h:J

    .line 38
    .line 39
    iput-wide v0, p1, Landroidx/compose/animation/core/AnimationState;->n:J

    .line 40
    .line 41
    iget-wide v0, p0, Landroidx/compose/animation/core/AnimationScope;->g:J

    .line 42
    .line 43
    iput-wide v0, p1, Landroidx/compose/animation/core/AnimationState;->m:J

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/animation/core/AnimationScope;->i:Landroidx/compose/runtime/MutableState;

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
    check-cast p0, Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    iput-boolean p0, p1, Landroidx/compose/animation/core/AnimationState;->o:Z

    .line 60
    .line 61
    return-void
.end method
