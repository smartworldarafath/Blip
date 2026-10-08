.class public final Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2;
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

.field public final synthetic k:Lnet/blip/android/notifications/NotificationFactory;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/blip/android/notifications/NotificationFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2;->k:Lnet/blip/android/notifications/NotificationFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;->n:I

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
    iput v1, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;-><init>(Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Lkotlin/Pair;

    .line 51
    .line 52
    iget-object p2, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p2, Lnet/blip/libblip/Peer;

    .line 55
    .line 56
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lnet/blip/libblip/frontend/Transfer;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v2, p1, Lnet/blip/libblip/frontend/Transfer;->m:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v5, "transferProgress:"

    .line 68
    .line 69
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    sget-object v4, Lnet/blip/android/notifications/NotificationChannels;->e:Lnet/blip/android/notifications/NotificationChannels$Config;

    .line 84
    .line 85
    new-instance v5, Le0;

    .line 86
    .line 87
    iget-object v6, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2;->k:Lnet/blip/android/notifications/NotificationFactory;

    .line 88
    .line 89
    invoke-direct {v5, p2, p1, v6, v2}, Le0;-><init>(Lnet/blip/libblip/Peer;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/android/notifications/NotificationFactory;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v2, v4, p2, v5}, Lnet/blip/android/notifications/NotificationFactory;->c(ILnet/blip/android/notifications/NotificationChannels$Config;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput v3, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1;->n:I

    .line 97
    .line 98
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2;->j:Lkotlinx/coroutines/flow/FlowCollector;

    .line 99
    .line 100
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-ne p0, v1, :cond_3

    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method
