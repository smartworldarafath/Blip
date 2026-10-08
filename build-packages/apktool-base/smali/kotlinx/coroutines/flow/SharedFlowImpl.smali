.class public Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/CancellableFlow;
.implements Lkotlinx/coroutines/flow/internal/FusibleFlow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/CancellableFlow<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/FusibleFlow<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final n:I

.field public final o:I

.field public final p:Lkotlinx/coroutines/channels/BufferOverflow;

.field public q:[Ljava/lang/Object;

.field public r:J

.field public s:J

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->n:I

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->o:I

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->p:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 9
    .line 10
    return-void
.end method

.method public static l(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V
    .locals 8

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->s:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->q:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->s:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    if-eqz v2, :cond_5

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    if-eq v2, p0, :cond_4

    .line 37
    .line 38
    if-eq v2, v4, :cond_3

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->p:Lkotlinx/coroutines/Job;

    .line 43
    .line 44
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->o:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 45
    .line 46
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 47
    .line 48
    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :cond_1
    move-object p2, v2

    .line 54
    move-object v2, p0

    .line 55
    move-object p0, v5

    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->p:Lkotlinx/coroutines/Job;

    .line 67
    .line 68
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->o:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 69
    .line 70
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 71
    .line 72
    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 73
    .line 74
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->o:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 79
    .line 80
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 81
    .line 82
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 83
    .line 84
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .line 86
    .line 87
    move-object p2, p0

    .line 88
    move-object p0, v2

    .line 89
    goto :goto_1

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    move-object v5, v2

    .line 92
    goto :goto_6

    .line 93
    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->c()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 101
    .line 102
    move-object v7, p2

    .line 103
    move-object p2, p1

    .line 104
    move-object p1, v7

    .line 105
    :goto_1
    :try_start_3
    iget-object v2, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget-object v5, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 111
    .line 112
    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lkotlinx/coroutines/Job;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    .line 118
    :goto_2
    move-object v5, p0

    .line 119
    move-object p0, v2

    .line 120
    move-object v2, p2

    .line 121
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->u(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 126
    .line 127
    if-ne p2, v6, :cond_7

    .line 128
    .line 129
    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 130
    .line 131
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 132
    .line 133
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->o:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 134
    .line 135
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->p:Lkotlinx/coroutines/Job;

    .line 136
    .line 137
    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->s:I

    .line 138
    .line 139
    invoke-virtual {v5, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->j(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-ne p2, v1, :cond_6

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_7
    if-eqz p0, :cond_9

    .line 147
    .line 148
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->h()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_8

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_8
    invoke-interface {p0}, Lkotlinx/coroutines/Job;->R()Ljava/util/concurrent/CancellationException;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    throw p0

    .line 160
    :cond_9
    :goto_4
    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 161
    .line 162
    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 163
    .line 164
    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->o:Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 165
    .line 166
    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->p:Lkotlinx/coroutines/Job;

    .line 167
    .line 168
    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->s:I

    .line 169
    .line 170
    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    if-ne p2, v1, :cond_1

    .line 175
    .line 176
    :goto_5
    return-void

    .line 177
    :catchall_2
    move-exception p2

    .line 178
    move-object v5, p0

    .line 179
    move-object p0, p2

    .line 180
    :goto_6
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->g(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->l(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 5
    .line 6
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->c(Lkotlinx/coroutines/flow/SharedFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 2

    .line 1
    new-instance p0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 9
    .line 10
    return-object p0
.end method

.method public final f()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 3
    .line 4
    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->s(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->o([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    move p1, v1

    .line 20
    :goto_0
    monitor-exit p0

    .line 21
    array-length p0, v0

    .line 22
    :goto_1
    if-ge v1, p0, :cond_2

    .line 23
    .line 24
    aget-object v2, v0, v1

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    return p1

    .line 37
    :goto_2
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final j(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->t(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long p2, v1, v3

    .line 22
    .line 23
    if-gez p2, :cond_0

    .line 24
    .line 25
    iput-object v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-ne p0, p1, :cond_1

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public final k()V
    .locals 8

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 7
    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_0
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 25
    .line 26
    iget v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 27
    .line 28
    add-int/2addr v4, v5

    .line 29
    int-to-long v6, v4

    .line 30
    add-long/2addr v2, v6

    .line 31
    const-wide/16 v6, 0x1

    .line 32
    .line 33
    sub-long/2addr v2, v6

    .line 34
    long-to-int v2, v2

    .line 35
    array-length v3, v0

    .line 36
    sub-int/2addr v3, v1

    .line 37
    and-int/2addr v2, v3

    .line 38
    aget-object v2, v0, v2

    .line 39
    .line 40
    sget-object v3, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    add-int/lit8 v5, v5, -0x1

    .line 45
    .line 46
    iput v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iget v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 53
    .line 54
    iget v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 55
    .line 56
    add-int/2addr v4, v5

    .line 57
    int-to-long v4, v4

    .line 58
    add-long/2addr v2, v4

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static {v0, v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 28
    .line 29
    cmp-long v2, v2, v0

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 34
    .line 35
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 36
    .line 37
    cmp-long v2, v2, v0

    .line 38
    .line 39
    if-gez v2, :cond_3

    .line 40
    .line 41
    iget v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k:I

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->j:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    array-length v3, v2

    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_0
    if-ge v4, v3, :cond_2

    .line 52
    .line 53
    aget-object v5, v2, v4

    .line 54
    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 58
    .line 59
    iget-wide v6, v5, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 60
    .line 61
    const-wide/16 v8, 0x0

    .line 62
    .line 63
    cmp-long v8, v8, v6

    .line 64
    .line 65
    if-gtz v8, :cond_1

    .line 66
    .line 67
    cmp-long v6, v6, v0

    .line 68
    .line 69
    if-gez v6, :cond_1

    .line 70
    .line 71
    iput-wide v0, v5, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 72
    .line 73
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 2
    .line 3
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->q([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v3, v1

    .line 19
    if-lt v0, v3, :cond_1

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    mul-int/2addr v3, v2

    .line 23
    invoke-virtual {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->q([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    int-to-long v4, v0

    .line 32
    add-long/2addr v2, v4

    .line 33
    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final o([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k:I

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->j:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_3

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    if-eqz v4, :cond_2

    .line 17
    .line 18
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 19
    .line 20
    iget-object v5, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->t(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    cmp-long v6, v6, v8

    .line 32
    .line 33
    if-ltz v6, :cond_2

    .line 34
    .line 35
    array-length v6, p1

    .line 36
    if-lt v0, v6, :cond_1

    .line 37
    .line 38
    array-length v6, p1

    .line 39
    const/4 v7, 0x2

    .line 40
    mul-int/2addr v6, v7

    .line 41
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_1
    move-object v6, p1

    .line 50
    check-cast v6, [Lkotlin/coroutines/Continuation;

    .line 51
    .line 52
    add-int/lit8 v7, v0, 0x1

    .line 53
    .line 54
    aput-object v5, v6, v0

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 58
    .line 59
    move v0, v7

    .line 60
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    check-cast p1, [Lkotlin/coroutines/Continuation;

    .line 64
    .line 65
    return-object p1
.end method

.method public final p()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 2
    .line 3
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final q([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6

    .line 1
    if-lez p3, :cond_2

    .line 2
    .line 3
    new-array p3, p3, [Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-ge p0, p2, :cond_1

    .line 16
    .line 17
    int-to-long v2, p0

    .line 18
    add-long/2addr v2, v0

    .line 19
    long-to-int v4, v2

    .line 20
    array-length v5, p1

    .line 21
    add-int/lit8 v5, v5, -0x1

    .line 22
    .line 23
    and-int/2addr v4, v5

    .line 24
    aget-object v4, p1, v4

    .line 25
    .line 26
    invoke-static {p3, v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-object p3

    .line 33
    :cond_2
    const-string p0, "Buffer size overflow"

    .line 34
    .line 35
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->h(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v5, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 11
    .line 12
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-direct {v5, v6, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->s(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    :try_start_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->o([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 p2, 0x0

    .line 42
    move-object v1, p0

    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    move-object v1, p0

    .line 47
    goto :goto_5

    .line 48
    :cond_1
    :try_start_2
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 49
    .line 50
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 54
    :try_start_3
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 55
    .line 56
    iget v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    .line 58
    add-int/2addr v3, v4

    .line 59
    int-to-long v3, v3

    .line 60
    add-long v2, v1, v3

    .line 61
    .line 62
    move-object v1, p0

    .line 63
    move-object v4, p1

    .line 64
    :try_start_4
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->n(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget p0, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 71
    .line 72
    add-int/2addr p0, v6

    .line 73
    iput p0, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 74
    .line 75
    iget p0, v1, Lkotlinx/coroutines/flow/SharedFlowImpl;->o:I

    .line 76
    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->o([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 80
    .line 81
    .line 82
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    :goto_0
    move-object p1, v0

    .line 86
    goto :goto_5

    .line 87
    :cond_2
    :goto_1
    move-object p1, p2

    .line 88
    move-object p2, v0

    .line 89
    :goto_2
    monitor-exit v1

    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    invoke-static {v5, p2}, Lkotlinx/coroutines/CancellableContinuationKt;->a(Lkotlinx/coroutines/CancellableContinuationImpl;Lkotlinx/coroutines/DisposableHandle;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    array-length p0, p1

    .line 96
    const/4 p2, 0x0

    .line 97
    :goto_3
    if-ge p2, p0, :cond_5

    .line 98
    .line 99
    aget-object v0, p1, p2

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 116
    .line 117
    if-ne p0, p1, :cond_6

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    :goto_4
    if-ne p0, p1, :cond_7

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p0

    .line 128
    :catchall_2
    move-exception v0

    .line 129
    move-object v1, p0

    .line 130
    move-object p0, v0

    .line 131
    move-object p1, p0

    .line 132
    goto :goto_5

    .line 133
    :catchall_3
    move-exception v0

    .line 134
    move-object v1, p0

    .line 135
    goto :goto_0

    .line 136
    :goto_5
    monitor-exit v1

    .line 137
    throw p1
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k:I

    .line 2
    .line 3
    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->n:I

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->n(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 16
    .line 17
    add-int/2addr v1, v9

    .line 18
    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 19
    .line 20
    if-le v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->m()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 30
    .line 31
    int-to-long v3, v3

    .line 32
    add-long/2addr v1, v3

    .line 33
    iput-wide v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 34
    .line 35
    return v9

    .line 36
    :cond_2
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 37
    .line 38
    iget v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->o:I

    .line 39
    .line 40
    if-lt v1, v3, :cond_5

    .line 41
    .line 42
    iget-wide v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 43
    .line 44
    iget-wide v6, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 45
    .line 46
    cmp-long v1, v4, v6

    .line 47
    .line 48
    if-gtz v1, :cond_5

    .line 49
    .line 50
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->p:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-eq v1, v9, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x2

    .line 61
    if-ne v1, v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {}, Lk8;->e()V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    return v0

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    return v0

    .line 71
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->n(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 75
    .line 76
    add-int/2addr v1, v9

    .line 77
    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 78
    .line 79
    if-le v1, v3, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->m()V

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 89
    .line 90
    int-to-long v5, v1

    .line 91
    add-long/2addr v3, v5

    .line 92
    iget-wide v5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 93
    .line 94
    sub-long/2addr v3, v5

    .line 95
    long-to-int v1, v3

    .line 96
    if-le v1, v2, :cond_7

    .line 97
    .line 98
    const-wide/16 v1, 0x1

    .line 99
    .line 100
    add-long/2addr v1, v5

    .line 101
    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 102
    .line 103
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    iget v7, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 108
    .line 109
    int-to-long v7, v7

    .line 110
    add-long/2addr v5, v7

    .line 111
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    iget v10, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 116
    .line 117
    int-to-long v10, v10

    .line 118
    add-long/2addr v7, v10

    .line 119
    iget v10, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 120
    .line 121
    int-to-long v10, v10

    .line 122
    add-long/2addr v7, v10

    .line 123
    move-object v0, p0

    .line 124
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->v(JJJJ)V

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_0
    return v9
.end method

.method public final t(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .locals 6

    .line 1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 8
    .line 9
    int-to-long v4, p1

    .line 10
    add-long/2addr v2, v4

    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->o:I

    .line 17
    .line 18
    if-lez p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-lez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    :goto_0
    const-wide/16 p0, -0x1

    .line 35
    .line 36
    return-wide p0

    .line 37
    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final u(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->t(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    if-gez v3, :cond_0

    .line 13
    .line 14
    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 20
    .line 21
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    long-to-int v5, v1

    .line 27
    array-length v6, v0

    .line 28
    add-int/lit8 v6, v6, -0x1

    .line 29
    .line 30
    and-int/2addr v5, v6

    .line 31
    aget-object v0, v0, v5

    .line 32
    .line 33
    instance-of v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 38
    .line 39
    iget-object v0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->l:Ljava/lang/Object;

    .line 40
    .line 41
    :cond_1
    const-wide/16 v5, 0x1

    .line 42
    .line 43
    add-long/2addr v1, v5

    .line 44
    iput-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 45
    .line 46
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->w(J)[Lkotlin/coroutines/Continuation;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    move-object v7, v0

    .line 51
    move-object v0, p1

    .line 52
    move-object p1, v7

    .line 53
    :goto_0
    monitor-exit p0

    .line 54
    array-length p0, v0

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_1
    if-ge v1, p0, :cond_3

    .line 57
    .line 58
    aget-object v2, v0, v1

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->g(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return-object p1

    .line 71
    :goto_2
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public final v(JJJJ)V
    .locals 6

    .line 1
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :goto_0
    cmp-long v4, v2, v0

    .line 10
    .line 11
    if-gez v4, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v4, v2, v3, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v4, 0x1

    .line 23
    .line 24
    add-long/2addr v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 27
    .line 28
    iput-wide p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 29
    .line 30
    sub-long p1, p5, v0

    .line 31
    .line 32
    long-to-int p1, p1

    .line 33
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 34
    .line 35
    sub-long/2addr p7, p5

    .line 36
    long-to-int p1, p7

    .line 37
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 38
    .line 39
    return-void
.end method

.method public final w(J)[Lkotlin/coroutines/Continuation;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 4
    .line 5
    cmp-long v1, p1, v1

    .line 6
    .line 7
    sget-object v2, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->a:[Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 17
    .line 18
    int-to-long v5, v1

    .line 19
    add-long/2addr v5, v3

    .line 20
    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->o:I

    .line 21
    .line 22
    const-wide/16 v7, 0x1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget v9, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 27
    .line 28
    if-lez v9, :cond_1

    .line 29
    .line 30
    add-long/2addr v5, v7

    .line 31
    :cond_1
    iget v9, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k:I

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    if-eqz v9, :cond_3

    .line 35
    .line 36
    iget-object v9, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->j:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 37
    .line 38
    if-eqz v9, :cond_3

    .line 39
    .line 40
    array-length v11, v9

    .line 41
    move v12, v10

    .line 42
    :goto_0
    if-ge v12, v11, :cond_3

    .line 43
    .line 44
    aget-object v13, v9, v12

    .line 45
    .line 46
    if-eqz v13, :cond_2

    .line 47
    .line 48
    check-cast v13, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 49
    .line 50
    iget-wide v13, v13, Lkotlinx/coroutines/flow/SharedFlowSlot;->a:J

    .line 51
    .line 52
    const-wide/16 v15, 0x0

    .line 53
    .line 54
    cmp-long v15, v15, v13

    .line 55
    .line 56
    if-gtz v15, :cond_2

    .line 57
    .line 58
    cmp-long v15, v13, v5

    .line 59
    .line 60
    if-gez v15, :cond_2

    .line 61
    .line 62
    move-wide v5, v13

    .line 63
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-wide v11, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->s:J

    .line 67
    .line 68
    cmp-long v9, v5, v11

    .line 69
    .line 70
    if-gtz v9, :cond_4

    .line 71
    .line 72
    :goto_1
    return-object v2

    .line 73
    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->p()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    iget v9, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->t:I

    .line 78
    .line 79
    int-to-long v13, v9

    .line 80
    add-long/2addr v11, v13

    .line 81
    iget v9, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k:I

    .line 82
    .line 83
    iget v13, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 84
    .line 85
    if-lez v9, :cond_5

    .line 86
    .line 87
    sub-long v14, v11, v5

    .line 88
    .line 89
    long-to-int v9, v14

    .line 90
    sub-int v9, v1, v9

    .line 91
    .line 92
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    :cond_5
    iget v9, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->u:I

    .line 97
    .line 98
    int-to-long v14, v9

    .line 99
    add-long/2addr v14, v11

    .line 100
    sget-object v9, Lkotlinx/coroutines/flow/SharedFlowKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 101
    .line 102
    if-lez v13, :cond_9

    .line 103
    .line 104
    new-array v2, v13, [Lkotlin/coroutines/Continuation;

    .line 105
    .line 106
    move-wide/from16 p1, v7

    .line 107
    .line 108
    iget-object v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move v8, v1

    .line 114
    move-object/from16 v16, v2

    .line 115
    .line 116
    move-wide v1, v11

    .line 117
    :goto_2
    cmp-long v17, v11, v14

    .line 118
    .line 119
    if-gez v17, :cond_8

    .line 120
    .line 121
    move-wide/from16 v17, v5

    .line 122
    .line 123
    long-to-int v5, v11

    .line 124
    array-length v6, v7

    .line 125
    add-int/lit8 v6, v6, -0x1

    .line 126
    .line 127
    and-int/2addr v5, v6

    .line 128
    aget-object v5, v7, v5

    .line 129
    .line 130
    if-eq v5, v9, :cond_7

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    .line 136
    .line 137
    add-int/lit8 v6, v10, 0x1

    .line 138
    .line 139
    move/from16 v19, v8

    .line 140
    .line 141
    iget-object v8, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->m:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 142
    .line 143
    aput-object v8, v16, v10

    .line 144
    .line 145
    invoke-static {v7, v11, v12, v9}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iget-object v5, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->l:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v7, v1, v2, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    add-long v1, v1, p1

    .line 154
    .line 155
    if-ge v6, v13, :cond_6

    .line 156
    .line 157
    move v10, v6

    .line 158
    goto :goto_4

    .line 159
    :cond_6
    :goto_3
    move-wide v11, v1

    .line 160
    move-object/from16 v10, v16

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_7
    move/from16 v19, v8

    .line 164
    .line 165
    :goto_4
    add-long v11, v11, p1

    .line 166
    .line 167
    move-wide/from16 v5, v17

    .line 168
    .line 169
    move/from16 v8, v19

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_8
    move-wide/from16 v17, v5

    .line 173
    .line 174
    move/from16 v19, v8

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    move/from16 v19, v1

    .line 178
    .line 179
    move-wide/from16 v17, v5

    .line 180
    .line 181
    move-wide/from16 p1, v7

    .line 182
    .line 183
    move-object v10, v2

    .line 184
    :goto_5
    iget-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->r:J

    .line 185
    .line 186
    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->n:I

    .line 187
    .line 188
    int-to-long v5, v5

    .line 189
    sub-long v5, v11, v5

    .line 190
    .line 191
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    if-nez v19, :cond_a

    .line 200
    .line 201
    cmp-long v3, v1, v14

    .line 202
    .line 203
    if-gez v3, :cond_a

    .line 204
    .line 205
    iget-object v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->q:[Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    long-to-int v4, v1

    .line 211
    array-length v5, v3

    .line 212
    add-int/lit8 v5, v5, -0x1

    .line 213
    .line 214
    and-int/2addr v4, v5

    .line 215
    aget-object v3, v3, v4

    .line 216
    .line 217
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_a

    .line 222
    .line 223
    add-long v11, v11, p1

    .line 224
    .line 225
    add-long v1, v1, p1

    .line 226
    .line 227
    :cond_a
    move-wide v5, v11

    .line 228
    iget v3, v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->k:I

    .line 229
    .line 230
    if-nez v3, :cond_b

    .line 231
    .line 232
    move-wide v3, v5

    .line 233
    :goto_6
    move-wide v7, v14

    .line 234
    goto :goto_7

    .line 235
    :cond_b
    move-wide/from16 v3, v17

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :goto_7
    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->v(JJJJ)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->k()V

    .line 242
    .line 243
    .line 244
    array-length v1, v10

    .line 245
    if-nez v1, :cond_c

    .line 246
    .line 247
    return-object v10

    .line 248
    :cond_c
    invoke-virtual {v0, v10}, Lkotlinx/coroutines/flow/SharedFlowImpl;->o([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    return-object v0
.end method
