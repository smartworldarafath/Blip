.class final Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;
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
    c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2"
    f = "LongPressTextDragObserver.kt"
    l = {
        0x4d,
        0x51
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public l:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Landroidx/compose/foundation/text/TextDragObserver;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->o:Landroidx/compose/foundation/text/TextDragObserver;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->o:Landroidx/compose/foundation/text/TextDragObserver;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->n:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->m:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->o:Landroidx/compose/foundation/text/TextDragObserver;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v4, :cond_1

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->l:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 16
    .line 17
    iget-object v4, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->n:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->n:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->n:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 47
    .line 48
    iput-object v1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->n:Ljava/lang/Object;

    .line 49
    .line 50
    iput v4, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->m:I

    .line 51
    .line 52
    invoke-static {v1, p0, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 60
    .line 61
    iget-wide v4, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 62
    .line 63
    invoke-interface {v2}, Landroidx/compose/foundation/text/TextDragObserver;->d()V

    .line 64
    .line 65
    .line 66
    move-object v4, v1

    .line 67
    move-object v1, p1

    .line 68
    :goto_1
    iput-object v4, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->n:Ljava/lang/Object;

    .line 69
    .line 70
    iput-object v1, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->l:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 71
    .line 72
    iput v3, p0, Landroidx/compose/foundation/text/LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;->m:I

    .line 73
    .line 74
    invoke-static {v4, p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_4

    .line 79
    .line 80
    :goto_2
    return-object v0

    .line 81
    :cond_4
    :goto_3
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 82
    .line 83
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/4 v6, 0x0

    .line 90
    :goto_4
    if-ge v6, v5, :cond_6

    .line 91
    .line 92
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 97
    .line 98
    iget-wide v8, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 99
    .line 100
    iget-wide v10, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    .line 101
    .line 102
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_5

    .line 107
    .line 108
    iget-boolean v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 109
    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    invoke-interface {v2}, Landroidx/compose/foundation/text/TextDragObserver;->c()V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method
