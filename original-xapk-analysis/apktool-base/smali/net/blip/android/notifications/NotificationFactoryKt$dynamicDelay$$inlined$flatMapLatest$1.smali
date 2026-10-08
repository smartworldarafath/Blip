.class public final Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1"
    f = "NotificationFactory.kt"
    l = {
        0xbd
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lec;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lec;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->q:Lec;

    .line 2
    .line 3
    const/4 p2, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance v0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->q:Lec;

    .line 8
    .line 9
    invoke-direct {v0, p3, p0}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lec;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 13
    .line 14
    iput-object p2, v0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->p:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->p:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->n:I

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-ne v3, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v6

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->q:Lec;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lec;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    new-instance p1, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;

    .line 43
    .line 44
    invoke-direct {p1, v7, v8, v1, v6}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object v6, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->o:Lkotlinx/coroutines/flow/FlowCollector;

    .line 52
    .line 53
    iput-object v6, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->p:Ljava/lang/Object;

    .line 54
    .line 55
    iput v5, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1;->n:I

    .line 56
    .line 57
    instance-of v1, v0, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    check-cast p1, Lkotlinx/coroutines/flow/AbstractFlow;

    .line 62
    .line 63
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/AbstractFlow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-ne p0, v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object p0, v4

    .line 71
    :goto_0
    if-ne p0, v2, :cond_3

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_3
    :goto_1
    return-object v4

    .line 75
    :cond_4
    check-cast v0, Lkotlinx/coroutines/flow/ThrowingCollector;

    .line 76
    .line 77
    iget-object p0, v0, Lkotlinx/coroutines/flow/ThrowingCollector;->j:Ljava/lang/Throwable;

    .line 78
    .line 79
    throw p0
.end method
