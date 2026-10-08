.class public final Lnet/blip/android/transferworker/TransferWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/android/transferworker/TransferWorker$Companion;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;

.field public static final k:Lnet/blip/libblip/Logger;


# instance fields
.field public final g:Lkotlinx/coroutines/flow/StateFlow;

.field public final h:Lkotlinx/coroutines/flow/Flow;

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lnet/blip/android/transferworker/TransferWorker$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, ".transfer_id"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lnet/blip/android/transferworker/TransferWorker;->j:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    .line 24
    const-string v2, "TransferWorker"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lnet/blip/libblip/Logger;->m(Ljava/lang/String;[Lkotlin/Pair;)Lnet/blip/libblip/Logger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lnet/blip/android/transferworker/TransferWorker;->k:Lnet/blip/libblip/Logger;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p2, p2, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 17
    .line 18
    iput-object p2, p0, Lnet/blip/android/transferworker/TransferWorker;->g:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    .line 20
    new-instance p2, Lnet/blip/android/notifications/NotificationFactory;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lnet/blip/android/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lnet/blip/libblip/Core;->a:Lkotlinx/coroutines/flow/StateFlow;

    .line 30
    .line 31
    invoke-virtual {p0}, Lnet/blip/android/transferworker/TransferWorker;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, p1, v0}, Lnet/blip/android/notifications/NotificationFactory;->f(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorker;->h:Lkotlinx/coroutines/flow/Flow;

    .line 40
    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 p2, 0x22

    .line 44
    .line 45
    if-lt p1, p2, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    iput p1, p0, Lnet/blip/android/transferworker/TransferWorker;->i:I

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lnet/blip/android/transferworker/TransferWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;->o:I

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
    iput v1, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lnet/blip/android/transferworker/TransferWorker$doWork$1;-><init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lnet/blip/android/transferworker/TransferWorker$doWork$2;

    .line 51
    .line 52
    invoke-direct {p1, p0, v3}, Lnet/blip/android/transferworker/TransferWorker$doWork$2;-><init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    iput v4, v0, Lnet/blip/android/transferworker/TransferWorker$doWork$1;->o:I

    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;->o:I

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
    iput v1, v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;-><init>(Lnet/blip/android/transferworker/TransferWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;->o:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lnet/blip/android/transferworker/TransferWorker;->h:Lkotlinx/coroutines/flow/Flow;

    .line 53
    .line 54
    check-cast p1, Lkotlinx/coroutines/flow/CancellableFlow;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->e(Lkotlinx/coroutines/flow/CancellableFlow;)Lkotlinx/coroutines/flow/CancellableFlow;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput v3, v0, Lnet/blip/android/transferworker/TransferWorker$getForegroundInfo$1;->o:I

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->n(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v1, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Pair;

    .line 70
    .line 71
    iget-object v0, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Landroid/app/Notification;

    .line 82
    .line 83
    new-instance v1, Landroidx/work/ForegroundInfo;

    .line 84
    .line 85
    iget p0, p0, Lnet/blip/android/transferworker/TransferWorker;->i:I

    .line 86
    .line 87
    invoke-direct {v1, v0, p1, p0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 88
    .line 89
    .line 90
    return-object v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/Data;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lnet/blip/android/transferworker/TransferWorker;->j:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Landroidx/work/Data;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    instance-of v0, p0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    return-object p0
.end method
