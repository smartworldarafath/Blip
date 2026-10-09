.class final Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;
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
    c = "androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1"
    f = "BringIntoViewResponder.kt"
    l = {
        0xb7
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

.field public final synthetic p:Landroidx/compose/ui/node/NodeCoordinator;

.field public final synthetic q:Lp0;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lp0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->o:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->q:Lp0;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->q:Lp0;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->o:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lp0;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->n:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->o:Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 27
    .line 28
    iget-object v4, p1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->x:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 29
    .line 30
    new-instance v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 31
    .line 32
    iget-object v5, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->p:Landroidx/compose/ui/node/NodeCoordinator;

    .line 33
    .line 34
    iget-object v6, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->q:Lp0;

    .line 35
    .line 36
    invoke-direct {v1, p1, v5, v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/node/NodeCoordinator;Lp0;)V

    .line 37
    .line 38
    .line 39
    iput v3, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1;->n:I

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->a()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v5, p1

    .line 49
    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    .line 50
    .line 51
    if-eqz v5, :cond_8

    .line 52
    .line 53
    const-wide/16 v8, 0x0

    .line 54
    .line 55
    const/4 v10, 0x3

    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/gestures/ContentInViewNode;->a1(Landroidx/compose/foundation/gestures/ContentInViewNode;Landroidx/compose/ui/geometry/Rect;JJI)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_8

    .line 63
    .line 64
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 65
    .line 66
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, v3, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 74
    .line 75
    .line 76
    new-instance p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 77
    .line 78
    invoke-direct {p0, v1, p1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, v4, Landroidx/compose/foundation/gestures/ContentInViewNode;->C:Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;

    .line 82
    .line 83
    iget-object v6, v5, Landroidx/compose/foundation/gestures/BringIntoViewRequestPriorityQueue;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->a()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    .line 90
    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_2
    new-instance v7, Lb;

    .line 98
    .line 99
    const/16 v8, 0x9

    .line 100
    .line 101
    invoke-direct {v7, v8, v5, p0}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->x(Lkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    iget v5, v6, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-static {v7, v5}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    iget v8, v5, Lkotlin/ranges/IntProgression;->j:I

    .line 115
    .line 116
    iget v5, v5, Lkotlin/ranges/IntProgression;->k:I

    .line 117
    .line 118
    if-gt v8, v5, :cond_6

    .line 119
    .line 120
    :goto_0
    iget-object v9, v6, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 121
    .line 122
    aget-object v9, v9, v5

    .line 123
    .line 124
    check-cast v9, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 125
    .line 126
    iget-object v9, v9, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->a:Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    check-cast v9, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;

    .line 129
    .line 130
    invoke-virtual {v9}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringIntoView$2$1$1;->a()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    check-cast v9, Landroidx/compose/ui/geometry/Rect;

    .line 135
    .line 136
    if-nez v9, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {v1, v9}, Landroidx/compose/ui/geometry/Rect;->e(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v10, v1}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    if-eqz v11, :cond_4

    .line 148
    .line 149
    add-int/2addr v5, v3

    .line 150
    invoke-virtual {v6, v5, p0}, Landroidx/compose/runtime/collection/MutableVector;->a(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {v10, v9}, Landroidx/compose/ui/geometry/Rect;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-nez v9, :cond_5

    .line 159
    .line 160
    new-instance v9, Ljava/util/concurrent/CancellationException;

    .line 161
    .line 162
    const-string v10, "bringIntoView call interrupted by a newer, non-overlapping call"

    .line 163
    .line 164
    invoke-direct {v9, v10}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v10, v6, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 168
    .line 169
    sub-int/2addr v10, v3

    .line 170
    if-gt v10, v5, :cond_5

    .line 171
    .line 172
    :goto_1
    iget-object v11, v6, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 173
    .line 174
    aget-object v11, v11, v5

    .line 175
    .line 176
    check-cast v11, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 177
    .line 178
    iget-object v11, v11, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 179
    .line 180
    invoke-virtual {v11, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->p(Ljava/lang/Throwable;)Z

    .line 181
    .line 182
    .line 183
    if-eq v10, v5, :cond_5

    .line 184
    .line 185
    add-int/lit8 v10, v10, 0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_5
    :goto_2
    if-eq v5, v8, :cond_6

    .line 189
    .line 190
    add-int/lit8 v5, v5, -0x1

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_6
    invoke-virtual {v6, v7, p0}, Landroidx/compose/runtime/collection/MutableVector;->a(ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_3
    iget-boolean p0, v4, Landroidx/compose/foundation/gestures/ContentInViewNode;->F:Z

    .line 197
    .line 198
    if-nez p0, :cond_7

    .line 199
    .line 200
    const-wide/16 v5, 0x0

    .line 201
    .line 202
    invoke-virtual {v4, v5, v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->b1(J)V

    .line 203
    .line 204
    .line 205
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 210
    .line 211
    if-ne p0, p1, :cond_8

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_8
    move-object p0, v2

    .line 215
    :goto_5
    if-ne p0, v0, :cond_9

    .line 216
    .line 217
    return-object v0

    .line 218
    :cond_9
    return-object v2
.end method
