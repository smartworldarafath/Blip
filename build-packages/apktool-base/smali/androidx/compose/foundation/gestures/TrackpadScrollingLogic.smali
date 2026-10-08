.class public final Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;
.super Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    }
.end annotation


# instance fields
.field public final f:Lkotlinx/coroutines/channels/BufferedChannel;

.field public g:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, 0x6

    .line 6
    const p3, 0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p2, p1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    .line 11
    .line 12
    instance-of v4, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move-object v4, v2

    .line 17
    check-cast v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;

    .line 18
    .line 19
    iget v5, v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->o:I

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    and-int v7, v5, v6

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    sub-int/2addr v5, v6

    .line 28
    iput v5, v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->o:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;

    .line 32
    .line 33
    invoke-direct {v4, v0, v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v2, v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->m:Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    iget v6, v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->o:I

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v9, 0x1

    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    if-eq v6, v9, :cond_2

    .line 48
    .line 49
    if-ne v6, v8, :cond_1

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v7

    .line 62
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 75
    .line 76
    iget-wide v10, v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->b:J

    .line 77
    .line 78
    iget-wide v12, v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    .line 79
    .line 80
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 81
    .line 82
    const/16 v6, 0x20

    .line 83
    .line 84
    shr-long v14, v12, v6

    .line 85
    .line 86
    long-to-int v14, v14

    .line 87
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    invoke-virtual {v1, v10, v11, v14}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 95
    .line 96
    const-wide v14, 0xffffffffL

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    and-long/2addr v12, v14

    .line 102
    long-to-int v12, v12

    .line 103
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-virtual {v1, v10, v11, v12}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 111
    .line 112
    invoke-static {v1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->e(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget-wide v10, v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->b:J

    .line 119
    .line 120
    iget-wide v12, v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    .line 121
    .line 122
    move/from16 p2, v6

    .line 123
    .line 124
    iget-object v6, v3, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 125
    .line 126
    move-wide/from16 v16, v14

    .line 127
    .line 128
    shr-long v14, v12, p2

    .line 129
    .line 130
    long-to-int v14, v14

    .line 131
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    invoke-virtual {v6, v10, v11, v14}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 136
    .line 137
    .line 138
    iget-object v6, v3, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 139
    .line 140
    and-long v12, v12, v16

    .line 141
    .line 142
    long-to-int v12, v12

    .line 143
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    invoke-virtual {v6, v10, v11, v12}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(JF)V

    .line 148
    .line 149
    .line 150
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v6, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 153
    .line 154
    invoke-virtual {v6, v1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 159
    .line 160
    :cond_4
    new-instance v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;

    .line 161
    .line 162
    move-object/from16 v6, p1

    .line 163
    .line 164
    invoke-direct {v1, v0, v6, v2, v7}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 165
    .line 166
    .line 167
    iput v9, v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->o:I

    .line 168
    .line 169
    invoke-virtual {v0, v1, v4}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-ne v1, v5, :cond_5

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    :goto_1
    iget-object v0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->b:Lkotlin/jvm/functions/Function2;

    .line 177
    .line 178
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 179
    .line 180
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->c(F)F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    iget-object v3, v3, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 188
    .line 189
    invoke-virtual {v3, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->c(F)F

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    new-instance v3, Landroidx/compose/ui/unit/Velocity;

    .line 198
    .line 199
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    .line 200
    .line 201
    .line 202
    iput v8, v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$1;->o:I

    .line 203
    .line 204
    invoke-interface {v0, v3, v4}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-ne v0, v5, :cond_6

    .line 209
    .line 210
    :goto_2
    return-object v5

    .line 211
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object v0
.end method

.method public static e(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/b;

    .line 2
    .line 3
    const/4 v1, 0x1

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
    check-cast v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

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
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

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
.method public final d(Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 12
    .line 13
    if-eqz v2, :cond_9

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    const/4 v9, 0x0

    .line 26
    iget-object v10, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 27
    .line 28
    iget-object v11, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 29
    .line 30
    const-wide v12, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    if-ge v7, v6, :cond_4

    .line 36
    .line 37
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    check-cast v14, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 42
    .line 43
    const/4 v15, 0x1

    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    iget-wide v3, v14, Landroidx/compose/ui/input/pointer/HistoricalChange;->d:J

    .line 47
    .line 48
    xor-long/2addr v3, v12

    .line 49
    invoke-virtual {v11, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    invoke-virtual {v11, v12, v13}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    cmpg-float v9, v11, v9

    .line 58
    .line 59
    if-nez v9, :cond_0

    .line 60
    .line 61
    move v9, v15

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move/from16 v9, v16

    .line 64
    .line 65
    :goto_1
    if-nez v9, :cond_3

    .line 66
    .line 67
    new-instance v17, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 68
    .line 69
    iget-wide v11, v14, Landroidx/compose/ui/input/pointer/HistoricalChange;->a:J

    .line 70
    .line 71
    const/16 v22, 0x0

    .line 72
    .line 73
    move-wide/from16 v18, v3

    .line 74
    .line 75
    move-wide/from16 v20, v11

    .line 76
    .line 77
    invoke-direct/range {v17 .. v22}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;-><init>(JJZ)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v3, v17

    .line 81
    .line 82
    invoke-interface {v10, v3}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v3, v3, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    if-eqz v8, :cond_1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    move/from16 v8, v16

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_2
    move v8, v15

    .line 97
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    const/4 v15, 0x1

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    iget-wide v3, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->l:J

    .line 104
    .line 105
    xor-long/2addr v3, v12

    .line 106
    iget v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    .line 107
    .line 108
    const/16 v5, 0xc

    .line 109
    .line 110
    if-ne v1, v5, :cond_5

    .line 111
    .line 112
    move/from16 v22, v15

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move/from16 v22, v16

    .line 116
    .line 117
    :goto_4
    invoke-virtual {v11, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    invoke-virtual {v11, v5, v6}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(J)F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    cmpg-float v1, v1, v9

    .line 126
    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    move v1, v15

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    move/from16 v1, v16

    .line 132
    .line 133
    :goto_5
    if-eqz v1, :cond_7

    .line 134
    .line 135
    if-eqz v22, :cond_b

    .line 136
    .line 137
    :cond_7
    new-instance v17, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 138
    .line 139
    iget-wide v1, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 140
    .line 141
    move-wide/from16 v20, v1

    .line 142
    .line 143
    move-wide/from16 v18, v3

    .line 144
    .line 145
    invoke-direct/range {v17 .. v22}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;-><init>(JJZ)V

    .line 146
    .line 147
    .line 148
    move-object/from16 v1, v17

    .line 149
    .line 150
    invoke-interface {v10, v1}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    instance-of v1, v1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    if-eqz v8, :cond_a

    .line 159
    .line 160
    :cond_8
    move v8, v15

    .line 161
    goto :goto_6

    .line 162
    :cond_9
    const/4 v15, 0x1

    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    :cond_a
    move/from16 v8, v16

    .line 166
    .line 167
    :cond_b
    :goto_6
    if-nez v8, :cond_d

    .line 168
    .line 169
    iget-boolean v0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    .line 170
    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_c
    return v16

    .line 175
    :cond_d
    :goto_7
    return v15
.end method
