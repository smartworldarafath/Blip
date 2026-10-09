.class final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/NestedScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3"
    f = "MouseWheelScrollingLogic.kt"
    l = {
        0xe4,
        0xf1,
        0x105
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public o:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public p:I

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic t:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic u:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic v:F

.field public final synthetic w:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public final synthetic x:F

.field public final synthetic y:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/foundation/gestures/MouseWheelScrollingLogic;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->u:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->v:F

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->w:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->x:F

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->y:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;

    .line 2
    .line 3
    iget v6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->x:F

    .line 4
    .line 5
    iget-object v7, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->y:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->u:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget v4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->v:F

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->w:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/foundation/gestures/MouseWheelScrollingLogic;FLandroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->q:I

    .line 6
    .line 7
    iget-object v1, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->u:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    iget-object v2, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->w:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 11
    .line 12
    iget-object v4, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->s:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 13
    .line 14
    const/4 v10, 0x3

    .line 15
    const/4 v11, 0x2

    .line 16
    const/4 v12, 0x1

    .line 17
    iget-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->t:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eq v0, v12, :cond_2

    .line 22
    .line 23
    if-eq v0, v11, :cond_1

    .line 24
    .line 25
    if-ne v0, v10, :cond_0

    .line 26
    .line 27
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 28
    .line 29
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 30
    .line 31
    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object v14, v0

    .line 39
    move-object v0, v2

    .line 40
    move-object v6, v3

    .line 41
    move-object v2, v4

    .line 42
    move/from16 v19, v11

    .line 43
    .line 44
    move v11, v12

    .line 45
    move-object v4, v13

    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v9

    .line 56
    :cond_1
    iget v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->p:I

    .line 57
    .line 58
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 59
    .line 60
    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v5, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 63
    .line 64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object/from16 v18, v1

    .line 68
    .line 69
    move-object v14, v3

    .line 70
    move-object/from16 v20, v4

    .line 71
    .line 72
    move/from16 v19, v11

    .line 73
    .line 74
    move v11, v12

    .line 75
    move-object/from16 v21, v13

    .line 76
    .line 77
    move-object v12, v2

    .line 78
    move-object v13, v5

    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_2
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 82
    .line 83
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 84
    .line 85
    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v5, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 88
    .line 89
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v14, v0

    .line 93
    move-object v0, v2

    .line 94
    move-object v6, v3

    .line 95
    move-object v2, v4

    .line 96
    move/from16 v19, v11

    .line 97
    .line 98
    move v11, v12

    .line 99
    move-object v4, v13

    .line 100
    move-object/from16 v3, p1

    .line 101
    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 110
    .line 111
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-boolean v12, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 117
    .line 118
    move-object v6, v3

    .line 119
    :goto_0
    iget-boolean v3, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 120
    .line 121
    sget-object v16, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    if-eqz v3, :cond_c

    .line 124
    .line 125
    const/4 v14, 0x0

    .line 126
    iput-boolean v14, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 127
    .line 128
    iget v3, v4, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 129
    .line 130
    iget-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v5, Landroidx/compose/animation/core/AnimationState;

    .line 133
    .line 134
    iget-object v5, v5, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 135
    .line 136
    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 137
    .line 138
    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Ljava/lang/Number;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    sub-float/2addr v3, v5

    .line 149
    iget-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 152
    .line 153
    iget-boolean v5, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->c:Z

    .line 154
    .line 155
    if-nez v5, :cond_4

    .line 156
    .line 157
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    iget v15, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->v:F

    .line 162
    .line 163
    cmpg-float v5, v5, v15

    .line 164
    .line 165
    if-gez v5, :cond_5

    .line 166
    .line 167
    :cond_4
    move-object/from16 v19, v13

    .line 168
    .line 169
    move-object v13, v0

    .line 170
    move-object v0, v2

    .line 171
    move-object v2, v4

    .line 172
    move-object/from16 v4, v19

    .line 173
    .line 174
    move/from16 v19, v11

    .line 175
    .line 176
    move v11, v12

    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    mul-float/2addr v3, v15

    .line 184
    invoke-virtual {v2, v0, v3}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->e(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    .line 185
    .line 186
    .line 187
    iget-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v5, Landroidx/compose/animation/core/AnimationState;

    .line 190
    .line 191
    iget-object v15, v5, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 192
    .line 193
    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 194
    .line 195
    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    check-cast v15, Ljava/lang/Number;

    .line 200
    .line 201
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    add-float/2addr v15, v3

    .line 206
    const/4 v3, 0x0

    .line 207
    const/16 v10, 0x1e

    .line 208
    .line 209
    invoke-static {v5, v15, v3, v10}, Landroidx/compose/animation/core/AnimationStateKt;->c(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    iput-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 214
    .line 215
    iget v5, v4, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 216
    .line 217
    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 218
    .line 219
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 220
    .line 221
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    sub-float/2addr v5, v3

    .line 232
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    iget v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->x:F

    .line 237
    .line 238
    div-float/2addr v3, v5

    .line 239
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    const/16 v5, 0x64

    .line 244
    .line 245
    if-le v3, v5, :cond_6

    .line 246
    .line 247
    move v10, v5

    .line 248
    goto :goto_1

    .line 249
    :cond_6
    move v10, v3

    .line 250
    :goto_1
    iget-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 251
    .line 252
    move-object v15, v3

    .line 253
    check-cast v15, Landroidx/compose/animation/core/AnimationState;

    .line 254
    .line 255
    iget v3, v4, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 256
    .line 257
    move v5, v3

    .line 258
    move-object v3, v1

    .line 259
    new-instance v1, Landroidx/compose/foundation/gestures/c;

    .line 260
    .line 261
    move/from16 v18, v5

    .line 262
    .line 263
    iget-object v5, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->y:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 264
    .line 265
    move/from16 v12, v18

    .line 266
    .line 267
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/gestures/c;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v18, v3

    .line 271
    .line 272
    move-object/from16 v20, v4

    .line 273
    .line 274
    iput-object v0, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 277
    .line 278
    iput-object v9, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 279
    .line 280
    iput v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->p:I

    .line 281
    .line 282
    iput v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->q:I

    .line 283
    .line 284
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 285
    .line 286
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 287
    .line 288
    .line 289
    iget-object v4, v15, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 290
    .line 291
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 292
    .line 293
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Ljava/lang/Number;

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    iput v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 304
    .line 305
    move-object v4, v1

    .line 306
    new-instance v1, Ljava/lang/Float;

    .line 307
    .line 308
    invoke-direct {v1, v12}, Ljava/lang/Float;-><init>(F)V

    .line 309
    .line 310
    .line 311
    sget-object v5, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 312
    .line 313
    invoke-static {v10, v14, v5, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    move v12, v10

    .line 318
    new-instance v10, Ls2;

    .line 319
    .line 320
    move-object v14, v15

    .line 321
    const/4 v15, 0x7

    .line 322
    move/from16 v19, v11

    .line 323
    .line 324
    move/from16 v17, v12

    .line 325
    .line 326
    move-object/from16 v21, v13

    .line 327
    .line 328
    move-object v13, v0

    .line 329
    move-object v12, v2

    .line 330
    move-object v11, v3

    .line 331
    move-object v0, v14

    .line 332
    const/4 v2, 0x3

    .line 333
    const/4 v3, 0x1

    .line 334
    move-object v14, v4

    .line 335
    invoke-direct/range {v10 .. v15}, Ls2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 336
    .line 337
    .line 338
    move-object v4, v10

    .line 339
    move v10, v3

    .line 340
    const/4 v3, 0x1

    .line 341
    move v11, v10

    .line 342
    move v10, v2

    .line 343
    move-object v2, v5

    .line 344
    move-object v5, v7

    .line 345
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->e(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 350
    .line 351
    if-ne v0, v1, :cond_7

    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_7
    move-object/from16 v0, v16

    .line 355
    .line 356
    :goto_2
    if-ne v0, v8, :cond_8

    .line 357
    .line 358
    goto/16 :goto_7

    .line 359
    .line 360
    :cond_8
    move-object v14, v6

    .line 361
    move/from16 v0, v17

    .line 362
    .line 363
    :goto_3
    iget-boolean v1, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 364
    .line 365
    if-nez v1, :cond_a

    .line 366
    .line 367
    const-wide/16 v1, 0x32

    .line 368
    .line 369
    int-to-long v3, v0

    .line 370
    sub-long v5, v1, v3

    .line 371
    .line 372
    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 373
    .line 374
    iput-object v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 375
    .line 376
    iput-object v14, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 377
    .line 378
    iput v10, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->q:I

    .line 379
    .line 380
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->y:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 381
    .line 382
    move-object v0, v12

    .line 383
    move-object/from16 v1, v18

    .line 384
    .line 385
    move-object/from16 v2, v20

    .line 386
    .line 387
    move-object/from16 v4, v21

    .line 388
    .line 389
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->d(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    if-ne v3, v8, :cond_9

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_9
    move-object v5, v13

    .line 397
    move-object v6, v14

    .line 398
    :goto_4
    check-cast v3, Ljava/lang/Boolean;

    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    iput-boolean v3, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 405
    .line 406
    :goto_5
    move-object v13, v4

    .line 407
    move v12, v11

    .line 408
    move/from16 v11, v19

    .line 409
    .line 410
    move-object v4, v2

    .line 411
    move-object v2, v0

    .line 412
    move-object v0, v5

    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_a
    move-object v2, v12

    .line 416
    move-object v0, v13

    .line 417
    move-object v6, v14

    .line 418
    move-object/from16 v1, v18

    .line 419
    .line 420
    move-object/from16 v4, v20

    .line 421
    .line 422
    move-object/from16 v13, v21

    .line 423
    .line 424
    move v12, v11

    .line 425
    move/from16 v11, v19

    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :goto_6
    invoke-virtual {v0, v13, v3}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->e(Landroidx/compose/foundation/gestures/NestedScrollScope;F)F

    .line 430
    .line 431
    .line 432
    iput-object v13, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->r:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 435
    .line 436
    iput-object v6, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 437
    .line 438
    iput v11, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->q:I

    .line 439
    .line 440
    iget-object v3, v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$dispatchMouseWheelScroll$3;->y:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 441
    .line 442
    move-object v14, v6

    .line 443
    const-wide/16 v5, 0x32

    .line 444
    .line 445
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->d(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    if-ne v3, v8, :cond_b

    .line 450
    .line 451
    :goto_7
    return-object v8

    .line 452
    :cond_b
    move-object v5, v13

    .line 453
    move-object v6, v14

    .line 454
    :goto_8
    check-cast v3, Ljava/lang/Boolean;

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    iput-boolean v3, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 461
    .line 462
    move-object/from16 v7, p0

    .line 463
    .line 464
    goto :goto_5

    .line 465
    :cond_c
    return-object v16
.end method
