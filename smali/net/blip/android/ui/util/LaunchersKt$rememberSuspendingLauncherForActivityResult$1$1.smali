.class final Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1"
    f = "Launchers.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic q:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->p:Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->q:Lkotlinx/coroutines/channels/Channel;

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
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;

    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->p:Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->q:Lkotlinx/coroutines/channels/Channel;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;-><init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->n:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v4

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->p:Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->k:Lkotlinx/coroutines/NonCancellable;

    .line 32
    .line 33
    new-instance v0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1$1;

    .line 34
    .line 35
    iget-object v2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->q:Lkotlinx/coroutines/channels/Channel;

    .line 36
    .line 37
    invoke-direct {v0, v2, v4}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1$1;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    iput-object v4, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->o:Ljava/lang/Object;

    .line 41
    .line 42
    iput v3, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1;->n:I

    .line 43
    .line 44
    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, v1, :cond_2

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_2
    return-object p0
.end method
