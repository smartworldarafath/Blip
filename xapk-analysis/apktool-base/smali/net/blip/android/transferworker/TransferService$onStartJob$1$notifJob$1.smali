.class final Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;
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
    c = "net.blip.android.transferworker.TransferService$onStartJob$1$notifJob$1"
    f = "TransferService.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lnet/blip/android/transferworker/TransferService;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferService;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->o:Lnet/blip/android/transferworker/TransferService;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->p:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->q:Landroid/app/job/JobParameters;

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
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->p:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->q:Landroid/app/job/JobParameters;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->o:Lnet/blip/android/transferworker/TransferService;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;-><init>(Lnet/blip/android/transferworker/TransferService;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->n:I

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
    goto :goto_0

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
    new-instance p1, Lnet/blip/android/notifications/NotificationFactory;

    .line 25
    .line 26
    iget-object v1, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->o:Lnet/blip/android/transferworker/TransferService;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v3}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v1, Lnet/blip/android/transferworker/TransferService;->j:Lkotlinx/coroutines/flow/StateFlow;

    .line 39
    .line 40
    iget-object v4, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->p:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v3, v4}, Lnet/blip/android/notifications/NotificationFactory;->f(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lkotlinx/coroutines/flow/CancellableFlow;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->e(Lkotlinx/coroutines/flow/CancellableFlow;)Lkotlinx/coroutines/flow/CancellableFlow;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v3, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;

    .line 53
    .line 54
    iget-object v4, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->q:Landroid/app/job/JobParameters;

    .line 55
    .line 56
    invoke-direct {v3, v1, v4}, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1$1;-><init>(Lnet/blip/android/transferworker/TransferService;Landroid/app/job/JobParameters;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lnet/blip/android/transferworker/TransferService$onStartJob$1$notifJob$1;->n:I

    .line 60
    .line 61
    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-ne p0, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
