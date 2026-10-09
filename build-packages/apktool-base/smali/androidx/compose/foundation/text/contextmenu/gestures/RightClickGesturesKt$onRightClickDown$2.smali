.class final Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;
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
    c = "androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$onRightClickDown$2"
    f = "RightClickGestures.kt"
    l = {
        0x20,
        0x23
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->n:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->n:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {v0, p2, p0}, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->m:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->l:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v4, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->m:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->m:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v1, p1

    .line 38
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->m:Ljava/lang/Object;

    .line 41
    .line 42
    iput v4, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->l:I

    .line 43
    .line 44
    invoke-static {v1, p0}, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 54
    .line 55
    .line 56
    iget-wide v4, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 57
    .line 58
    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    .line 59
    .line 60
    invoke-direct {p1, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->n:Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->m:Ljava/lang/Object;

    .line 69
    .line 70
    iput v2, p0, Landroidx/compose/foundation/text/contextmenu/gestures/RightClickGesturesKt$onRightClickDown$2;->l:I

    .line 71
    .line 72
    sget-object p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a:Lkotlin/jvm/functions/Function3;

    .line 73
    .line 74
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 75
    .line 76
    invoke-static {v1, p1, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v0, :cond_4

    .line 81
    .line 82
    :goto_1
    return-object v0

    .line 83
    :cond_4
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 88
    .line 89
    .line 90
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method
