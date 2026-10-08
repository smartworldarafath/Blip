.class final Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1"
    f = "StylusHandwriting.kt"
    l = {
        0x74,
        0x90,
        0xb6
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public l:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public m:Landroidx/compose/ui/input/pointer/PointerEventPass;

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->p:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->p:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;-><init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->n:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->p:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-eq v2, v7, :cond_2

    .line 16
    .line 17
    if-eq v2, v5, :cond_1

    .line 18
    .line 19
    if-ne v2, v4, :cond_0

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->l:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move v6, v4

    .line 31
    move-object v14, v8

    .line 32
    move-object/from16 v4, p1

    .line 33
    .line 34
    goto/16 :goto_16

    .line 35
    .line 36
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v8

    .line 42
    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->m:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 43
    .line 44
    iget-object v9, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->l:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 45
    .line 46
    iget-object v10, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 49
    .line 50
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object/from16 v8, p1

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 60
    .line 61
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object/from16 v9, p1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 73
    .line 74
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 75
    .line 76
    iput-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 77
    .line 78
    iput v7, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->n:I

    .line 79
    .line 80
    invoke-static {v2, v7, v9, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    if-ne v9, v1, :cond_4

    .line 85
    .line 86
    goto/16 :goto_15

    .line 87
    .line 88
    :cond_4
    :goto_0
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 89
    .line 90
    iget v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 91
    .line 92
    iget-wide v11, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 93
    .line 94
    if-ne v10, v4, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v13, 0x4

    .line 98
    if-ne v10, v13, :cond_2b

    .line 99
    .line 100
    :goto_1
    const/16 v10, 0x20

    .line 101
    .line 102
    shr-long v13, v11, v10

    .line 103
    .line 104
    long-to-int v13, v13

    .line 105
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    const/4 v15, 0x0

    .line 110
    cmpl-float v14, v14, v15

    .line 111
    .line 112
    if-ltz v14, :cond_6

    .line 113
    .line 114
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->f()J

    .line 119
    .line 120
    .line 121
    move-result-wide v16

    .line 122
    move-object/from16 p1, v9

    .line 123
    .line 124
    shr-long v8, v16, v10

    .line 125
    .line 126
    long-to-int v8, v8

    .line 127
    int-to-float v8, v8

    .line 128
    cmpg-float v8, v13, v8

    .line 129
    .line 130
    if-gez v8, :cond_7

    .line 131
    .line 132
    const-wide v8, 0xffffffffL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    and-long v10, v11, v8

    .line 138
    .line 139
    long-to-int v10, v10

    .line 140
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    cmpl-float v11, v11, v15

    .line 145
    .line 146
    if-ltz v11, :cond_7

    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->f()J

    .line 153
    .line 154
    .line 155
    move-result-wide v11

    .line 156
    and-long/2addr v8, v11

    .line 157
    long-to-int v8, v8

    .line 158
    int-to-float v8, v8

    .line 159
    cmpg-float v8, v10, v8

    .line 160
    .line 161
    if-gez v8, :cond_7

    .line 162
    .line 163
    move v8, v7

    .line 164
    goto :goto_2

    .line 165
    :cond_6
    move-object/from16 p1, v9

    .line 166
    .line 167
    :cond_7
    const/4 v8, 0x0

    .line 168
    :goto_2
    iget-boolean v9, v3, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->A:Z

    .line 169
    .line 170
    if-nez v9, :cond_9

    .line 171
    .line 172
    if-eqz v8, :cond_8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_9
    :goto_3
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 179
    .line 180
    :goto_4
    move-object/from16 v9, p1

    .line 181
    .line 182
    move-object v10, v2

    .line 183
    move-object v2, v8

    .line 184
    :goto_5
    iput-object v10, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v9, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->l:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 187
    .line 188
    iput-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->m:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 189
    .line 190
    iput v5, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->n:I

    .line 191
    .line 192
    invoke-interface {v10, v2, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    if-ne v8, v1, :cond_a

    .line 197
    .line 198
    goto/16 :goto_15

    .line 199
    .line 200
    :cond_a
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 201
    .line 202
    iget-object v11, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    const/4 v13, 0x0

    .line 209
    :goto_7
    if-ge v13, v12, :cond_c

    .line 210
    .line 211
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    move-object v6, v15

    .line 216
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 217
    .line 218
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 219
    .line 220
    .line 221
    move-result v17

    .line 222
    if-nez v17, :cond_b

    .line 223
    .line 224
    move-object/from16 v17, v15

    .line 225
    .line 226
    iget-wide v14, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 227
    .line 228
    iget-wide v4, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 229
    .line 230
    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_b

    .line 235
    .line 236
    iget-boolean v4, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 237
    .line 238
    if-eqz v4, :cond_b

    .line 239
    .line 240
    move-object/from16 v15, v17

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 244
    .line 245
    const/4 v4, 0x3

    .line 246
    const/4 v5, 0x2

    .line 247
    goto :goto_7

    .line 248
    :cond_c
    const/4 v15, 0x0

    .line 249
    :goto_8
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 250
    .line 251
    if-nez v15, :cond_d

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_d
    iget-wide v4, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 255
    .line 256
    iget-wide v11, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 257
    .line 258
    sub-long/2addr v4, v11

    .line 259
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-interface {v6}, Landroidx/compose/ui/platform/ViewConfiguration;->b()J

    .line 264
    .line 265
    .line 266
    move-result-wide v11

    .line 267
    cmp-long v4, v4, v11

    .line 268
    .line 269
    if-ltz v4, :cond_e

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_e
    iget v4, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->c:I

    .line 273
    .line 274
    const/4 v5, 0x2

    .line 275
    if-ne v4, v5, :cond_f

    .line 276
    .line 277
    :goto_9
    const/4 v15, 0x0

    .line 278
    goto :goto_a

    .line 279
    :cond_f
    iget-wide v11, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 280
    .line 281
    iget-wide v13, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 282
    .line 283
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 284
    .line 285
    .line 286
    move-result-wide v11

    .line 287
    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-interface {v6}, Landroidx/compose/ui/platform/ViewConfiguration;->c()F

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    cmpl-float v4, v4, v6

    .line 300
    .line 301
    if-lez v4, :cond_2a

    .line 302
    .line 303
    :goto_a
    if-nez v15, :cond_10

    .line 304
    .line 305
    goto/16 :goto_19

    .line 306
    .line 307
    :cond_10
    iget-boolean v2, v3, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->A:Z

    .line 308
    .line 309
    if-nez v2, :cond_25

    .line 310
    .line 311
    iget-object v2, v3, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 312
    .line 313
    const/4 v4, 0x0

    .line 314
    :goto_b
    const/16 v5, 0x10

    .line 315
    .line 316
    if-eqz v2, :cond_18

    .line 317
    .line 318
    instance-of v6, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 319
    .line 320
    if-eqz v6, :cond_11

    .line 321
    .line 322
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 323
    .line 324
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->c0(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    .line 325
    .line 326
    .line 327
    goto/16 :goto_13

    .line 328
    .line 329
    :cond_11
    iget v6, v2, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 330
    .line 331
    and-int/lit16 v6, v6, 0x400

    .line 332
    .line 333
    if-eqz v6, :cond_17

    .line 334
    .line 335
    instance-of v6, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 336
    .line 337
    if-eqz v6, :cond_17

    .line 338
    .line 339
    move-object v6, v2

    .line 340
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 341
    .line 342
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 343
    .line 344
    const/4 v8, 0x0

    .line 345
    :goto_c
    if-eqz v6, :cond_16

    .line 346
    .line 347
    iget v11, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 348
    .line 349
    and-int/lit16 v11, v11, 0x400

    .line 350
    .line 351
    if-eqz v11, :cond_15

    .line 352
    .line 353
    add-int/lit8 v8, v8, 0x1

    .line 354
    .line 355
    if-ne v8, v7, :cond_12

    .line 356
    .line 357
    move-object v2, v6

    .line 358
    goto :goto_d

    .line 359
    :cond_12
    if-nez v4, :cond_13

    .line 360
    .line 361
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 362
    .line 363
    new-array v11, v5, [Landroidx/compose/ui/Modifier$Node;

    .line 364
    .line 365
    invoke-direct {v4, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_13
    if-eqz v2, :cond_14

    .line 369
    .line 370
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    const/4 v2, 0x0

    .line 374
    :cond_14
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :cond_15
    :goto_d
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_16
    if-ne v8, v7, :cond_17

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_17
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    goto :goto_b

    .line 388
    :cond_18
    iget-object v2, v3, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 389
    .line 390
    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 391
    .line 392
    if-nez v2, :cond_19

    .line 393
    .line 394
    const-string v2, "visitChildren called on an unattached node"

    .line 395
    .line 396
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_19
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 400
    .line 401
    new-array v4, v5, [Landroidx/compose/ui/Modifier$Node;

    .line 402
    .line 403
    invoke-direct {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-object v4, v3, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 407
    .line 408
    iget-object v6, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 409
    .line 410
    if-nez v6, :cond_1a

    .line 411
    .line 412
    invoke-static {v2, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 413
    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_1a
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    :cond_1b
    :goto_e
    iget v4, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 420
    .line 421
    if-eqz v4, :cond_25

    .line 422
    .line 423
    add-int/lit8 v4, v4, -0x1

    .line 424
    .line 425
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    .line 430
    .line 431
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 432
    .line 433
    and-int/lit16 v6, v6, 0x400

    .line 434
    .line 435
    if-nez v6, :cond_1c

    .line 436
    .line 437
    invoke-static {v2, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 438
    .line 439
    .line 440
    goto :goto_e

    .line 441
    :cond_1c
    :goto_f
    if-eqz v4, :cond_1b

    .line 442
    .line 443
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 444
    .line 445
    and-int/lit16 v6, v6, 0x400

    .line 446
    .line 447
    if-eqz v6, :cond_24

    .line 448
    .line 449
    const/4 v6, 0x0

    .line 450
    :goto_10
    if-eqz v4, :cond_1b

    .line 451
    .line 452
    instance-of v8, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 453
    .line 454
    if-eqz v8, :cond_1d

    .line 455
    .line 456
    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 457
    .line 458
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->c0(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    .line 459
    .line 460
    .line 461
    goto :goto_13

    .line 462
    :cond_1d
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 463
    .line 464
    and-int/lit16 v8, v8, 0x400

    .line 465
    .line 466
    if-eqz v8, :cond_23

    .line 467
    .line 468
    instance-of v8, v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 469
    .line 470
    if-eqz v8, :cond_23

    .line 471
    .line 472
    move-object v8, v4

    .line 473
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 474
    .line 475
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 476
    .line 477
    const/4 v11, 0x0

    .line 478
    :goto_11
    if-eqz v8, :cond_22

    .line 479
    .line 480
    iget v12, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 481
    .line 482
    and-int/lit16 v12, v12, 0x400

    .line 483
    .line 484
    if-eqz v12, :cond_21

    .line 485
    .line 486
    add-int/lit8 v11, v11, 0x1

    .line 487
    .line 488
    if-ne v11, v7, :cond_1e

    .line 489
    .line 490
    move-object v4, v8

    .line 491
    goto :goto_12

    .line 492
    :cond_1e
    if-nez v6, :cond_1f

    .line 493
    .line 494
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 495
    .line 496
    new-array v12, v5, [Landroidx/compose/ui/Modifier$Node;

    .line 497
    .line 498
    invoke-direct {v6, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    :cond_1f
    if-eqz v4, :cond_20

    .line 502
    .line 503
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    const/4 v4, 0x0

    .line 507
    :cond_20
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    :cond_21
    :goto_12
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 511
    .line 512
    goto :goto_11

    .line 513
    :cond_22
    if-ne v11, v7, :cond_23

    .line 514
    .line 515
    goto :goto_10

    .line 516
    :cond_23
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    goto :goto_10

    .line 521
    :cond_24
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 522
    .line 523
    goto :goto_f

    .line 524
    :cond_25
    :goto_13
    iget-object v2, v3, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->z:Lkotlin/jvm/functions/Function0;

    .line 525
    .line 526
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 530
    .line 531
    .line 532
    move-object v2, v9

    .line 533
    move-object v3, v10

    .line 534
    :goto_14
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 535
    .line 536
    iput-object v3, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->o:Ljava/lang/Object;

    .line 537
    .line 538
    iput-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->l:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 539
    .line 540
    const/4 v14, 0x0

    .line 541
    iput-object v14, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->m:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 542
    .line 543
    const/4 v6, 0x3

    .line 544
    iput v6, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->n:I

    .line 545
    .line 546
    invoke-interface {v3, v4, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    if-ne v4, v1, :cond_26

    .line 551
    .line 552
    :goto_15
    return-object v1

    .line 553
    :cond_26
    :goto_16
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 554
    .line 555
    iget-object v4, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 556
    .line 557
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    const/4 v7, 0x0

    .line 562
    :goto_17
    if-ge v7, v5, :cond_28

    .line 563
    .line 564
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v8

    .line 568
    move-object v9, v8

    .line 569
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 570
    .line 571
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 572
    .line 573
    .line 574
    move-result v10

    .line 575
    if-nez v10, :cond_27

    .line 576
    .line 577
    iget-wide v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 578
    .line 579
    iget-wide v12, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 580
    .line 581
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 582
    .line 583
    .line 584
    move-result v10

    .line 585
    if-eqz v10, :cond_27

    .line 586
    .line 587
    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 588
    .line 589
    if-eqz v9, :cond_27

    .line 590
    .line 591
    goto :goto_18

    .line 592
    :cond_27
    add-int/lit8 v7, v7, 0x1

    .line 593
    .line 594
    goto :goto_17

    .line 595
    :cond_28
    move-object v8, v14

    .line 596
    :goto_18
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 597
    .line 598
    if-nez v8, :cond_29

    .line 599
    .line 600
    goto :goto_19

    .line 601
    :cond_29
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 602
    .line 603
    .line 604
    goto :goto_14

    .line 605
    :cond_2a
    const/4 v4, 0x3

    .line 606
    goto/16 :goto_5

    .line 607
    .line 608
    :cond_2b
    :goto_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 609
    .line 610
    return-object v0
.end method
