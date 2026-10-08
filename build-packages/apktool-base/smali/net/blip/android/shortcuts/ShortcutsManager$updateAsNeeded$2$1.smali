.class final Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;
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
    c = "net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$1"
    f = "ShortcutsManager.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lnet/blip/android/shortcuts/ShortcutsManager;


# direct methods
.method public constructor <init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->o:Lnet/blip/android/shortcuts/ShortcutsManager;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->o:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->o:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 25
    .line 26
    iget-object p1, v5, Lnet/blip/android/shortcuts/ShortcutsManager;->b:Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__LimitKt$take$$inlined$unsafeFlow$1;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$take$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 37
    .line 38
    invoke-direct {v3, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->t(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;)Lkotlinx/coroutines/flow/internal/FlowCoroutineKt$scopedFlow$$inlined$unsafeFlow$1;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v3, 0x2

    .line 46
    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aput-object v1, v3, v4

    .line 50
    .line 51
    aput-object p1, v3, v2

    .line 52
    .line 53
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->s([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v3, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1$1;

    .line 58
    .line 59
    const-string v8, "reconcileShortcuts(Lnet/blip/libblip/frontend/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v4, 0x2

    .line 63
    const-class v6, Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 64
    .line 65
    const-string v7, "reconcileShortcuts"

    .line 66
    .line 67
    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    iput v2, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$1;->n:I

    .line 71
    .line 72
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v0, :cond_2

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p0
.end method
