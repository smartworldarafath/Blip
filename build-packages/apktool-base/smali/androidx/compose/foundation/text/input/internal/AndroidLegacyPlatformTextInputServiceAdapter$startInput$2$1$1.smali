.class final Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;
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
    c = "androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1"
    f = "LegacyPlatformTextInputServiceAdapter.android.kt"
    l = {
        0x8c,
        0x8d
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

.field public final synthetic p:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->o:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->p:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->o:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->p:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;-><init>(Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eq v1, v3, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p1}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lf7;->h()V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lla;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-direct {p1, v1}, Lla;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput v3, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->n:I

    .line 41
    .line 42
    iget-object v1, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v3, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;

    .line 52
    .line 53
    invoke-direct {v3, p1}, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, p0, v3}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v0, :cond_3

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->o:Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->j()Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    new-instance v1, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->p:Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;

    .line 74
    .line 75
    invoke-direct {v1, v3}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1$2;-><init>(Landroidx/compose/foundation/text/input/internal/InputMethodManagerImpl;)V

    .line 76
    .line 77
    .line 78
    iput v2, p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$1;->n:I

    .line 79
    .line 80
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 81
    .line 82
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method
