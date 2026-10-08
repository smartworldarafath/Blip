.class abstract synthetic Lkotlinx/coroutines/flow/FlowKt__ShareKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/SharingConfig;
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/Channel;->i:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/channels/Channel$Factory;->a:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 7
    .line 8
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->f()Lkotlinx/coroutines/flow/Flow;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance p0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 22
    .line 23
    iget v2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->k:I

    .line 24
    .line 25
    const/4 v3, -0x3

    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v3, -0x2

    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 35
    .line 36
    :goto_0
    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;->j:Lkotlin/coroutines/CoroutineContext;

    .line 37
    .line 38
    invoke-direct {p0, v1, v0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 43
    .line 44
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 45
    .line 46
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 47
    .line 48
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
