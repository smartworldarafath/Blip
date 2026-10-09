.class public abstract Landroidx/compose/foundation/gestures/DragGestureDetectorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/high16 v0, 0x3e000000    # 0.125f

    .line 2
    .line 3
    const/high16 v1, 0x41900000    # 18.0f

    .line 4
    .line 5
    div-float/2addr v0, v1

    .line 6
    sput v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->p:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->p:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->o:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->p:I

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    if-ne v5, v6, :cond_1

    .line 40
    .line 41
    iget-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->n:Lkotlin/jvm/internal/Ref$LongRef;

    .line 42
    .line 43
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object/from16 v16, v1

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    move-object/from16 v0, v16

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v7

    .line 60
    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 81
    .line 82
    move-object/from16 v0, p0

    .line 83
    .line 84
    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 85
    .line 86
    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->n:Lkotlin/jvm/internal/Ref$LongRef;

    .line 87
    .line 88
    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->p:I

    .line 89
    .line 90
    invoke-static {v0, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-ne v1, v4, :cond_4

    .line 95
    .line 96
    return-object v4

    .line 97
    :cond_4
    move-object/from16 v16, v2

    .line 98
    .line 99
    move-object v2, v1

    .line 100
    move-object/from16 v1, v16

    .line 101
    .line 102
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 103
    .line 104
    iget-object v5, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v9, 0x0

    .line 111
    move v10, v9

    .line 112
    :goto_3
    if-ge v10, v8, :cond_6

    .line 113
    .line 114
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    move-object v12, v11

    .line 119
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 120
    .line 121
    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 122
    .line 123
    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 124
    .line 125
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_5

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    move-object v11, v7

    .line 136
    :goto_4
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 137
    .line 138
    if-nez v11, :cond_7

    .line 139
    .line 140
    move-object v11, v7

    .line 141
    goto :goto_7

    .line 142
    :cond_7
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_b

    .line 147
    .line 148
    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    :goto_5
    if-ge v9, v5, :cond_9

    .line 155
    .line 156
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    move-object v10, v8

    .line 161
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 162
    .line 163
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 164
    .line 165
    if-eqz v10, :cond_8

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_9
    move-object v8, v7

    .line 172
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 173
    .line 174
    if-nez v8, :cond_a

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_a
    iget-wide v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 178
    .line 179
    iput-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_b
    invoke-static {v11, v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 183
    .line 184
    .line 185
    move-result-wide v8

    .line 186
    const-wide/16 v12, 0x0

    .line 187
    .line 188
    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_d

    .line 193
    .line 194
    :goto_7
    if-eqz v11, :cond_c

    .line 195
    .line 196
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_c

    .line 201
    .line 202
    return-object v11

    .line 203
    :cond_c
    :goto_8
    return-object v7

    .line 204
    :cond_d
    :goto_9
    move-object v2, v1

    .line 205
    goto :goto_1
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->q:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p3, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_3
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    iget-object p3, p3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v5, 0x0

    .line 78
    :goto_1
    if-ge v5, v2, :cond_5

    .line 79
    .line 80
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    move-object v7, v6

    .line 85
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 86
    .line 87
    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 88
    .line 89
    invoke-static {v7, v8, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move-object v6, v4

    .line 100
    :goto_2
    move-object p2, v6

    .line 101
    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 102
    .line 103
    if-nez p2, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 112
    .line 113
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 117
    .line 118
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->b()J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    :try_start_1
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;

    .line 132
    .line 133
    invoke-direct {v7, v2, p3, p1, v4}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 134
    .line 135
    .line 136
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 137
    .line 138
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 139
    .line 140
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->o:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 141
    .line 142
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->q:I

    .line 143
    .line 144
    invoke-interface {p0, v5, v6, v7, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->g0(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-ne p0, v1, :cond_7

    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_7
    move-object p0, v2

    .line 152
    :goto_3
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 153
    .line 154
    if-eqz p0, :cond_9

    .line 155
    .line 156
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .line 160
    if-nez p0, :cond_8

    .line 161
    .line 162
    return-object p2

    .line 163
    :cond_8
    return-object p0

    .line 164
    :cond_9
    :goto_4
    return-object v4

    .line 165
    :catch_0
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 168
    .line 169
    if-nez p0, :cond_a

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_a
    move-object p2, p0

    .line 173
    :goto_5
    return-object p2
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLd;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;

    .line 11
    .line 12
    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->t:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->t:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->s:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->t:I

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    const/4 v9, 0x1

    .line 39
    const/4 v10, 0x0

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eq v5, v9, :cond_2

    .line 43
    .line 44
    if-ne v5, v8, :cond_1

    .line 45
    .line 46
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->r:F

    .line 47
    .line 48
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 49
    .line 50
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->p:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 51
    .line 52
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 53
    .line 54
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->n:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 55
    .line 56
    iget-object v13, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->m:Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 p4, v5

    .line 62
    .line 63
    move v5, v0

    .line 64
    move-object v0, v12

    .line 65
    move-object v12, v11

    .line 66
    move-object v11, v3

    .line 67
    move-object/from16 v3, p4

    .line 68
    .line 69
    move v15, v8

    .line 70
    move v2, v9

    .line 71
    move-object/from16 p4, v10

    .line 72
    .line 73
    move-wide v7, v6

    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v10

    .line 82
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->r:F

    .line 83
    .line 84
    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->p:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 85
    .line 86
    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 87
    .line 88
    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->n:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 89
    .line 90
    iget-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->m:Lkotlin/jvm/functions/Function2;

    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v17, v5

    .line 96
    .line 97
    move v5, v0

    .line 98
    move-object v0, v11

    .line 99
    move-object v11, v3

    .line 100
    move-object v3, v1

    .line 101
    move-object v1, v12

    .line 102
    move-object/from16 v12, v17

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    move-object/from16 p4, v10

    .line 119
    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 131
    .line 132
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 136
    .line 137
    new-instance v0, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 138
    .line 139
    invoke-direct {v0, v6, v7, v10}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 140
    .line 141
    .line 142
    move-object/from16 v1, p3

    .line 143
    .line 144
    move-object v11, v5

    .line 145
    move-object v5, v3

    .line 146
    move v3, v2

    .line 147
    move-object v2, v0

    .line 148
    move-object/from16 v0, p0

    .line 149
    .line 150
    :goto_1
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->m:Lkotlin/jvm/functions/Function2;

    .line 151
    .line 152
    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->n:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 153
    .line 154
    iput-object v11, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 155
    .line 156
    iput-object v2, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->p:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 157
    .line 158
    iput-object v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 159
    .line 160
    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->r:F

    .line 161
    .line 162
    iput v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->t:I

    .line 163
    .line 164
    invoke-static {v0, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    if-ne v12, v4, :cond_5

    .line 169
    .line 170
    goto/16 :goto_8

    .line 171
    .line 172
    :cond_5
    move/from16 v17, v3

    .line 173
    .line 174
    move-object v3, v2

    .line 175
    move-object v2, v12

    .line 176
    move-object v12, v11

    .line 177
    move-object v11, v5

    .line 178
    move/from16 v5, v17

    .line 179
    .line 180
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 181
    .line 182
    iget-object v13, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 185
    .line 186
    .line 187
    move-result v14

    .line 188
    move-object/from16 p4, v10

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    :goto_3
    if-ge v10, v14, :cond_7

    .line 192
    .line 193
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v16

    .line 197
    move-object/from16 v15, v16

    .line 198
    .line 199
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 200
    .line 201
    iget-wide v6, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 202
    .line 203
    iget-wide v8, v12, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 204
    .line 205
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_6

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 213
    .line 214
    const-wide/16 v6, 0x0

    .line 215
    .line 216
    const/4 v8, 0x2

    .line 217
    const/4 v9, 0x1

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    move-object/from16 v16, p4

    .line 220
    .line 221
    :goto_4
    move-object/from16 v6, v16

    .line 222
    .line 223
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 224
    .line 225
    if-nez v6, :cond_8

    .line 226
    .line 227
    goto/16 :goto_a

    .line 228
    .line 229
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    if-eqz v7, :cond_9

    .line 234
    .line 235
    goto/16 :goto_a

    .line 236
    .line 237
    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-eqz v7, :cond_d

    .line 242
    .line 243
    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    const/4 v7, 0x0

    .line 250
    :goto_5
    if-ge v7, v6, :cond_b

    .line 251
    .line 252
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v8

    .line 256
    move-object v9, v8

    .line 257
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 258
    .line 259
    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 260
    .line 261
    if-eqz v9, :cond_a

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_b
    move-object/from16 v8, p4

    .line 268
    .line 269
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 270
    .line 271
    if-nez v8, :cond_c

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_c
    iget-wide v6, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 275
    .line 276
    iput-wide v6, v12, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 277
    .line 278
    const/4 v2, 0x1

    .line 279
    const-wide/16 v7, 0x0

    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_d
    const/4 v2, 0x1

    .line 283
    invoke-static {v6, v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 284
    .line 285
    .line 286
    move-result-wide v7

    .line 287
    invoke-static {v3, v7, v8, v5}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(Landroidx/compose/foundation/gestures/TouchSlopDetector;JF)J

    .line 288
    .line 289
    .line 290
    move-result-wide v7

    .line 291
    const-wide v9, 0x7fffffff7fffffffL

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    and-long/2addr v9, v7

    .line 297
    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    cmp-long v9, v9, v13

    .line 303
    .line 304
    if-eqz v9, :cond_f

    .line 305
    .line 306
    new-instance v9, Landroidx/compose/ui/geometry/Offset;

    .line 307
    .line 308
    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v1, v6, v9}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_e

    .line 319
    .line 320
    return-object v6

    .line 321
    :cond_e
    const-wide/16 v7, 0x0

    .line 322
    .line 323
    iput-wide v7, v3, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 324
    .line 325
    :goto_7
    move-object/from16 v10, p4

    .line 326
    .line 327
    move v9, v2

    .line 328
    move-object v2, v3

    .line 329
    move v3, v5

    .line 330
    move-wide v6, v7

    .line 331
    move-object v5, v11

    .line 332
    move-object v11, v12

    .line 333
    const/4 v8, 0x2

    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :cond_f
    const-wide/16 v7, 0x0

    .line 337
    .line 338
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 339
    .line 340
    iput-object v1, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->m:Lkotlin/jvm/functions/Function2;

    .line 341
    .line 342
    iput-object v0, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->n:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 343
    .line 344
    iput-object v12, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 345
    .line 346
    iput-object v3, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->p:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 347
    .line 348
    iput-object v6, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->q:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 349
    .line 350
    iput v5, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->r:F

    .line 351
    .line 352
    const/4 v15, 0x2

    .line 353
    iput v15, v11, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->t:I

    .line 354
    .line 355
    invoke-interface {v0, v9, v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    if-ne v9, v4, :cond_10

    .line 360
    .line 361
    :goto_8
    return-object v4

    .line 362
    :cond_10
    move-object v13, v1

    .line 363
    move-object v1, v6

    .line 364
    :goto_9
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_11

    .line 369
    .line 370
    :goto_a
    return-object p4

    .line 371
    :cond_11
    move-object/from16 v10, p4

    .line 372
    .line 373
    move v9, v2

    .line 374
    move-object v2, v3

    .line 375
    move v3, v5

    .line 376
    move-wide v6, v7

    .line 377
    move-object v5, v11

    .line 378
    move-object v11, v12

    .line 379
    move-object v1, v13

    .line 380
    move v8, v15

    .line 381
    goto/16 :goto_1
.end method

.method public static final d(Landroidx/compose/ui/input/pointer/PointerInputScope;Lra;Lsa;Lsa;Ld;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v2, Lb0;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-direct {v2, v0, p1}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v5, Lc;

    .line 8
    .line 9
    const/16 p1, 0x11

    .line 10
    .line 11
    invoke-direct {v5, p1, p2}, Lc;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lj6;

    .line 15
    .line 16
    const/16 p1, 0x10

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lj6;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$13;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v4, p3

    .line 25
    move-object v3, p4

    .line 26
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$13;-><init>(Lj6;Lb0;Ld;Lsa;Lc;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0, p5}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    if-ne p0, p1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p0, p2

    .line 41
    :goto_0
    if-ne p0, p1, :cond_1

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    return-object p2
.end method

.method public static final e(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    .line 21
    .line 22
    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->n:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 39
    .line 40
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object p3, p0

    .line 44
    move-object p0, p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 57
    .line 58
    iput-object p3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->n:Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->p:I

    .line 61
    .line 62
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    if-ne p4, v1, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 70
    .line 71
    if-nez p4, :cond_4

    .line 72
    .line 73
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4
    invoke-static {p4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_5
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-wide p1, p4, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 89
    .line 90
    goto :goto_1
.end method

.method public static final f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    move-object v4, v3

    .line 16
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 17
    .line 18
    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 19
    .line 20
    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-boolean p1, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 37
    .line 38
    if-ne p1, p0, :cond_2

    .line 39
    .line 40
    move v1, p0

    .line 41
    :cond_2
    xor-int/2addr p0, v1

    .line 42
    return p0
.end method

.method public static final g(Landroidx/compose/ui/platform/ViewConfiguration;I)F
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    .line 9
    .line 10
    mul-float/2addr p0, p1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->f()F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final h(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lj6;Lb0;Ld;Lsa;Lc;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;

    .line 11
    .line 12
    iget v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->A:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    packed-switch v4, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v6

    .line 45
    :pswitch_0
    iget-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 48
    .line 49
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 52
    .line 53
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 56
    .line 57
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 58
    .line 59
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 64
    .line 65
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v14, v3

    .line 73
    move-object v3, v6

    .line 74
    goto/16 :goto_27

    .line 75
    .line 76
    :pswitch_1
    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 77
    .line 78
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 81
    .line 82
    iget-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 83
    .line 84
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 92
    .line 93
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    .line 96
    .line 97
    const-wide v18, 0x7fffffff7fffffffL

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 105
    .line 106
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 109
    .line 110
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 113
    .line 114
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 119
    .line 120
    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 121
    .line 122
    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v14, Landroidx/compose/foundation/gestures/Orientation;

    .line 125
    .line 126
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 129
    .line 130
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    move-object v1, v14

    .line 134
    move-object v14, v3

    .line 135
    move-object v3, v6

    .line 136
    move-object v6, v10

    .line 137
    move-object v10, v1

    .line 138
    move-object v1, v12

    .line 139
    move-object v12, v5

    .line 140
    move-object v5, v9

    .line 141
    move-object v9, v1

    .line 142
    move v1, v0

    .line 143
    move-object v0, v8

    .line 144
    move-object v8, v11

    .line 145
    move-object v11, v7

    .line 146
    move-object v7, v13

    .line 147
    goto/16 :goto_21

    .line 148
    .line 149
    :pswitch_2
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    const-wide v18, 0x7fffffff7fffffffL

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 160
    .line 161
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 162
    .line 163
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 164
    .line 165
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 168
    .line 169
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 172
    .line 173
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 176
    .line 177
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 180
    .line 181
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 184
    .line 185
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 188
    .line 189
    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 190
    .line 191
    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 192
    .line 193
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v13, Landroidx/compose/foundation/gestures/Orientation;

    .line 196
    .line 197
    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 200
    .line 201
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    move-object v15, v5

    .line 205
    move-object v5, v8

    .line 206
    move-object v8, v11

    .line 207
    move-object v11, v6

    .line 208
    move-object v6, v9

    .line 209
    move-object v9, v12

    .line 210
    move-object v12, v4

    .line 211
    move-object v4, v14

    .line 212
    move-object v14, v3

    .line 213
    move-object v3, v2

    .line 214
    move v2, v0

    .line 215
    move-object v0, v7

    .line 216
    move-object v7, v10

    .line 217
    move-object v10, v13

    .line 218
    goto/16 :goto_19

    .line 219
    .line 220
    :pswitch_3
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    const-wide v18, 0x7fffffff7fffffffL

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    iget-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 233
    .line 234
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 237
    .line 238
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 241
    .line 242
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 245
    .line 246
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 249
    .line 250
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 253
    .line 254
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 255
    .line 256
    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 257
    .line 258
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v10, Landroidx/compose/foundation/gestures/Orientation;

    .line 261
    .line 262
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 265
    .line 266
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    move-object v14, v3

    .line 270
    goto/16 :goto_13

    .line 271
    .line 272
    :pswitch_4
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    const-wide v18, 0x7fffffff7fffffffL

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 283
    .line 284
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 285
    .line 286
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 287
    .line 288
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 289
    .line 290
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 293
    .line 294
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 297
    .line 298
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 301
    .line 302
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 305
    .line 306
    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 309
    .line 310
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 313
    .line 314
    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 315
    .line 316
    check-cast v14, Lkotlin/jvm/functions/Function3;

    .line 317
    .line 318
    iget-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v15, Landroidx/compose/foundation/gestures/Orientation;

    .line 321
    .line 322
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 325
    .line 326
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    move-object v1, v13

    .line 330
    move-object v13, v6

    .line 331
    move-object v6, v1

    .line 332
    move-object v1, v9

    .line 333
    move-object v9, v7

    .line 334
    move-object v7, v12

    .line 335
    move-object v12, v1

    .line 336
    move-object v1, v10

    .line 337
    move-object v10, v8

    .line 338
    move-object v8, v11

    .line 339
    move-object v11, v5

    .line 340
    move-object v5, v14

    .line 341
    move-object v14, v3

    .line 342
    goto/16 :goto_d

    .line 343
    .line 344
    :pswitch_5
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    const-wide v18, 0x7fffffff7fffffffL

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 355
    .line 356
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 357
    .line 358
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 359
    .line 360
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 363
    .line 364
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 367
    .line 368
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 371
    .line 372
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 375
    .line 376
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 379
    .line 380
    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 383
    .line 384
    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 385
    .line 386
    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 387
    .line 388
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v13, Landroidx/compose/foundation/gestures/Orientation;

    .line 391
    .line 392
    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 395
    .line 396
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    move-object v15, v11

    .line 400
    move-object v11, v6

    .line 401
    move-object v6, v15

    .line 402
    move-object v15, v4

    .line 403
    move-object v4, v13

    .line 404
    move-object v13, v7

    .line 405
    move-object v7, v10

    .line 406
    move-object v10, v5

    .line 407
    move-object v5, v12

    .line 408
    move-object v12, v14

    .line 409
    const/4 v14, 0x2

    .line 410
    goto/16 :goto_6

    .line 411
    .line 412
    :pswitch_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    const-wide v18, 0x7fffffff7fffffffL

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    iget-boolean v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->y:Z

    .line 423
    .line 424
    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 427
    .line 428
    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 431
    .line 432
    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 435
    .line 436
    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 439
    .line 440
    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 441
    .line 442
    check-cast v8, Landroidx/compose/foundation/gestures/Orientation;

    .line 443
    .line 444
    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 447
    .line 448
    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 451
    .line 452
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    move-object/from16 v24, v8

    .line 456
    .line 457
    move-object v8, v4

    .line 458
    move-object/from16 v4, v24

    .line 459
    .line 460
    move-object/from16 v24, v7

    .line 461
    .line 462
    move-object v7, v5

    .line 463
    move-object/from16 v5, v24

    .line 464
    .line 465
    goto :goto_2

    .line 466
    :pswitch_7
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    const-wide v18, 0x7fffffff7fffffffL

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_1

    .line 489
    .line 490
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 491
    .line 492
    .line 493
    :cond_1
    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 494
    .line 495
    move-object/from16 v4, p1

    .line 496
    .line 497
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 498
    .line 499
    const/4 v5, 0x0

    .line 500
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 501
    .line 502
    move-object/from16 v5, p3

    .line 503
    .line 504
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 505
    .line 506
    move-object/from16 v6, p4

    .line 507
    .line 508
    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 509
    .line 510
    move-object/from16 v7, p5

    .line 511
    .line 512
    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 513
    .line 514
    move-object/from16 v8, p6

    .line 515
    .line 516
    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 517
    .line 518
    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->y:Z

    .line 519
    .line 520
    const/4 v9, 0x1

    .line 521
    iput v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 522
    .line 523
    const/4 v9, 0x2

    .line 524
    invoke-static {v0, v2, v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    if-ne v10, v3, :cond_2

    .line 529
    .line 530
    :goto_1
    move-object v14, v3

    .line 531
    goto/16 :goto_26

    .line 532
    .line 533
    :cond_2
    move-object v9, v10

    .line 534
    move-object v10, v0

    .line 535
    move v0, v1

    .line 536
    move-object v1, v9

    .line 537
    move-object v9, v4

    .line 538
    const/4 v4, 0x0

    .line 539
    :goto_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 540
    .line 541
    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    .line 542
    .line 543
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 544
    .line 545
    .line 546
    const-wide/16 v12, 0x0

    .line 547
    .line 548
    iput-wide v12, v11, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 549
    .line 550
    if-eqz v0, :cond_13

    .line 551
    .line 552
    :goto_3
    iget-wide v12, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 553
    .line 554
    iget v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 555
    .line 556
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    invoke-static {v9, v12, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 561
    .line 562
    .line 563
    move-result v9

    .line 564
    if-eqz v9, :cond_3

    .line 565
    .line 566
    move-object v14, v3

    .line 567
    :goto_4
    const/4 v0, 0x0

    .line 568
    goto/16 :goto_e

    .line 569
    .line 570
    :cond_3
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-static {v9, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->g(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    .line 579
    .line 580
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 581
    .line 582
    .line 583
    iput-wide v12, v9, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 584
    .line 585
    new-instance v12, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 586
    .line 587
    const-wide/16 v13, 0x0

    .line 588
    .line 589
    invoke-direct {v12, v13, v14, v4}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 590
    .line 591
    .line 592
    move-object v13, v12

    .line 593
    move-object v12, v11

    .line 594
    move-object v11, v10

    .line 595
    :goto_5
    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 596
    .line 597
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 598
    .line 599
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 600
    .line 601
    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 602
    .line 603
    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 604
    .line 605
    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 606
    .line 607
    iput-object v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 608
    .line 609
    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 610
    .line 611
    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 612
    .line 613
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 614
    .line 615
    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 616
    .line 617
    const/4 v14, 0x0

    .line 618
    iput-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 619
    .line 620
    iput v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 621
    .line 622
    const/4 v14, 0x2

    .line 623
    iput v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 624
    .line 625
    invoke-static {v10, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v15

    .line 629
    if-ne v15, v3, :cond_4

    .line 630
    .line 631
    goto :goto_1

    .line 632
    :cond_4
    move-object/from16 v24, v8

    .line 633
    .line 634
    move-object v8, v1

    .line 635
    move-object v1, v15

    .line 636
    move-object v15, v13

    .line 637
    move-object v13, v12

    .line 638
    move-object v12, v11

    .line 639
    move-object v11, v10

    .line 640
    move-object v10, v9

    .line 641
    move-object/from16 v9, v24

    .line 642
    .line 643
    :goto_6
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 644
    .line 645
    iget-object v14, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 646
    .line 647
    move-object/from16 v21, v3

    .line 648
    .line 649
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    move-object/from16 p0, v11

    .line 654
    .line 655
    const/4 v11, 0x0

    .line 656
    :goto_7
    if-ge v11, v3, :cond_6

    .line 657
    .line 658
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v22

    .line 662
    move/from16 p1, v3

    .line 663
    .line 664
    move-object/from16 v3, v22

    .line 665
    .line 666
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 667
    .line 668
    move-object/from16 p2, v8

    .line 669
    .line 670
    move-object/from16 p3, v9

    .line 671
    .line 672
    iget-wide v8, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 673
    .line 674
    move-object v3, v6

    .line 675
    move-object/from16 p4, v7

    .line 676
    .line 677
    iget-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 678
    .line 679
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 680
    .line 681
    .line 682
    move-result v6

    .line 683
    if-eqz v6, :cond_5

    .line 684
    .line 685
    goto :goto_8

    .line 686
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 687
    .line 688
    move-object/from16 v8, p2

    .line 689
    .line 690
    move-object/from16 v9, p3

    .line 691
    .line 692
    move-object/from16 v7, p4

    .line 693
    .line 694
    move-object v6, v3

    .line 695
    move/from16 v3, p1

    .line 696
    .line 697
    goto :goto_7

    .line 698
    :cond_6
    move-object v3, v6

    .line 699
    move-object/from16 p4, v7

    .line 700
    .line 701
    move-object/from16 p2, v8

    .line 702
    .line 703
    move-object/from16 p3, v9

    .line 704
    .line 705
    const/16 v22, 0x0

    .line 706
    .line 707
    :goto_8
    move-object/from16 v6, v22

    .line 708
    .line 709
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 710
    .line 711
    if-nez v6, :cond_7

    .line 712
    .line 713
    :goto_9
    move-object/from16 v1, p2

    .line 714
    .line 715
    move-object/from16 v8, p3

    .line 716
    .line 717
    move-object/from16 v7, p4

    .line 718
    .line 719
    move-object v6, v3

    .line 720
    move-object v10, v12

    .line 721
    move-object v11, v13

    .line 722
    move-object/from16 v14, v21

    .line 723
    .line 724
    goto/16 :goto_4

    .line 725
    .line 726
    :cond_7
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    if-eqz v7, :cond_8

    .line 731
    .line 732
    goto :goto_9

    .line 733
    :cond_8
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 734
    .line 735
    .line 736
    move-result v7

    .line 737
    if-eqz v7, :cond_c

    .line 738
    .line 739
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 740
    .line 741
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    const/4 v7, 0x0

    .line 746
    :goto_a
    if-ge v7, v6, :cond_a

    .line 747
    .line 748
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v8

    .line 752
    move-object v9, v8

    .line 753
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 754
    .line 755
    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 756
    .line 757
    if-eqz v9, :cond_9

    .line 758
    .line 759
    goto :goto_b

    .line 760
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 761
    .line 762
    goto :goto_a

    .line 763
    :cond_a
    const/4 v8, 0x0

    .line 764
    :goto_b
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 765
    .line 766
    if-nez v8, :cond_b

    .line 767
    .line 768
    goto :goto_9

    .line 769
    :cond_b
    iget-wide v6, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 770
    .line 771
    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 772
    .line 773
    goto :goto_c

    .line 774
    :cond_c
    const/4 v9, 0x1

    .line 775
    invoke-static {v6, v9}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 776
    .line 777
    .line 778
    move-result-wide v7

    .line 779
    invoke-static {v15, v7, v8, v0}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(Landroidx/compose/foundation/gestures/TouchSlopDetector;JF)J

    .line 780
    .line 781
    .line 782
    move-result-wide v7

    .line 783
    and-long v22, v7, v18

    .line 784
    .line 785
    cmp-long v1, v22, v16

    .line 786
    .line 787
    if-eqz v1, :cond_e

    .line 788
    .line 789
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 790
    .line 791
    .line 792
    iput-wide v7, v13, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 793
    .line 794
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    if-eqz v1, :cond_d

    .line 799
    .line 800
    move-object/from16 v1, p2

    .line 801
    .line 802
    move-object/from16 v8, p3

    .line 803
    .line 804
    move-object/from16 v7, p4

    .line 805
    .line 806
    move-object v0, v6

    .line 807
    move-object v10, v12

    .line 808
    move-object v11, v13

    .line 809
    move-object/from16 v14, v21

    .line 810
    .line 811
    move-object v6, v3

    .line 812
    goto/16 :goto_e

    .line 813
    .line 814
    :cond_d
    const-wide/16 v6, 0x0

    .line 815
    .line 816
    iput-wide v6, v15, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 817
    .line 818
    :goto_c
    move-object/from16 v1, p2

    .line 819
    .line 820
    move-object/from16 v8, p3

    .line 821
    .line 822
    move-object/from16 v7, p4

    .line 823
    .line 824
    move-object v6, v3

    .line 825
    move-object v9, v10

    .line 826
    move-object v11, v12

    .line 827
    move-object v12, v13

    .line 828
    move-object v13, v15

    .line 829
    move-object/from16 v3, v21

    .line 830
    .line 831
    move-object/from16 v10, p0

    .line 832
    .line 833
    goto/16 :goto_5

    .line 834
    .line 835
    :cond_e
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 836
    .line 837
    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 838
    .line 839
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 840
    .line 841
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 842
    .line 843
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 844
    .line 845
    move-object/from16 v7, p4

    .line 846
    .line 847
    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 848
    .line 849
    move-object/from16 v8, p3

    .line 850
    .line 851
    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 852
    .line 853
    move-object/from16 v9, p2

    .line 854
    .line 855
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 856
    .line 857
    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 858
    .line 859
    move-object/from16 v11, p0

    .line 860
    .line 861
    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 862
    .line 863
    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 864
    .line 865
    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 866
    .line 867
    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 868
    .line 869
    iput v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 870
    .line 871
    const/4 v14, 0x3

    .line 872
    iput v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 873
    .line 874
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    move-object/from16 v14, v21

    .line 879
    .line 880
    if-ne v1, v14, :cond_f

    .line 881
    .line 882
    goto/16 :goto_26

    .line 883
    .line 884
    :cond_f
    move-object v1, v9

    .line 885
    move-object v9, v10

    .line 886
    move-object v10, v11

    .line 887
    move-object v11, v12

    .line 888
    move-object v12, v13

    .line 889
    move-object v13, v15

    .line 890
    move-object v15, v4

    .line 891
    move-object v4, v6

    .line 892
    move-object v6, v3

    .line 893
    :goto_d
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    if-eqz v3, :cond_12

    .line 898
    .line 899
    move-object v10, v11

    .line 900
    move-object v11, v12

    .line 901
    move-object v4, v15

    .line 902
    goto/16 :goto_4

    .line 903
    .line 904
    :goto_e
    if-eqz v0, :cond_11

    .line 905
    .line 906
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    if-eqz v3, :cond_10

    .line 911
    .line 912
    goto :goto_f

    .line 913
    :cond_10
    move-object v3, v14

    .line 914
    goto/16 :goto_3

    .line 915
    .line 916
    :cond_11
    :goto_f
    move-object v9, v0

    .line 917
    goto :goto_10

    .line 918
    :cond_12
    move-object v3, v14

    .line 919
    move-object v4, v15

    .line 920
    goto/16 :goto_5

    .line 921
    .line 922
    :cond_13
    move-object v14, v3

    .line 923
    :goto_10
    if-nez v9, :cond_2a

    .line 924
    .line 925
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 930
    .line 931
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 932
    .line 933
    .line 934
    move-result v3

    .line 935
    const/4 v12, 0x0

    .line 936
    :goto_11
    if-ge v12, v3, :cond_2a

    .line 937
    .line 938
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v13

    .line 942
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 943
    .line 944
    iget-boolean v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 945
    .line 946
    if-eqz v13, :cond_29

    .line 947
    .line 948
    move-object v0, v8

    .line 949
    move-object v8, v6

    .line 950
    move-object v6, v0

    .line 951
    move-object v0, v11

    .line 952
    move-object v11, v10

    .line 953
    move-object v10, v4

    .line 954
    move-object v4, v9

    .line 955
    move-object v9, v5

    .line 956
    move-object v5, v1

    .line 957
    :goto_12
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 958
    .line 959
    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 960
    .line 961
    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 962
    .line 963
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 964
    .line 965
    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 966
    .line 967
    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 968
    .line 969
    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 970
    .line 971
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 972
    .line 973
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 974
    .line 975
    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 976
    .line 977
    const/4 v3, 0x0

    .line 978
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 979
    .line 980
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 981
    .line 982
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 983
    .line 984
    const/4 v3, 0x4

    .line 985
    iput v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 986
    .line 987
    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    if-ne v1, v14, :cond_14

    .line 992
    .line 993
    goto/16 :goto_26

    .line 994
    .line 995
    :cond_14
    :goto_13
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 996
    .line 997
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 998
    .line 999
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    const/4 v12, 0x0

    .line 1004
    :goto_14
    if-ge v12, v3, :cond_17

    .line 1005
    .line 1006
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v13

    .line 1010
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1011
    .line 1012
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 1013
    .line 1014
    .line 1015
    move-result v13

    .line 1016
    if-eqz v13, :cond_16

    .line 1017
    .line 1018
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1019
    .line 1020
    .line 1021
    move-result v3

    .line 1022
    const/4 v12, 0x0

    .line 1023
    :goto_15
    if-ge v12, v3, :cond_17

    .line 1024
    .line 1025
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v13

    .line 1029
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1030
    .line 1031
    iget-boolean v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 1032
    .line 1033
    if-eqz v13, :cond_15

    .line 1034
    .line 1035
    goto :goto_12

    .line 1036
    :cond_15
    add-int/lit8 v12, v12, 0x1

    .line 1037
    .line 1038
    goto :goto_15

    .line 1039
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 1040
    .line 1041
    goto :goto_14

    .line 1042
    :cond_17
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1043
    .line 1044
    .line 1045
    move-result v3

    .line 1046
    const/4 v12, 0x0

    .line 1047
    :goto_16
    if-ge v12, v3, :cond_28

    .line 1048
    .line 1049
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v13

    .line 1053
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1054
    .line 1055
    iget-boolean v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 1056
    .line 1057
    if-eqz v13, :cond_27

    .line 1058
    .line 1059
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1064
    .line 1065
    if-eqz v1, :cond_18

    .line 1066
    .line 1067
    iget-wide v12, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 1068
    .line 1069
    goto :goto_17

    .line 1070
    :cond_18
    const-wide/16 v12, 0x0

    .line 1071
    .line 1072
    :goto_17
    iget-wide v3, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 1073
    .line 1074
    invoke-static {v12, v13, v3, v4}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 1075
    .line 1076
    .line 1077
    move-result-wide v3

    .line 1078
    iget-wide v12, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1079
    .line 1080
    iget v1, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 1081
    .line 1082
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v15

    .line 1086
    invoke-static {v15, v12, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v15

    .line 1090
    if-eqz v15, :cond_19

    .line 1091
    .line 1092
    move-object v1, v8

    .line 1093
    move-object v8, v6

    .line 1094
    move-object v6, v1

    .line 1095
    move-object v1, v5

    .line 1096
    move-object v5, v9

    .line 1097
    move-object v4, v10

    .line 1098
    move-object v10, v11

    .line 1099
    const/4 v9, 0x0

    .line 1100
    goto/16 :goto_22

    .line 1101
    .line 1102
    :cond_19
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v15

    .line 1106
    invoke-static {v15, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->g(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 1107
    .line 1108
    .line 1109
    move-result v1

    .line 1110
    new-instance v15, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1111
    .line 1112
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 1113
    .line 1114
    .line 1115
    iput-wide v12, v15, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1116
    .line 1117
    new-instance v12, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 1118
    .line 1119
    invoke-direct {v12, v3, v4, v10}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 1120
    .line 1121
    .line 1122
    move-object v3, v11

    .line 1123
    :cond_1a
    :goto_18
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 1124
    .line 1125
    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 1126
    .line 1127
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 1128
    .line 1129
    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 1130
    .line 1131
    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 1132
    .line 1133
    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 1134
    .line 1135
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 1136
    .line 1137
    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 1138
    .line 1139
    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 1140
    .line 1141
    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1142
    .line 1143
    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 1144
    .line 1145
    const/4 v4, 0x0

    .line 1146
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1147
    .line 1148
    iput v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 1149
    .line 1150
    const/4 v4, 0x5

    .line 1151
    iput v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 1152
    .line 1153
    invoke-static {v11, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    if-ne v4, v14, :cond_1b

    .line 1158
    .line 1159
    goto/16 :goto_26

    .line 1160
    .line 1161
    :cond_1b
    move-object/from16 v24, v2

    .line 1162
    .line 1163
    move v2, v1

    .line 1164
    move-object v1, v4

    .line 1165
    move-object v4, v3

    .line 1166
    move-object/from16 v3, v24

    .line 1167
    .line 1168
    :goto_19
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1169
    .line 1170
    iget-object v13, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 1171
    .line 1172
    move-object/from16 v21, v14

    .line 1173
    .line 1174
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1175
    .line 1176
    .line 1177
    move-result v14

    .line 1178
    move-object/from16 v20, v11

    .line 1179
    .line 1180
    const/4 v11, 0x0

    .line 1181
    :goto_1a
    if-ge v11, v14, :cond_1d

    .line 1182
    .line 1183
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v22

    .line 1187
    move/from16 v23, v11

    .line 1188
    .line 1189
    move-object/from16 v11, v22

    .line 1190
    .line 1191
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1192
    .line 1193
    move-object/from16 p0, v13

    .line 1194
    .line 1195
    move/from16 p1, v14

    .line 1196
    .line 1197
    iget-wide v13, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1198
    .line 1199
    move-object v11, v5

    .line 1200
    move-object/from16 p2, v6

    .line 1201
    .line 1202
    iget-wide v5, v15, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1203
    .line 1204
    invoke-static {v13, v14, v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v5

    .line 1208
    if-eqz v5, :cond_1c

    .line 1209
    .line 1210
    move-object/from16 v5, v22

    .line 1211
    .line 1212
    goto :goto_1b

    .line 1213
    :cond_1c
    add-int/lit8 v5, v23, 0x1

    .line 1214
    .line 1215
    move-object v6, v11

    .line 1216
    move v11, v5

    .line 1217
    move-object v5, v6

    .line 1218
    move-object/from16 v13, p0

    .line 1219
    .line 1220
    move/from16 v14, p1

    .line 1221
    .line 1222
    move-object/from16 v6, p2

    .line 1223
    .line 1224
    goto :goto_1a

    .line 1225
    :cond_1d
    move-object v11, v5

    .line 1226
    move-object/from16 p2, v6

    .line 1227
    .line 1228
    const/4 v5, 0x0

    .line 1229
    :goto_1b
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1230
    .line 1231
    if-nez v5, :cond_1e

    .line 1232
    .line 1233
    :goto_1c
    move-object v1, v10

    .line 1234
    move-object v10, v4

    .line 1235
    move-object v4, v1

    .line 1236
    move-object v2, v3

    .line 1237
    move-object v6, v8

    .line 1238
    move-object v5, v9

    .line 1239
    move-object v1, v11

    .line 1240
    move-object/from16 v14, v21

    .line 1241
    .line 1242
    const/4 v9, 0x0

    .line 1243
    :goto_1d
    move-object/from16 v8, p2

    .line 1244
    .line 1245
    goto/16 :goto_22

    .line 1246
    .line 1247
    :cond_1e
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 1248
    .line 1249
    .line 1250
    move-result v6

    .line 1251
    if-eqz v6, :cond_1f

    .line 1252
    .line 1253
    goto :goto_1c

    .line 1254
    :cond_1f
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v6

    .line 1258
    if-eqz v6, :cond_23

    .line 1259
    .line 1260
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 1261
    .line 1262
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1263
    .line 1264
    .line 1265
    move-result v5

    .line 1266
    const/4 v6, 0x0

    .line 1267
    :goto_1e
    if-ge v6, v5, :cond_21

    .line 1268
    .line 1269
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v13

    .line 1273
    move-object v14, v13

    .line 1274
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1275
    .line 1276
    iget-boolean v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 1277
    .line 1278
    if-eqz v14, :cond_20

    .line 1279
    .line 1280
    move-object v5, v13

    .line 1281
    goto :goto_1f

    .line 1282
    :cond_20
    add-int/lit8 v6, v6, 0x1

    .line 1283
    .line 1284
    goto :goto_1e

    .line 1285
    :cond_21
    const/4 v5, 0x0

    .line 1286
    :goto_1f
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1287
    .line 1288
    if-nez v5, :cond_22

    .line 1289
    .line 1290
    goto :goto_1c

    .line 1291
    :cond_22
    iget-wide v5, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1292
    .line 1293
    iput-wide v5, v15, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1294
    .line 1295
    const-wide/16 v13, 0x0

    .line 1296
    .line 1297
    goto :goto_20

    .line 1298
    :cond_23
    const/4 v1, 0x1

    .line 1299
    invoke-static {v5, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1300
    .line 1301
    .line 1302
    move-result-wide v13

    .line 1303
    invoke-static {v12, v13, v14, v2}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(Landroidx/compose/foundation/gestures/TouchSlopDetector;JF)J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v13

    .line 1307
    and-long v13, v13, v18

    .line 1308
    .line 1309
    cmp-long v1, v13, v16

    .line 1310
    .line 1311
    if-eqz v1, :cond_25

    .line 1312
    .line 1313
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 1314
    .line 1315
    .line 1316
    const/4 v1, 0x0

    .line 1317
    invoke-static {v5, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1318
    .line 1319
    .line 1320
    move-result-wide v13

    .line 1321
    iput-wide v13, v0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1322
    .line 1323
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v1

    .line 1327
    if-eqz v1, :cond_24

    .line 1328
    .line 1329
    move-object v1, v10

    .line 1330
    move-object v10, v4

    .line 1331
    move-object v4, v1

    .line 1332
    move-object v1, v9

    .line 1333
    move-object v9, v5

    .line 1334
    move-object v5, v1

    .line 1335
    move-object v2, v3

    .line 1336
    move-object v6, v8

    .line 1337
    move-object v1, v11

    .line 1338
    move-object/from16 v14, v21

    .line 1339
    .line 1340
    goto :goto_1d

    .line 1341
    :cond_24
    const-wide/16 v13, 0x0

    .line 1342
    .line 1343
    iput-wide v13, v12, Landroidx/compose/foundation/gestures/TouchSlopDetector;->b:J

    .line 1344
    .line 1345
    :goto_20
    move-object/from16 v6, p2

    .line 1346
    .line 1347
    move v1, v2

    .line 1348
    move-object v2, v3

    .line 1349
    move-object v3, v4

    .line 1350
    move-object v5, v11

    .line 1351
    move-object/from16 v11, v20

    .line 1352
    .line 1353
    move-object/from16 v14, v21

    .line 1354
    .line 1355
    goto/16 :goto_18

    .line 1356
    .line 1357
    :cond_25
    const-wide/16 v13, 0x0

    .line 1358
    .line 1359
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1360
    .line 1361
    iput-object v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 1362
    .line 1363
    iput-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 1364
    .line 1365
    iput-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 1366
    .line 1367
    iput-object v8, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 1368
    .line 1369
    iput-object v7, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 1370
    .line 1371
    move-object/from16 v6, p2

    .line 1372
    .line 1373
    iput-object v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 1374
    .line 1375
    iput-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 1376
    .line 1377
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 1378
    .line 1379
    move-object/from16 v13, v20

    .line 1380
    .line 1381
    iput-object v13, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 1382
    .line 1383
    iput-object v15, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1384
    .line 1385
    iput-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 1386
    .line 1387
    iput-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1388
    .line 1389
    iput v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->z:F

    .line 1390
    .line 1391
    const/4 v14, 0x6

    .line 1392
    iput v14, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 1393
    .line 1394
    invoke-interface {v13, v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v1

    .line 1398
    move-object/from16 v14, v21

    .line 1399
    .line 1400
    if-ne v1, v14, :cond_26

    .line 1401
    .line 1402
    goto/16 :goto_26

    .line 1403
    .line 1404
    :cond_26
    move v1, v2

    .line 1405
    move-object v2, v3

    .line 1406
    move-object v3, v4

    .line 1407
    move-object v4, v5

    .line 1408
    move-object v5, v11

    .line 1409
    move-object v11, v13

    .line 1410
    :goto_21
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 1411
    .line 1412
    .line 1413
    move-result v4

    .line 1414
    if-eqz v4, :cond_1a

    .line 1415
    .line 1416
    move-object v1, v8

    .line 1417
    move-object v8, v6

    .line 1418
    move-object v6, v1

    .line 1419
    move-object v11, v0

    .line 1420
    move-object v1, v5

    .line 1421
    move-object v5, v9

    .line 1422
    move-object v4, v10

    .line 1423
    const/4 v9, 0x0

    .line 1424
    move-object v10, v3

    .line 1425
    goto/16 :goto_10

    .line 1426
    .line 1427
    :cond_27
    add-int/lit8 v12, v12, 0x1

    .line 1428
    .line 1429
    goto/16 :goto_16

    .line 1430
    .line 1431
    :cond_28
    move-object v1, v8

    .line 1432
    move-object v8, v6

    .line 1433
    move-object v6, v1

    .line 1434
    move-object v1, v5

    .line 1435
    move-object v5, v9

    .line 1436
    move-object v9, v4

    .line 1437
    move-object v4, v10

    .line 1438
    move-object v10, v11

    .line 1439
    :goto_22
    move-object v11, v0

    .line 1440
    goto/16 :goto_10

    .line 1441
    .line 1442
    :cond_29
    add-int/lit8 v12, v12, 0x1

    .line 1443
    .line 1444
    goto/16 :goto_11

    .line 1445
    .line 1446
    :cond_2a
    if-eqz v9, :cond_39

    .line 1447
    .line 1448
    iget-wide v3, v11, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1449
    .line 1450
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 1451
    .line 1452
    invoke-direct {v0, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1453
    .line 1454
    .line 1455
    invoke-interface {v5, v1, v9, v0}, Lkotlin/jvm/functions/Function3;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    iget-wide v0, v11, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1459
    .line 1460
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 1461
    .line 1462
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1463
    .line 1464
    .line 1465
    invoke-interface {v6, v9, v3}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .line 1467
    .line 1468
    iget-wide v0, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1469
    .line 1470
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->s()Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v3

    .line 1474
    invoke-static {v3, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v3

    .line 1478
    if-eqz v3, :cond_2b

    .line 1479
    .line 1480
    :goto_23
    const/4 v6, 0x0

    .line 1481
    goto/16 :goto_2f

    .line 1482
    .line 1483
    :cond_2b
    :goto_24
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1484
    .line 1485
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1486
    .line 1487
    .line 1488
    iput-wide v0, v3, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1489
    .line 1490
    move-object v0, v8

    .line 1491
    move-object v8, v7

    .line 1492
    move-object v7, v0

    .line 1493
    move-object v0, v3

    .line 1494
    move-object v9, v6

    .line 1495
    move-object v4, v10

    .line 1496
    move-object v5, v4

    .line 1497
    :goto_25
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Ljava/lang/Object;

    .line 1498
    .line 1499
    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Ljava/lang/Object;

    .line 1500
    .line 1501
    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:Lkotlin/Function;

    .line 1502
    .line 1503
    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    .line 1504
    .line 1505
    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:Ljava/lang/Object;

    .line 1506
    .line 1507
    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->r:Ljava/lang/Object;

    .line 1508
    .line 1509
    const/4 v3, 0x0

    .line 1510
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->s:Ljava/lang/Object;

    .line 1511
    .line 1512
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->t:Ljava/lang/Object;

    .line 1513
    .line 1514
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->u:Ljava/lang/Object;

    .line 1515
    .line 1516
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->v:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1517
    .line 1518
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->w:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    .line 1519
    .line 1520
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->x:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1521
    .line 1522
    const/4 v1, 0x7

    .line 1523
    iput v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->B:I

    .line 1524
    .line 1525
    invoke-static {v4, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v1

    .line 1529
    if-ne v1, v14, :cond_2c

    .line 1530
    .line 1531
    :goto_26
    return-object v14

    .line 1532
    :cond_2c
    :goto_27
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1533
    .line 1534
    iget-object v6, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 1535
    .line 1536
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 1537
    .line 1538
    .line 1539
    move-result v10

    .line 1540
    const/4 v11, 0x0

    .line 1541
    :goto_28
    if-ge v11, v10, :cond_2e

    .line 1542
    .line 1543
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v12

    .line 1547
    move-object v13, v12

    .line 1548
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1549
    .line 1550
    move-object/from16 p0, v4

    .line 1551
    .line 1552
    iget-wide v3, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1553
    .line 1554
    move-object/from16 p1, v5

    .line 1555
    .line 1556
    move-object v13, v6

    .line 1557
    iget-wide v5, v0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1558
    .line 1559
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 1560
    .line 1561
    .line 1562
    move-result v3

    .line 1563
    if-eqz v3, :cond_2d

    .line 1564
    .line 1565
    move-object v5, v12

    .line 1566
    goto :goto_29

    .line 1567
    :cond_2d
    add-int/lit8 v11, v11, 0x1

    .line 1568
    .line 1569
    move-object/from16 v4, p0

    .line 1570
    .line 1571
    move-object/from16 v5, p1

    .line 1572
    .line 1573
    move-object v6, v13

    .line 1574
    const/4 v3, 0x0

    .line 1575
    goto :goto_28

    .line 1576
    :cond_2e
    move-object/from16 p0, v4

    .line 1577
    .line 1578
    move-object/from16 p1, v5

    .line 1579
    .line 1580
    const/4 v5, 0x0

    .line 1581
    :goto_29
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1582
    .line 1583
    if-nez v5, :cond_2f

    .line 1584
    .line 1585
    const/4 v1, 0x1

    .line 1586
    const/4 v5, 0x0

    .line 1587
    goto :goto_2d

    .line 1588
    :cond_2f
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1589
    .line 1590
    .line 1591
    move-result v3

    .line 1592
    if-eqz v3, :cond_33

    .line 1593
    .line 1594
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 1595
    .line 1596
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1597
    .line 1598
    .line 1599
    move-result v3

    .line 1600
    const/4 v4, 0x0

    .line 1601
    :goto_2a
    if-ge v4, v3, :cond_31

    .line 1602
    .line 1603
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v6

    .line 1607
    move-object v10, v6

    .line 1608
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1609
    .line 1610
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 1611
    .line 1612
    if-eqz v10, :cond_30

    .line 1613
    .line 1614
    goto :goto_2b

    .line 1615
    :cond_30
    add-int/lit8 v4, v4, 0x1

    .line 1616
    .line 1617
    goto :goto_2a

    .line 1618
    :cond_31
    const/4 v6, 0x0

    .line 1619
    :goto_2b
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1620
    .line 1621
    if-nez v6, :cond_32

    .line 1622
    .line 1623
    const/4 v1, 0x1

    .line 1624
    goto :goto_2d

    .line 1625
    :cond_32
    iget-wide v3, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1626
    .line 1627
    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 1628
    .line 1629
    const/4 v1, 0x1

    .line 1630
    goto :goto_2c

    .line 1631
    :cond_33
    const/4 v1, 0x1

    .line 1632
    invoke-static {v5, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1633
    .line 1634
    .line 1635
    move-result-wide v3

    .line 1636
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 1637
    .line 1638
    .line 1639
    move-result v3

    .line 1640
    const/4 v4, 0x0

    .line 1641
    cmpg-float v3, v3, v4

    .line 1642
    .line 1643
    if-nez v3, :cond_34

    .line 1644
    .line 1645
    :goto_2c
    move-object/from16 v4, p0

    .line 1646
    .line 1647
    move-object/from16 v5, p1

    .line 1648
    .line 1649
    goto/16 :goto_25

    .line 1650
    .line 1651
    :cond_34
    :goto_2d
    if-nez v5, :cond_35

    .line 1652
    .line 1653
    :goto_2e
    move-object v6, v8

    .line 1654
    move-object v8, v7

    .line 1655
    move-object v7, v6

    .line 1656
    goto/16 :goto_23

    .line 1657
    .line 1658
    :cond_35
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 1659
    .line 1660
    .line 1661
    move-result v0

    .line 1662
    if-eqz v0, :cond_36

    .line 1663
    .line 1664
    goto :goto_2e

    .line 1665
    :cond_36
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v0

    .line 1669
    if-eqz v0, :cond_38

    .line 1670
    .line 1671
    move-object v6, v8

    .line 1672
    move-object v8, v7

    .line 1673
    move-object v7, v6

    .line 1674
    move-object v6, v5

    .line 1675
    :goto_2f
    if-nez v6, :cond_37

    .line 1676
    .line 1677
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 1678
    .line 1679
    .line 1680
    goto :goto_30

    .line 1681
    :cond_37
    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    .line 1683
    .line 1684
    goto :goto_30

    .line 1685
    :cond_38
    const/4 v0, 0x0

    .line 1686
    invoke-static {v5, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1687
    .line 1688
    .line 1689
    move-result-wide v3

    .line 1690
    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    .line 1691
    .line 1692
    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1693
    .line 1694
    .line 1695
    invoke-interface {v9, v5, v6}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 1699
    .line 1700
    .line 1701
    iget-wide v3, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 1702
    .line 1703
    move-object v0, v8

    .line 1704
    move-object v8, v7

    .line 1705
    move-object v7, v0

    .line 1706
    move-object/from16 v10, p1

    .line 1707
    .line 1708
    move-wide v0, v3

    .line 1709
    move-object v6, v9

    .line 1710
    goto/16 :goto_24

    .line 1711
    .line 1712
    :cond_39
    :goto_30
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1713
    .line 1714
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
