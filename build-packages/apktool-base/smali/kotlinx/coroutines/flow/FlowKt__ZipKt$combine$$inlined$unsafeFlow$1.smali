.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;

.field public final synthetic k:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic l:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->j:Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->k:Lkotlinx/coroutines/flow/Flow;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->l:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->j:Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->k:Lkotlinx/coroutines/flow/Flow;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 15
    .line 16
    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->l:Lkotlin/jvm/functions/Function3;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;->j:Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;

    .line 23
    .line 24
    invoke-static {p2, p0, v1, p1, v0}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 29
    .line 30
    if-ne p0, p1, :cond_0

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method
