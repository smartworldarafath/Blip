.class public abstract Lkotlinx/coroutines/channels/ProduceKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->o:I

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
    iput v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->o:I

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
    iget-object p1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->m:Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget-object v2, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 60
    .line 61
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-ne p2, p0, :cond_4

    .line 66
    .line 67
    :try_start_1
    iput-object p1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->m:Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    iput v4, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->o:I

    .line 70
    .line 71
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {p2, v4, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 84
    .line 85
    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 86
    .line 87
    .line 88
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->n0(Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-ne p0, v1, :cond_3

    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_3
    :goto_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0

    .line 106
    :goto_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_4
    const-string p0, "awaitClose() can only be invoked from the producer context"

    .line 111
    .line 112
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v3
.end method

.method public static final b(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->b(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 11
    .line 12
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/ChannelCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p4, p1, p5}, Lkotlinx/coroutines/AbstractCoroutine;->m0(Lkotlinx/coroutines/CoroutineStart;Lkotlinx/coroutines/AbstractCoroutine;Lkotlin/jvm/functions/Function2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method
