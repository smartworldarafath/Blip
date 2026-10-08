.class final Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;
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
.field public final synthetic j:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Lnet/blip/android/shortcuts/ShortcutsManager;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lnet/blip/android/shortcuts/ShortcutsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;->l:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    .line 3
    iget-object p2, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;

    .line 14
    .line 15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    iget-object v1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    .line 19
    iget-object v2, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    iput-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-boolean p2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    iput-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 36
    .line 37
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reportNewPeerInteractions$3;->l:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 51
    .line 52
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager;->a:Landroidx/activity/ComponentActivity;

    .line 53
    .line 54
    iget-object p2, p1, Lnet/blip/android/shortcuts/PeerInteractionFingerprint;->a:Lnet/blip/libblip/PeerId;

    .line 55
    .line 56
    invoke-static {p0, p2}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->e(Landroid/content/Context;Lnet/blip/libblip/PeerId;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 60
    .line 61
    return-object v0
.end method
