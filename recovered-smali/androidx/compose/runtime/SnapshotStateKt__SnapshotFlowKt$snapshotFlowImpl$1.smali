.class final Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;
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
    c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1"
    f = "SnapshotFlow.kt"
    l = {
        0x1df,
        0x1e2,
        0x1e7
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Landroidx/compose/runtime/SnapshotFlowManager;

.field public o:Lkotlinx/coroutines/channels/Channel;

.field public p:Ljava/lang/Object;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->s:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->s:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->q:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->s:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v5, :cond_0

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->p:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v5, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->o:Lkotlinx/coroutines/channels/Channel;

    .line 22
    .line 23
    iget-object v7, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->n:Landroidx/compose/runtime/SnapshotFlowManager;

    .line 24
    .line 25
    iget-object v8, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v6

    .line 42
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->p:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v5, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->o:Lkotlinx/coroutines/channels/Channel;

    .line 45
    .line 46
    iget-object v7, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->n:Landroidx/compose/runtime/SnapshotFlowManager;

    .line 47
    .line 48
    iget-object v8, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    .line 52
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v8, p1

    .line 62
    check-cast v8, Lkotlinx/coroutines/flow/FlowCollector;

    .line 63
    .line 64
    new-instance v7, Landroidx/compose/runtime/SnapshotFlowManager;

    .line 65
    .line 66
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 70
    .line 71
    invoke-direct {p1}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, v7, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 75
    .line 76
    const/4 p1, 0x6

    .line 77
    invoke-static {v5, p1, v6}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :try_start_2
    invoke-virtual {v7, p1, v2}, Landroidx/compose/runtime/SnapshotFlowManager;->a(Lkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v8, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v7, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->n:Landroidx/compose/runtime/SnapshotFlowManager;

    .line 88
    .line 89
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->o:Lkotlinx/coroutines/channels/Channel;

    .line 90
    .line 91
    iput-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->p:Ljava/lang/Object;

    .line 92
    .line 93
    iput v5, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->q:I

    .line 94
    .line 95
    invoke-interface {v8, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    if-ne v5, v0, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move-object v5, p1

    .line 103
    :cond_5
    :goto_0
    :try_start_3
    iput-object v8, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 104
    .line 105
    iput-object v7, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->n:Landroidx/compose/runtime/SnapshotFlowManager;

    .line 106
    .line 107
    iput-object v5, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->o:Lkotlinx/coroutines/channels/Channel;

    .line 108
    .line 109
    iput-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->p:Ljava/lang/Object;

    .line 110
    .line 111
    iput v4, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->q:I

    .line 112
    .line 113
    invoke-interface {v5, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    invoke-virtual {v7, v5, v2}, Landroidx/compose/runtime/SnapshotFlowManager;->a(Lkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-nez v9, :cond_5

    .line 129
    .line 130
    iput-object v8, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->r:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v7, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->n:Landroidx/compose/runtime/SnapshotFlowManager;

    .line 133
    .line 134
    iput-object v5, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->o:Lkotlinx/coroutines/channels/Channel;

    .line 135
    .line 136
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->p:Ljava/lang/Object;

    .line 137
    .line 138
    iput v3, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;->q:I

    .line 139
    .line 140
    invoke-interface {v8, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    if-ne v1, v0, :cond_7

    .line 145
    .line 146
    :goto_2
    return-object v0

    .line 147
    :cond_7
    move-object v1, p1

    .line 148
    goto :goto_0

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    move-object v5, p1

    .line 151
    :goto_3
    iget-object p1, v7, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 152
    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->e(Lkotlinx/coroutines/channels/Channel;)V

    .line 156
    .line 157
    .line 158
    :cond_8
    iget-object p1, v7, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 159
    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    const-string v0, "Called dispose on a manager that has been disposed of"

    .line 164
    .line 165
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->b(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotFlowManagerImpl;->c()V

    .line 169
    .line 170
    .line 171
    iput-object v6, v7, Landroidx/compose/runtime/SnapshotFlowManager;->a:Landroidx/compose/runtime/SnapshotFlowManagerImpl;

    .line 172
    .line 173
    throw p0
.end method
