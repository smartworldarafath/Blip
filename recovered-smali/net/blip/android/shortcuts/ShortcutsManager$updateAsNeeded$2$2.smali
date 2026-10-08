.class final Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;
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
    c = "net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$2"
    f = "ShortcutsManager.kt"
    l = {
        0x38
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
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->o:Lnet/blip/android/shortcuts/ShortcutsManager;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->o:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->n:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v3, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->n:I

    .line 25
    .line 26
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$updateAsNeeded$2$2;->o:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 32
    .line 33
    iget-object v4, v1, Lnet/blip/android/shortcuts/ShortcutsManager;->b:Lkotlinx/coroutines/flow/StateFlow;

    .line 34
    .line 35
    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lnet/blip/libblip/frontend/State;

    .line 40
    .line 41
    iget-object v5, v5, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    iget-boolean v5, v5, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 47
    .line 48
    if-ne v5, v3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v3, v6

    .line 52
    :goto_0
    iput-boolean v3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 53
    .line 54
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lnet/blip/libblip/frontend/State;

    .line 66
    .line 67
    invoke-static {v3}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v3, v3, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 72
    .line 73
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget-object v6, v3, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    new-instance v2, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;

    .line 86
    .line 87
    iget-object v3, v3, Lnet/blip/libblip/frontend/PeerInteraction;->m:Ljava/time/Instant;

    .line 88
    .line 89
    invoke-direct {v2, v6, v3}, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;-><init>(Lnet/blip/libblip/PeerId;Ljava/time/Instant;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 93
    .line 94
    new-instance v2, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1;

    .line 95
    .line 96
    invoke-direct {v2, v4}, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;

    .line 100
    .line 101
    invoke-direct {v3, p1, v5, v1}, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lnet/blip/android/shortcuts/ShortcutsManager;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3, p0}, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-ne p0, v0, :cond_4

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p0
.end method
