.class public final Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Lnet/blip/libblip/frontend/State;

    .line 51
    .line 52
    iget-object p2, p1, Lnet/blip/libblip/frontend/State;->t:Lnet/blip/libblip/frontend/Messaging;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    iget-boolean p2, p2, Lnet/blip/libblip/frontend/Messaging;->o:Z

    .line 58
    .line 59
    if-ne p2, v4, :cond_3

    .line 60
    .line 61
    move v2, v4

    .line 62
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1}, Lnet/blip/libblip/State_DerivedKt;->d(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Users;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p1, p1, Lnet/blip/libblip/frontend/Users;->o:Ljava/util/List;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lnet/blip/libblip/frontend/PeerInteraction;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object v2, p1, Lnet/blip/libblip/frontend/PeerInteraction;->n:Lnet/blip/libblip/PeerId;

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    new-instance v3, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;

    .line 85
    .line 86
    iget-object p1, p1, Lnet/blip/libblip/frontend/PeerInteraction;->m:Ljava/time/Instant;

    .line 87
    .line 88
    invoke-direct {v3, v2, p1}, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;-><init>(Lnet/blip/libblip/PeerId;Ljava/time/Instant;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    new-instance p1, Lkotlin/Pair;

    .line 92
    .line 93
    invoke-direct {p1, p2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput v4, v0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1;->n:I

    .line 97
    .line 98
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 99
    .line 100
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-ne p0, v1, :cond_5

    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method
