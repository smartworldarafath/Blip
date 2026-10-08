.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2"
    f = "Delay.kt"
    l = {
        0x19c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public o:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public p:Lkotlinx/coroutines/channels/ReceiveChannel;

.field public q:I

.field public synthetic r:Lkotlinx/coroutines/CoroutineScope;

.field public synthetic s:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic t:Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->t:Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->t:Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 10
    .line 11
    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->r:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->s:Lkotlinx/coroutines/flow/FlowCollector;

    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->r:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->s:Lkotlinx/coroutines/flow/FlowCollector;

    .line 6
    .line 7
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->q:I

    .line 10
    .line 11
    const/4 v9, 0x1

    .line 12
    const/4 v10, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v9, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->p:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 18
    .line 19
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 20
    .line 21
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->n:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v10

    .line 33
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$values$1;

    .line 37
    .line 38
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->t:Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 39
    .line 40
    invoke-direct {v6, v2, v10}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$values$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Lkotlinx/coroutines/channels/BufferOverflow;->j:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 44
    .line 45
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->j:Lkotlinx/coroutines/CoroutineStart;

    .line 46
    .line 47
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 48
    .line 49
    const/4 v3, -0x1

    .line 50
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/ProduceKt;->b(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$fixedPeriodTicker$1;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v6, v3, v10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/ProduceKt;->b(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v3, v11

    .line 71
    move-object v2, v12

    .line 72
    :cond_2
    :goto_0
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 73
    .line 74
    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->c:Lkotlinx/coroutines/internal/Symbol;

    .line 75
    .line 76
    if-eq v4, v5, :cond_4

    .line 77
    .line 78
    new-instance v12, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 79
    .line 80
    iget-object v4, v0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-direct {v12, v4}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->b()Lkotlinx/coroutines/selects/SelectClause1;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1;

    .line 93
    .line 94
    invoke-direct {v5, v2, v1, v10}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    new-instance v11, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 98
    .line 99
    move-object v6, v4

    .line 100
    check-cast v6, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 101
    .line 102
    iget-object v13, v6, Lkotlinx/coroutines/selects/SelectClause1Impl;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 103
    .line 104
    check-cast v4, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 105
    .line 106
    iget-object v14, v4, Lkotlinx/coroutines/selects/SelectClause1Impl;->b:Lkotlin/jvm/functions/Function3;

    .line 107
    .line 108
    iget-object v15, v4, Lkotlinx/coroutines/selects/SelectClause1Impl;->c:Lkotlin/jvm/functions/Function3;

    .line 109
    .line 110
    iget-object v4, v4, Lkotlinx/coroutines/selects/SelectClause1Impl;->d:Lkotlin/jvm/functions/Function3;

    .line 111
    .line 112
    move-object/from16 v17, v4

    .line 113
    .line 114
    move-object/from16 v16, v5

    .line 115
    .line 116
    invoke-direct/range {v11 .. v17}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V

    .line 117
    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    invoke-virtual {v12, v11, v4}, Lkotlinx/coroutines/selects/SelectImplementation;->f(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/selects/SelectClause1;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2;

    .line 128
    .line 129
    invoke-direct {v6, v2, v7, v10}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 130
    .line 131
    .line 132
    new-instance v11, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 133
    .line 134
    move-object v13, v5

    .line 135
    check-cast v13, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 136
    .line 137
    iget-object v13, v13, Lkotlinx/coroutines/selects/SelectClause1Impl;->a:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 138
    .line 139
    check-cast v5, Lkotlinx/coroutines/selects/SelectClause1Impl;

    .line 140
    .line 141
    iget-object v14, v5, Lkotlinx/coroutines/selects/SelectClause1Impl;->b:Lkotlin/jvm/functions/Function3;

    .line 142
    .line 143
    iget-object v15, v5, Lkotlinx/coroutines/selects/SelectClause1Impl;->c:Lkotlin/jvm/functions/Function3;

    .line 144
    .line 145
    iget-object v5, v5, Lkotlinx/coroutines/selects/SelectClause1Impl;->d:Lkotlin/jvm/functions/Function3;

    .line 146
    .line 147
    move-object/from16 v17, v5

    .line 148
    .line 149
    move-object/from16 v16, v6

    .line 150
    .line 151
    invoke-direct/range {v11 .. v17}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/SuspendLambda;Lkotlin/jvm/functions/Function3;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v12, v11, v4}, Lkotlinx/coroutines/selects/SelectImplementation;->f(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    .line 155
    .line 156
    .line 157
    iput-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->r:Lkotlinx/coroutines/CoroutineScope;

    .line 158
    .line 159
    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->s:Lkotlinx/coroutines/flow/FlowCollector;

    .line 160
    .line 161
    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->n:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 162
    .line 163
    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 164
    .line 165
    iput-object v1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->p:Lkotlinx/coroutines/channels/ReceiveChannel;

    .line 166
    .line 167
    iput v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2;->q:I

    .line 168
    .line 169
    sget-object v4, Lkotlinx/coroutines/selects/SelectImplementation;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 170
    .line 171
    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    instance-of v4, v4, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 176
    .line 177
    if-eqz v4, :cond_3

    .line 178
    .line 179
    invoke-virtual {v12, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v12, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :goto_1
    if-ne v4, v8, :cond_2

    .line 189
    .line 190
    return-object v8

    .line 191
    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object v0
.end method
