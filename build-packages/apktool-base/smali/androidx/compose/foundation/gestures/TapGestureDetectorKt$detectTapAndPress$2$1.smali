.class final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;
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
    c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapAndPress$2$1"
    f = "TapGestureDetector.kt"
    l = {
        0x115,
        0x11b
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public l:Ljava/lang/Object;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic p:Lkotlin/jvm/functions/Function3;

.field public final synthetic q:Li2;

.field public final synthetic r:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;Li2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->o:Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->p:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->q:Li2;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->r:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->q:Li2;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->r:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->o:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->p:Lkotlin/jvm/functions/Function3;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;Li2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->n:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->m:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->o:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->r:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v4, :cond_1

    .line 15
    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->n:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v6

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->l:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->n:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->n:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 50
    .line 51
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 52
    .line 53
    new-instance v7, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$resetJob$1;

    .line 54
    .line 55
    invoke-direct {v7, v5, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$resetJob$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v6, v1, v7, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->n:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->l:Ljava/lang/Object;

    .line 65
    .line 66
    iput v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->m:I

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    invoke-static {p1, p0, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-ne v4, v0, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object v9, v4

    .line 77
    move-object v4, p1

    .line 78
    move-object p1, v9

    .line 79
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 82
    .line 83
    .line 84
    sget-object v7, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a:Lkotlin/jvm/functions/Function3;

    .line 85
    .line 86
    iget-object v8, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->p:Lkotlin/jvm/functions/Function3;

    .line 87
    .line 88
    if-eq v8, v7, :cond_4

    .line 89
    .line 90
    new-instance v7, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;

    .line 91
    .line 92
    invoke-direct {v7, v8, v5, p1, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1, v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 96
    .line 97
    .line 98
    :cond_4
    iput-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->n:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->l:Ljava/lang/Object;

    .line 101
    .line 102
    iput v3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->m:I

    .line 103
    .line 104
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 105
    .line 106
    invoke-static {v4, p1, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v0, :cond_5

    .line 111
    .line 112
    :goto_1
    return-object v0

    .line 113
    :cond_5
    move-object v0, v1

    .line 114
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 115
    .line 116
    if-nez p1, :cond_6

    .line 117
    .line 118
    new-instance p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$2;

    .line 119
    .line 120
    invoke-direct {p0, v5, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$2;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v0, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 128
    .line 129
    .line 130
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$3;

    .line 131
    .line 132
    invoke-direct {v1, v5, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 136
    .line 137
    .line 138
    iget-wide v0, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 139
    .line 140
    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    .line 141
    .line 142
    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2$1;->q:Li2;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Li2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    return-object p0
.end method
