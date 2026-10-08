.class final Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1"
    f = "Transition.kt"
    l = {
        0x976,
        0x2de,
        0x2e0,
        0x316,
        0x31a
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/sync/MutexImpl;

.field public o:Landroidx/compose/animation/core/SeekableTransitionState;

.field public p:I

.field public final synthetic q:Landroidx/compose/animation/core/SeekableTransitionState;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->q:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->r:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->s:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->r:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->s:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->q:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->p:I

    .line 6
    .line 7
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v6, 0x5

    .line 10
    const/4 v7, 0x4

    .line 11
    const/4 v8, 0x3

    .line 12
    const/4 v9, 0x2

    .line 13
    const/4 v10, 0x1

    .line 14
    const-wide/16 v11, 0x0

    .line 15
    .line 16
    iget-object v13, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->s:Landroidx/compose/animation/core/Transition;

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    iget-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->r:Ljava/lang/Object;

    .line 20
    .line 21
    const-wide/high16 v16, -0x8000000000000000L

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->q:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    if-eq v2, v10, :cond_4

    .line 29
    .line 30
    if-eq v2, v9, :cond_3

    .line 31
    .line 32
    if-eq v2, v8, :cond_2

    .line 33
    .line 34
    if-eq v2, v7, :cond_1

    .line 35
    .line 36
    if-ne v2, v6, :cond_0

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v5

    .line 42
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v4

    .line 48
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move/from16 v24, v14

    .line 52
    .line 53
    move-object v2, v15

    .line 54
    goto/16 :goto_9

    .line 55
    .line 56
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_4
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 67
    .line 68
    iget-object v10, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 69
    .line 70
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 78
    .line 79
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v18

    .line 89
    if-nez v18, :cond_6

    .line 90
    .line 91
    invoke-static {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->f(Landroidx/compose/animation/core/SeekableTransitionState;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v14}, Landroidx/compose/animation/core/SeekableTransitionState;->q(F)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13, v15}, Landroidx/compose/animation/core/Transition;->s(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v11, v12}, Landroidx/compose/animation/core/Transition;->o(J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->c(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 107
    .line 108
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 109
    .line 110
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->k:Lkotlinx/coroutines/sync/MutexImpl;

    .line 114
    .line 115
    iput-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 116
    .line 117
    iput-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 118
    .line 119
    iput v10, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->p:I

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    if-ne v10, v1, :cond_7

    .line 126
    .line 127
    goto/16 :goto_a

    .line 128
    .line 129
    :cond_7
    move-object v10, v2

    .line 130
    move-object v2, v3

    .line 131
    :goto_0
    :try_start_0
    iget-object v2, v2, Landroidx/compose/animation/core/SeekableTransitionState;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .line 133
    invoke-interface {v10, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_b

    .line 141
    .line 142
    iput-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 143
    .line 144
    iput-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 145
    .line 146
    iput v9, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->p:I

    .line 147
    .line 148
    iget-wide v9, v3, Landroidx/compose/animation/core/SeekableTransitionState;->m:J

    .line 149
    .line 150
    cmp-long v2, v9, v16

    .line 151
    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->p:Laf;

    .line 155
    .line 156
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v9}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-interface {v9, v0, v2}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    if-ne v2, v1, :cond_9

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    invoke-virtual {v3, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-ne v2, v1, :cond_9

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_9
    move-object v2, v5

    .line 179
    :goto_1
    if-ne v2, v1, :cond_a

    .line 180
    .line 181
    goto/16 :goto_a

    .line 182
    .line 183
    :cond_a
    :goto_2
    iput v8, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->p:I

    .line 184
    .line 185
    invoke-static {v3, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->i(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-ne v2, v1, :cond_b

    .line 190
    .line 191
    goto/16 :goto_a

    .line 192
    .line 193
    :cond_b
    :goto_3
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    .line 194
    .line 195
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 196
    .line 197
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_17

    .line 206
    .line 207
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->m()F

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/high16 v8, 0x3f800000    # 1.0f

    .line 212
    .line 213
    cmpg-float v2, v2, v8

    .line 214
    .line 215
    if-gez v2, :cond_c

    .line 216
    .line 217
    iget-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->o:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 218
    .line 219
    if-eqz v2, :cond_d

    .line 220
    .line 221
    iget-object v9, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 222
    .line 223
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-nez v9, :cond_c

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_c
    move/from16 v24, v14

    .line 231
    .line 232
    move-object/from16 v25, v15

    .line 233
    .line 234
    goto/16 :goto_8

    .line 235
    .line 236
    :cond_d
    :goto_4
    if-eqz v2, :cond_e

    .line 237
    .line 238
    iget-object v9, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 239
    .line 240
    move-object/from16 v18, v9

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_e
    move-object/from16 v18, v4

    .line 244
    .line 245
    :goto_5
    sget-object v9, Landroidx/compose/animation/core/SeekableTransitionState;->s:Landroidx/compose/animation/core/AnimationVector1D;

    .line 246
    .line 247
    if-eqz v18, :cond_10

    .line 248
    .line 249
    move/from16 v24, v14

    .line 250
    .line 251
    move-object/from16 v25, v15

    .line 252
    .line 253
    iget-wide v14, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    .line 254
    .line 255
    iget-object v8, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->e:Landroidx/compose/animation/core/AnimationVector1D;

    .line 256
    .line 257
    iget-object v10, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->f:Landroidx/compose/animation/core/AnimationVector1D;

    .line 258
    .line 259
    if-nez v10, :cond_f

    .line 260
    .line 261
    move-object/from16 v23, v9

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_f
    move-object/from16 v23, v10

    .line 265
    .line 266
    :goto_6
    sget-object v22, Landroidx/compose/animation/core/SeekableTransitionState;->t:Landroidx/compose/animation/core/AnimationVector1D;

    .line 267
    .line 268
    move-object/from16 v21, v8

    .line 269
    .line 270
    move-wide/from16 v19, v14

    .line 271
    .line 272
    invoke-interface/range {v18 .. v23}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->c(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    move-object v9, v8

    .line 277
    check-cast v9, Landroidx/compose/animation/core/AnimationVector1D;

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :cond_10
    move/from16 v24, v14

    .line 281
    .line 282
    move-object/from16 v25, v15

    .line 283
    .line 284
    if-eqz v2, :cond_14

    .line 285
    .line 286
    iget-wide v14, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    .line 287
    .line 288
    cmp-long v10, v14, v11

    .line 289
    .line 290
    if-nez v10, :cond_11

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_11
    iget-wide v14, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    .line 294
    .line 295
    cmp-long v10, v14, v16

    .line 296
    .line 297
    if-nez v10, :cond_12

    .line 298
    .line 299
    iget-wide v14, v3, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    .line 300
    .line 301
    :cond_12
    long-to-float v10, v14

    .line 302
    const v14, 0x4e6e6b28    # 1.0E9f

    .line 303
    .line 304
    .line 305
    div-float/2addr v10, v14

    .line 306
    cmpg-float v14, v10, v24

    .line 307
    .line 308
    if-gtz v14, :cond_13

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_13
    new-instance v9, Landroidx/compose/animation/core/AnimationVector1D;

    .line 312
    .line 313
    div-float/2addr v8, v10

    .line 314
    invoke-direct {v9, v8}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 315
    .line 316
    .line 317
    :cond_14
    :goto_7
    if-nez v2, :cond_15

    .line 318
    .line 319
    new-instance v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 320
    .line 321
    invoke-direct {v2}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;-><init>()V

    .line 322
    .line 323
    .line 324
    :cond_15
    iget-object v8, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->e:Landroidx/compose/animation/core/AnimationVector1D;

    .line 325
    .line 326
    iput-object v4, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 327
    .line 328
    const/4 v10, 0x0

    .line 329
    iput-boolean v10, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->c:Z

    .line 330
    .line 331
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->m()F

    .line 332
    .line 333
    .line 334
    move-result v14

    .line 335
    iput v14, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->d:F

    .line 336
    .line 337
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->m()F

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    invoke-virtual {v8, v10, v14}, Landroidx/compose/animation/core/AnimationVector1D;->e(IF)V

    .line 342
    .line 343
    .line 344
    iget-wide v14, v3, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    .line 345
    .line 346
    iput-wide v14, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    .line 347
    .line 348
    iput-wide v11, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    .line 349
    .line 350
    iput-object v9, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->f:Landroidx/compose/animation/core/AnimationVector1D;

    .line 351
    .line 352
    long-to-double v8, v14

    .line 353
    invoke-virtual {v3}, Landroidx/compose/animation/core/SeekableTransitionState;->m()F

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    float-to-double v10, v10

    .line 358
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 359
    .line 360
    sub-double/2addr v14, v10

    .line 361
    mul-double/2addr v14, v8

    .line 362
    invoke-static {v14, v15}, Lkotlin/math/MathKt;->c(D)J

    .line 363
    .line 364
    .line 365
    move-result-wide v8

    .line 366
    iput-wide v8, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->h:J

    .line 367
    .line 368
    iput-object v2, v3, Landroidx/compose/animation/core/SeekableTransitionState;->o:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 369
    .line 370
    :goto_8
    iput-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 371
    .line 372
    iput-object v4, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 373
    .line 374
    iput v7, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->p:I

    .line 375
    .line 376
    invoke-static {v3, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->g(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    if-ne v2, v1, :cond_16

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_16
    move-object/from16 v2, v25

    .line 384
    .line 385
    :goto_9
    invoke-virtual {v3, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->c(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    move/from16 v2, v24

    .line 389
    .line 390
    invoke-virtual {v3, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->q(F)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->j()V

    .line 394
    .line 395
    .line 396
    iput v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->p:I

    .line 397
    .line 398
    invoke-static {v3, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->h(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    if-ne v0, v1, :cond_17

    .line 403
    .line 404
    :goto_a
    return-object v1

    .line 405
    :cond_17
    return-object v5

    .line 406
    :catchall_0
    move-exception v0

    .line 407
    invoke-interface {v10, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    throw v0
.end method
