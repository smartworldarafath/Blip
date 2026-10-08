.class final Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;
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
    c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3"
    f = "TrackpadScrollingLogic.kt"
    l = {
        0xab
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

.field public final synthetic r:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic s:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->q:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->r:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->s:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->r:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->s:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->q:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->p:Ljava/lang/Object;

    .line 13
    .line 14
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
    iget v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->o:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->r:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->s:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->q:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-ne v2, v5, :cond_0

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 20
    .line 21
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->p:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v8, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    move-object v9, v8

    .line 29
    move-object v8, v2

    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v3

    .line 39
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->p:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 45
    .line 46
    iget-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 49
    .line 50
    iget-wide v8, v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    .line 51
    .line 52
    invoke-virtual {v4, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v8

    .line 56
    invoke-virtual {v4, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    iget-object v9, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 61
    .line 62
    invoke-virtual {v9, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {v9, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(F)J

    .line 67
    .line 68
    .line 69
    move-result-wide v10

    .line 70
    move-object v8, v2

    .line 71
    check-cast v8, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 72
    .line 73
    invoke-virtual {v8, v5, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a(IJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v10

    .line 77
    invoke-virtual {v9, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v10

    .line 81
    invoke-virtual {v9, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)F

    .line 82
    .line 83
    .line 84
    move-object v8, v2

    .line 85
    :goto_0
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 88
    .line 89
    iget-boolean v2, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->c:Z

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    iget-object v2, v7, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 94
    .line 95
    iput-object v8, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->p:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v6, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 98
    .line 99
    iput v5, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->o:I

    .line 100
    .line 101
    new-instance v9, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2;

    .line 102
    .line 103
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v9, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-ne v2, v1, :cond_2

    .line 111
    .line 112
    return-object v1

    .line 113
    :cond_2
    move-object v9, v8

    .line 114
    move-object v8, v6

    .line 115
    :goto_1
    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 116
    .line 117
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 120
    .line 121
    iget-object v8, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    .line 122
    .line 123
    iget-wide v10, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->b:J

    .line 124
    .line 125
    iget-wide v12, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    .line 126
    .line 127
    iget-object v2, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 128
    .line 129
    const/16 p1, 0x20

    .line 130
    .line 131
    shr-long v14, v12, p1

    .line 132
    .line 133
    long-to-int v14, v14

    .line 134
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    invoke-virtual {v2, v10, v11, v14}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 139
    .line 140
    .line 141
    iget-object v2, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 142
    .line 143
    const-wide v14, 0xffffffffL

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    and-long/2addr v12, v14

    .line 149
    long-to-int v8, v12

    .line 150
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    invoke-virtual {v2, v10, v11, v8}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v7, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 158
    .line 159
    invoke-static {v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->e(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    iget-object v8, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    .line 166
    .line 167
    iget-wide v10, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->b:J

    .line 168
    .line 169
    iget-wide v12, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    .line 170
    .line 171
    iget-object v3, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 172
    .line 173
    move-wide/from16 v16, v14

    .line 174
    .line 175
    shr-long v14, v12, p1

    .line 176
    .line 177
    long-to-int v14, v14

    .line 178
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 179
    .line 180
    .line 181
    move-result v14

    .line 182
    invoke-virtual {v3, v10, v11, v14}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 183
    .line 184
    .line 185
    iget-object v3, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 186
    .line 187
    and-long v12, v12, v16

    .line 188
    .line 189
    long-to-int v8, v12

    .line 190
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    invoke-virtual {v3, v10, v11, v8}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 206
    .line 207
    :cond_3
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 210
    .line 211
    iget-wide v2, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    .line 212
    .line 213
    invoke-virtual {v4, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    invoke-virtual {v4, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    iget-object v3, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 222
    .line 223
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(F)J

    .line 228
    .line 229
    .line 230
    move-result-wide v10

    .line 231
    move-object v2, v9

    .line 232
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 233
    .line 234
    invoke-virtual {v2, v5, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a(IJ)J

    .line 235
    .line 236
    .line 237
    move-result-wide v10

    .line 238
    invoke-virtual {v3, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v10

    .line 242
    invoke-virtual {v3, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)F

    .line 243
    .line 244
    .line 245
    move-object v8, v9

    .line 246
    const/4 v3, 0x0

    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 250
    .line 251
    return-object v0
.end method
