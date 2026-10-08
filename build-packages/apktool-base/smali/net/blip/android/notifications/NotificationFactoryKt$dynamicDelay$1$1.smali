.class final Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.NotificationFactoryKt$dynamicDelay$1$1"
    f = "NotificationFactory.kt"
    l = {
        0x25a,
        0x25b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:J

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->p:J

    .line 2
    .line 3
    iput-object p3, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->q:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->p:J

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->q:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p0, p2}, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->n:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v5, :cond_1

    .line 15
    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    iput v5, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->n:I

    .line 38
    .line 39
    iget-wide v5, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->p:J

    .line 40
    .line 41
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_0
    iput-object v3, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->o:Ljava/lang/Object;

    .line 49
    .line 50
    iput v4, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->n:I

    .line 51
    .line 52
    iget-object p1, p0, Lnet/blip/android/notifications/NotificationFactoryKt$dynamicDelay$1$1;->q:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-ne p0, v1, :cond_4

    .line 59
    .line 60
    :goto_1
    return-object v1

    .line 61
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method
