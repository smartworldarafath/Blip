.class final Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;
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
        "Ljava/util/List<",
        "Landroidx/core/content/pm/ShortcutInfoCompat;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.shortcuts.ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1"
    f = "ShortcutsManager.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic n:Lnet/blip/android/shortcuts/ShortcutsManager;


# direct methods
.method public constructor <init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;->n:Lnet/blip/android/shortcuts/ShortcutsManager;

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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;->n:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;-><init>(Lnet/blip/android/shortcuts/ShortcutsManager;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1;->n:Lnet/blip/android/shortcuts/ShortcutsManager;

    .line 7
    .line 8
    iget-object p0, p0, Lnet/blip/android/shortcuts/ShortcutsManager;->a:Landroidx/activity/ComponentActivity;

    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x1e

    .line 13
    .line 14
    const-class v1, Landroid/content/pm/ShortcutManager;

    .line 15
    .line 16
    if-lt p1, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/content/pm/ShortcutManager;

    .line 23
    .line 24
    invoke-static {p1}, Lj;->o(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/content/pm/ShortcutManager;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
