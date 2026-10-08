.class final Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;
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
    c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitSelectionGestures$2"
    f = "SelectionGestures.kt"
    l = {
        0x74,
        0x7c,
        0x7f,
        0x81
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Landroidx/compose/foundation/text/selection/ClicksCounter;

.field public final synthetic o:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

.field public final synthetic p:Landroidx/compose/foundation/text/TextDragObserver;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->n:Landroidx/compose/foundation/text/selection/ClicksCounter;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->o:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->p:Landroidx/compose/foundation/text/TextDragObserver;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->o:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->p:Landroidx/compose/foundation/text/TextDragObserver;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->n:Landroidx/compose/foundation/text/selection/ClicksCounter;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;-><init>(Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

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
    iget v2, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->l:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    if-eq v2, v7, :cond_2

    .line 15
    .line 16
    if-eq v2, v5, :cond_1

    .line 17
    .line 18
    if-eq v2, v4, :cond_1

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v6

    .line 29
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object/from16 v8, p1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    iput-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

    .line 52
    .line 53
    iput v7, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->l:I

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-ne v8, v1, :cond_4

    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_4
    :goto_1
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 64
    .line 65
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->n:Landroidx/compose/foundation/text/selection/ClicksCounter;

    .line 66
    .line 67
    iget-object v10, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->a:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 68
    .line 69
    iget-object v11, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->c:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 70
    .line 71
    iget-object v12, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    if-eqz v11, :cond_5

    .line 81
    .line 82
    iget-wide v14, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 83
    .line 84
    move-wide/from16 v16, v14

    .line 85
    .line 86
    iget-wide v13, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    .line 87
    .line 88
    sub-long v14, v16, v13

    .line 89
    .line 90
    invoke-interface {v10}, Landroidx/compose/ui/platform/ViewConfiguration;->a()J

    .line 91
    .line 92
    .line 93
    move-result-wide v16

    .line 94
    cmp-long v13, v14, v16

    .line 95
    .line 96
    if-gez v13, :cond_5

    .line 97
    .line 98
    iget v13, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    .line 99
    .line 100
    invoke-static {v10, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->g(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    iget-wide v13, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 105
    .line 106
    iget-wide v3, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 107
    .line 108
    invoke-static {v13, v14, v3, v4}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    cmpg-float v3, v3, v10

    .line 117
    .line 118
    if-gez v3, :cond_5

    .line 119
    .line 120
    iget v3, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->b:I

    .line 121
    .line 122
    add-int/2addr v3, v7

    .line 123
    iput v3, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->b:I

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iput v7, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->b:I

    .line 127
    .line 128
    :goto_2
    iput-object v12, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->c:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 129
    .line 130
    invoke-static {v8}, Landroidx/compose/foundation/text/selection/SelectionGestures_androidKt;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_8

    .line 135
    .line 136
    iget v4, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->d:I

    .line 137
    .line 138
    and-int/lit8 v4, v4, 0x21

    .line 139
    .line 140
    if-eqz v4, :cond_8

    .line 141
    .line 142
    iget-object v4, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    const/4 v13, 0x0

    .line 149
    :goto_3
    if-ge v13, v10, :cond_7

    .line 150
    .line 151
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 156
    .line 157
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_6

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_7
    iput-object v6, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

    .line 168
    .line 169
    iput v5, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->l:I

    .line 170
    .line 171
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->o:Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 172
    .line 173
    invoke-static {v2, v3, v9, v8, v0}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->d(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/selection/ClicksCounter;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-ne v0, v1, :cond_a

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_8
    :goto_4
    if-nez v3, :cond_a

    .line 181
    .line 182
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->p:Landroidx/compose/foundation/text/TextDragObserver;

    .line 183
    .line 184
    if-eqz v3, :cond_a

    .line 185
    .line 186
    iget v4, v9, Landroidx/compose/foundation/text/selection/ClicksCounter;->b:I

    .line 187
    .line 188
    if-ne v4, v7, :cond_9

    .line 189
    .line 190
    iput-object v6, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

    .line 191
    .line 192
    const/4 v15, 0x3

    .line 193
    iput v15, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->l:I

    .line 194
    .line 195
    invoke-static {v2, v3, v8, v0}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->e(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-ne v0, v1, :cond_a

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_9
    iput-object v6, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->m:Ljava/lang/Object;

    .line 203
    .line 204
    const/4 v11, 0x4

    .line 205
    iput v11, v0, Landroidx/compose/foundation/text/selection/SelectionGesturesKt$awaitSelectionGestures$2;->l:I

    .line 206
    .line 207
    invoke-static {v2, v3, v8, v4, v0}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;ILkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-ne v0, v1, :cond_a

    .line 212
    .line 213
    :goto_5
    return-object v1

    .line 214
    :cond_a
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object v0
.end method
