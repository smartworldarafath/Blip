.class final Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.util.LaunchersKt$rememberSuspendingPermissionState$1$1"
    f = "Launchers.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lcom/google/accompanist/permissions/PermissionState;

.field public final synthetic p:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>(Lcom/google/accompanist/permissions/PermissionState;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->o:Lcom/google/accompanist/permissions/PermissionState;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->p:Lkotlinx/coroutines/channels/Channel;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->o:Lcom/google/accompanist/permissions/PermissionState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->p:Lkotlinx/coroutines/channels/Channel;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p1}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;-><init>(Lcom/google/accompanist/permissions/PermissionState;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->n:I

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
    return-object p1

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
    iget-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->o:Lcom/google/accompanist/permissions/PermissionState;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/google/accompanist/permissions/PermissionState;->b()V

    .line 27
    .line 28
    .line 29
    iput v2, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->n:I

    .line 30
    .line 31
    iget-object p1, p0, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;->p:Lkotlinx/coroutines/channels/Channel;

    .line 32
    .line 33
    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-ne p0, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    return-object p0
.end method
