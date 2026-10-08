.class final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;
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
    c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$waitForLongPress$2"
    f = "TapGestureDetector.kt"
    l = {
        0x19c,
        0x1b3
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Landroidx/compose/ui/input/pointer/PointerEventPass;

.field public final synthetic o:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->m:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->l:I

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;->a:Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    iget-object v5, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-eq v2, v7, :cond_1

    .line 17
    .line 18
    if-ne v2, v4, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->m:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object/from16 v8, p1

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return-object v0

    .line 38
    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->m:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object/from16 v8, p1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->m:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 54
    .line 55
    :cond_3
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->m:Ljava/lang/Object;

    .line 56
    .line 57
    iput v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->l:I

    .line 58
    .line 59
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 60
    .line 61
    invoke-interface {v2, v8, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    if-ne v8, v1, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    :goto_0
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 69
    .line 70
    iget-object v9, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    move v11, v6

    .line 77
    :goto_1
    if-ge v11, v10, :cond_c

    .line 78
    .line 79
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 84
    .line 85
    invoke-static {v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-nez v12, :cond_b

    .line 90
    .line 91
    iget v8, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->c:I

    .line 92
    .line 93
    if-ne v8, v4, :cond_5

    .line 94
    .line 95
    sget-object v0, Landroidx/compose/foundation/gestures/LongPressResult$Success;->a:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    .line 96
    .line 97
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_5
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    move v10, v6

    .line 105
    :goto_2
    if-ge v10, v8, :cond_8

    .line 106
    .line 107
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 112
    .line 113
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-nez v12, :cond_7

    .line 118
    .line 119
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->f()J

    .line 120
    .line 121
    .line 122
    move-result-wide v12

    .line 123
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->p0()J

    .line 124
    .line 125
    .line 126
    move-result-wide v14

    .line 127
    invoke-static {v11, v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-eqz v11, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_7
    :goto_3
    iput-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_8
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 141
    .line 142
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->m:Ljava/lang/Object;

    .line 143
    .line 144
    iput v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;->l:I

    .line 145
    .line 146
    invoke-interface {v2, v8, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-ne v8, v1, :cond_9

    .line 151
    .line 152
    :goto_4
    return-object v1

    .line 153
    :cond_9
    :goto_5
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 154
    .line 155
    iget-object v8, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    move v10, v6

    .line 162
    :goto_6
    if-ge v10, v9, :cond_3

    .line 163
    .line 164
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 169
    .line 170
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_a

    .line 175
    .line 176
    iput-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_c
    new-instance v0, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 186
    .line 187
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 192
    .line 193
    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/LongPressResult$Released;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 194
    .line 195
    .line 196
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 197
    .line 198
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object v0
.end method
