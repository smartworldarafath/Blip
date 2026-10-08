.class final Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lnet/blip/libblip/frontend/Transfer;",
        "Lnet/blip/libblip/frontend/State;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Pair<",
        "+",
        "Lnet/blip/libblip/Peer;",
        "+",
        "Lnet/blip/libblip/frontend/Transfer;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$4"
    f = "NotificationFactory.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic n:Lnet/blip/libblip/frontend/Transfer;

.field public synthetic o:Lnet/blip/libblip/frontend/State;


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    check-cast p2, Lnet/blip/libblip/frontend/State;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 14
    .line 15
    iput-object p2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;->o:Lnet/blip/libblip/frontend/State;

    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;->n:Lnet/blip/libblip/frontend/Transfer;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;->o:Lnet/blip/libblip/frontend/State;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Lnet/blip/libblip/frontend/Transfer;->n:Lnet/blip/libblip/PeerId;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lnet/blip/libblip/frontend/State;->u:Lnet/blip/libblip/frontend/Users;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Lnet/blip/libblip/Users_DerivedKt;->a(Lnet/blip/libblip/frontend/Users;Lnet/blip/libblip/PeerId;)Lnet/blip/libblip/Peer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    new-instance p0, Lkotlin/Pair;

    .line 24
    .line 25
    invoke-direct {p0, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method
