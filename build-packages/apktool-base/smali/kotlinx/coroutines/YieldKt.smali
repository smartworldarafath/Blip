.class public abstract Lkotlinx/coroutines/YieldKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->c(Lkotlin/coroutines/CoroutineContext;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    instance-of v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    :goto_1
    move-object p0, v1

    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->m:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->c(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iput-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->o:Ljava/lang/Object;

    .line 37
    .line 38
    iput v4, p0, Lkotlinx/coroutines/DispatchedTask;->l:I

    .line 39
    .line 40
    invoke-virtual {v2, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->c1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_2
    new-instance v3, Lkotlinx/coroutines/YieldContext;

    .line 45
    .line 46
    sget-object v5, Lkotlinx/coroutines/YieldContext;->l:Lkotlinx/coroutines/YieldContext$Key;

    .line 47
    .line 48
    invoke-direct {v3, v5}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->o:Ljava/lang/Object;

    .line 56
    .line 57
    iput v4, p0, Lkotlinx/coroutines/DispatchedTask;->l:I

    .line 58
    .line 59
    invoke-virtual {v2, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->c1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, v3, Lkotlinx/coroutines/YieldContext;->k:Z

    .line 63
    .line 64
    if-eqz v0, :cond_8

    .line 65
    .line 66
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->a()Lkotlinx/coroutines/EventLoop;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, v0, Lkotlinx/coroutines/EventLoop;->n:Lkotlin/collections/ArrayDeque;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v2, v4

    .line 80
    :goto_2
    if-eqz v2, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-wide v2, v0, Lkotlinx/coroutines/EventLoop;->l:J

    .line 84
    .line 85
    const-wide v5, 0x100000000L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmp-long v2, v2, v5

    .line 91
    .line 92
    if-ltz v2, :cond_5

    .line 93
    .line 94
    move v2, v4

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    const/4 v2, 0x0

    .line 97
    :goto_3
    if-eqz v2, :cond_6

    .line 98
    .line 99
    iput-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->o:Ljava/lang/Object;

    .line 100
    .line 101
    iput v4, p0, Lkotlinx/coroutines/DispatchedTask;->l:I

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/EventLoop;->g1(Lkotlinx/coroutines/DispatchedTask;)V

    .line 104
    .line 105
    .line 106
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_6
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/EventLoop;->h1(Z)V

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    .line 113
    .line 114
    .line 115
    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->j1()Z

    .line 116
    .line 117
    .line 118
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-nez v2, :cond_7

    .line 120
    .line 121
    :goto_4
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/EventLoop;->f1(Z)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v2

    .line 126
    :try_start_1
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/DispatchedTask;->h(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catchall_1
    move-exception p0

    .line 131
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/EventLoop;->f1(Z)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_8
    :goto_5
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 136
    .line 137
    :goto_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 138
    .line 139
    if-ne p0, v0, :cond_9

    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_9
    return-object v1
.end method
