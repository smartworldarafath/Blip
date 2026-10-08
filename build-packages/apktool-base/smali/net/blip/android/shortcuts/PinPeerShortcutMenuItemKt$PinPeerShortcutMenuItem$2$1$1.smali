.class final Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;
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
    c = "net.blip.android.shortcuts.PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1"
    f = "PinPeerShortcutMenuItem.kt"
    l = {
        0x19
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lnet/blip/android/MainActivity;

.field public final synthetic p:Lnet/blip/libblip/Peer;


# direct methods
.method public constructor <init>(Lnet/blip/android/MainActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->o:Lnet/blip/android/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->p:Lnet/blip/libblip/Peer;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->o:Lnet/blip/android/MainActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->p:Lnet/blip/libblip/Peer;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;-><init>(Lnet/blip/android/MainActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/Continuation;)V

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
    iget v1, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->o:Lnet/blip/android/MainActivity;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

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
    iput v2, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->n:I

    .line 27
    .line 28
    iget-object p1, p0, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt$PinPeerShortcutMenuItem$2$1$1;->p:Lnet/blip/libblip/Peer;

    .line 29
    .line 30
    invoke-static {v3, p1, p0}, Lnet/blip/android/shortcuts/ShortcutsManagerKt;->f(Landroidx/activity/ComponentActivity;Lnet/blip/libblip/Peer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    const-string p0, "Couldn\'t add shortcut"

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {v3, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 65
    .line 66
    .line 67
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0
.end method
