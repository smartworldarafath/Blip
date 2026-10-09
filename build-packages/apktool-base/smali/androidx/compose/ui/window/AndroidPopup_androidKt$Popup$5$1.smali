.class final Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;
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
    c = "androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1"
    f = "AndroidPopup.android.kt"
    l = {
        0x1f0
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/ui/window/PopupLayout;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->p:Landroidx/compose/ui/window/PopupLayout;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->p:Landroidx/compose/ui/window/PopupLayout;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 31
    .line 32
    move-object v1, p1

    .line 33
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_7

    .line 38
    .line 39
    new-instance p1, Lla;

    .line 40
    .line 41
    const/4 v4, 0x5

    .line 42
    invoke-direct {p1, v4}, Lla;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->o:Ljava/lang/Object;

    .line 46
    .line 47
    iput v3, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->n:I

    .line 48
    .line 49
    iget-object v4, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-object v5, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;->j:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    .line 55
    .line 56
    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-nez v5, :cond_6

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v4, p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_3

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;->p:Landroidx/compose/ui/window/PopupLayout;

    .line 77
    .line 78
    iget-object v4, p1, Landroidx/compose/ui/window/PopupLayout;->M:[I

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v5, 0x0

    .line 88
    aget v6, v4, v5

    .line 89
    .line 90
    aget v7, v4, v3

    .line 91
    .line 92
    iget-object v8, p1, Landroidx/compose/ui/window/PopupLayout;->w:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v8, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 95
    .line 96
    .line 97
    aget v5, v4, v5

    .line 98
    .line 99
    if-ne v6, v5, :cond_5

    .line 100
    .line 101
    aget v4, v4, v3

    .line 102
    .line 103
    if-eq v7, v4, :cond_2

    .line 104
    .line 105
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/window/PopupLayout;->p()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    invoke-static {}, Lio/sentry/d;->i()V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0
.end method
