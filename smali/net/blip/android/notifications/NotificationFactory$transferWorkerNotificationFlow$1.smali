.class final Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Landroid/app/Notification;",
        ">;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1"
    f = "NotificationFactory.kt"
    l = {
        0x191
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lkotlinx/coroutines/flow/StateFlow;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Lnet/blip/android/notifications/NotificationFactory;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;Lnet/blip/android/notifications/NotificationFactory;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->p:Lkotlinx/coroutines/flow/StateFlow;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->q:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->q:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->p:Lkotlinx/coroutines/flow/StateFlow;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;Lnet/blip/android/notifications/NotificationFactory;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->n:I

    .line 8
    .line 9
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v4, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v5

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lkotlin/jvm/internal/Ref$LongRef;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    iput-wide v6, p1, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 45
    .line 46
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1;

    .line 52
    .line 53
    iget-object v7, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->p:Lkotlinx/coroutines/flow/StateFlow;

    .line 54
    .line 55
    iget-object v8, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->q:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v6, v7, v8}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v8, Lz6;

    .line 61
    .line 62
    const/16 v9, 0xd

    .line 63
    .line 64
    invoke-direct {v8, v9}, Lz6;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->j(Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1;Lz6;)Lkotlinx/coroutines/flow/Flow;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    new-instance v8, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;

    .line 72
    .line 73
    invoke-direct {v8, v6}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$4;

    .line 77
    .line 78
    const/4 v9, 0x3

    .line 79
    invoke-direct {v6, v9, v5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 83
    .line 84
    invoke-direct {v9, v8, v7, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v9}, Lkotlinx/coroutines/flow/FlowKt;->i(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    new-instance v7, Lec;

    .line 92
    .line 93
    invoke-direct {v7, v4, v2, p1}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v8, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;

    .line 97
    .line 98
    invoke-direct {v8, v5, v7}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lec;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v6, v8}, Lkotlinx/coroutines/flow/FlowKt;->w(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    new-instance v7, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1;

    .line 106
    .line 107
    iget-object v8, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->r:Lnet/blip/android/notifications/NotificationFactory;

    .line 108
    .line 109
    invoke-direct {v7, v6, v8}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lnet/blip/android/notifications/NotificationFactory;)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;

    .line 113
    .line 114
    invoke-direct {v6, v2, v8, p1, v5}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lnet/blip/android/notifications/NotificationFactory;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 118
    .line 119
    invoke-direct {p1, v6, v7}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 120
    .line 121
    .line 122
    iput-object v5, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->o:Ljava/lang/Object;

    .line 123
    .line 124
    iput v4, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1;->n:I

    .line 125
    .line 126
    instance-of v2, v0, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-ne p0, v1, :cond_2

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    move-object p0, v3

    .line 138
    :goto_0
    if-ne p0, v1, :cond_3

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_3
    :goto_1
    return-object v3

    .line 142
    :cond_4
    check-cast v0, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 143
    .line 144
    iget-object p0, v0, Lkotlinx/coroutines/flow/ThrowingCollector;->j:Ljava/lang/Throwable;

    .line 145
    .line 146
    throw p0
.end method
