.class final Landroidx/compose/ui/platform/MotionDurationScaleImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/MotionDurationScale;


# instance fields
.field public final j:Landroid/content/Context;

.field public k:Lkotlinx/coroutines/internal/ContextScope;

.field public final l:Landroidx/compose/runtime/MutableFloatState;

.field public m:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->j:Landroid/content/Context;

    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->l:Landroidx/compose/runtime/MutableFloatState;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final P0(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final a0()F
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->m:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v6, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->j:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v8, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->a:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    monitor-enter v8

    .line 10
    :try_start_0
    invoke-virtual {v8, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v9, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v0, "animator_duration_scale"

    .line 22
    .line 23
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v0, -0x1

    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-static {v0, v1, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v4, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;

    .line 42
    .line 43
    invoke-direct {v4, v5, v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;Landroid/os/Handler;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;Lkotlinx/coroutines/channels/BufferedChannel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lkotlinx/coroutines/internal/ContextScope;

    .line 57
    .line 58
    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 63
    .line 64
    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 65
    .line 66
    check-cast v2, Lkotlinx/coroutines/JobSupport;

    .line 67
    .line 68
    invoke-static {v2, v3}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->c(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->a()Lkotlinx/coroutines/flow/SharingStarted;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "animator_duration_scale"

    .line 84
    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    .line 87
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->v(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/internal/ContextScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Float;)Lkotlinx/coroutines/flow/StateFlow;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v8, v6, v0}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    move-object p0, v0

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    monitor-exit v8

    .line 109
    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/lang/Number;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iget-object v2, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->l:Landroidx/compose/runtime/MutableFloatState;

    .line 120
    .line 121
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->k:Lkotlinx/coroutines/internal/ContextScope;

    .line 127
    .line 128
    if-eqz v1, :cond_1

    .line 129
    .line 130
    new-instance v2, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1;

    .line 131
    .line 132
    invoke-direct {v2, v0, p0, v9}, Landroidx/compose/ui/platform/MotionDurationScaleImpl$startObservingSystemScaleFactor$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/ui/platform/MotionDurationScaleImpl;Lkotlin/coroutines/Continuation;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x3

    .line 136
    invoke-static {v1, v9, v9, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->m:Lkotlinx/coroutines/Job;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    const-string p0, "MotionDurationScale scale factor requested before recomposer loop start"

    .line 144
    .line 145
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 p0, 0x0

    .line 149
    return p0

    .line 150
    :goto_1
    monitor-exit v8

    .line 151
    throw p0

    .line 152
    :cond_2
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->l:Landroidx/compose/runtime/MutableFloatState;

    .line 153
    .line 154
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    return p0
.end method

.method public final g0(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->b(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->a(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
