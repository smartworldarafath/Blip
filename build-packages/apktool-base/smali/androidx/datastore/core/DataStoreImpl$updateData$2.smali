.class final Landroidx/datastore/core/DataStoreImpl$updateData$2;
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
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.datastore.core.DataStoreImpl$updateData$2"
    f = "DataStoreImpl.kt"
    l = {
        0xa9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/datastore/core/DataStoreImpl;

.field public final synthetic q:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->p:Landroidx/datastore/core/DataStoreImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->q:Lkotlin/jvm/functions/Function2;

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
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/DataStoreImpl$updateData$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$updateData$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$updateData$2;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->p:Landroidx/datastore/core/DataStoreImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->q:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/datastore/core/DataStoreImpl$updateData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 27
    .line 28
    invoke-static {v2}, Lkotlinx/coroutines/CompletableDeferredKt;->a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v4, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->p:Landroidx/datastore/core/DataStoreImpl;

    .line 33
    .line 34
    iget-object v5, v4, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroidx/datastore/core/DataStoreInMemoryCache;->a()Landroidx/datastore/core/State;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    new-instance v6, Landroidx/datastore/core/Message$Update;

    .line 41
    .line 42
    iget-object v7, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->q:Lkotlin/jvm/functions/Function2;

    .line 43
    .line 44
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v6, v7, v1, v5, p1}, Landroidx/datastore/core/Message$Update;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CompletableDeferred;Landroidx/datastore/core/State;Lkotlin/coroutines/CoroutineContext;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v4, Landroidx/datastore/core/DataStoreImpl;->l:Landroidx/datastore/core/SimpleActor;

    .line 52
    .line 53
    iget-object v4, p1, Landroidx/datastore/core/SimpleActor;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 54
    .line 55
    invoke-interface {v4, v6}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    instance-of v5, v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 60
    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    check-cast v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    .line 64
    .line 65
    iget-object p0, v4, Lkotlinx/coroutines/channels/ChannelResult$Closed;->a:Ljava/lang/Throwable;

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    new-instance p0, Lkotlinx/coroutines/channels/ClosedSendChannelException;

    .line 70
    .line 71
    const-string p1, "Channel was closed normally"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    throw p0

    .line 77
    :cond_3
    instance-of v4, v4, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 78
    .line 79
    if-nez v4, :cond_6

    .line 80
    .line 81
    iget-object v4, p1, Landroidx/datastore/core/SimpleActor;->d:Landroidx/datastore/core/AtomicInt;

    .line 82
    .line 83
    iget-object v4, v4, Landroidx/datastore/core/AtomicInt;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_4

    .line 90
    .line 91
    iget-object v4, p1, Landroidx/datastore/core/SimpleActor;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 92
    .line 93
    new-instance v5, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 94
    .line 95
    invoke-direct {v5, p1, v2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Landroidx/datastore/core/SimpleActor;Lkotlin/coroutines/Continuation;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x3

    .line 99
    invoke-static {v4, v2, v2, v5, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 100
    .line 101
    .line 102
    :cond_4
    iput v3, p0, Landroidx/datastore/core/DataStoreImpl$updateData$2;->n:I

    .line 103
    .line 104
    invoke-interface {v1, p0}, Lkotlinx/coroutines/Deferred;->Z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-ne p0, v0, :cond_5

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_5
    return-object p0

    .line 112
    :cond_6
    const-string p0, "Check failed."

    .line 113
    .line 114
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v2
.end method
