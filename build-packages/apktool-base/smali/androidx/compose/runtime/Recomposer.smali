.class public final Landroidx/compose/runtime/Recomposer;
.super Landroidx/compose/runtime/CompositionContext;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Recomposer$Companion;,
        Landroidx/compose/runtime/Recomposer$RecomposerErrorState;,
        Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;,
        Landroidx/compose/runtime/Recomposer$State;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# instance fields
.field public final a:Landroidx/compose/runtime/BroadcastFrameClock;

.field public final b:Landroidx/compose/runtime/NextFrameEndCallbackQueue;

.field public final c:Ljava/lang/Object;

.field public d:Lkotlinx/coroutines/Job;

.field public e:Ljava/lang/Throwable;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/List;

.field public h:Landroidx/collection/MutableScatterSet;

.field public final i:Landroidx/compose/runtime/collection/MutableVector;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Landroidx/collection/MutableScatterMap;

.field public final m:Landroidx/compose/runtime/NestedContentMap;

.field public final n:Landroidx/collection/MutableScatterMap;

.field public final o:Landroidx/collection/MutableScatterMap;

.field public p:Ljava/util/ArrayList;

.field public q:Landroidx/collection/MutableScatterSet;

.field public r:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public t:Z

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

.field public final w:Lkotlinx/coroutines/JobImpl;

.field public final x:Lkotlin/coroutines/CoroutineContext;

.field public final y:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->m:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/runtime/Recomposer;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/runtime/Recomposer;->A:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/BroadcastFrameClock;

    .line 5
    .line 6
    new-instance v1, Lee;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, v2}, Lee;-><init>(Landroidx/compose/runtime/Recomposer;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Lee;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->a:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 16
    .line 17
    new-instance v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    .line 18
    .line 19
    new-instance v2, Lee;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v2, p0, v3}, Lee;-><init>(Landroidx/compose/runtime/Recomposer;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroidx/compose/runtime/NextFrameEndCallbackQueue;-><init>(Lee;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->b:Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->f:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 45
    .line 46
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 50
    .line 51
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 52
    .line 53
    const/16 v2, 0x10

    .line 54
    .line 55
    new-array v2, v2, [Landroidx/compose/runtime/ControlledComposition;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->j:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 75
    .line 76
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 77
    .line 78
    invoke-direct {v1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 82
    .line 83
    new-instance v1, Landroidx/compose/runtime/NestedContentMap;

    .line 84
    .line 85
    invoke-direct {v1}, Landroidx/compose/runtime/NestedContentMap;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->m:Landroidx/compose/runtime/NestedContentMap;

    .line 89
    .line 90
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 91
    .line 92
    invoke-direct {v1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    .line 96
    .line 97
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 98
    .line 99
    invoke-direct {v1}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->o:Landroidx/collection/MutableScatterMap;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 110
    .line 111
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->l:Landroidx/compose/runtime/Recomposer$State;

    .line 112
    .line 113
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 118
    .line 119
    new-instance v1, Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 120
    .line 121
    invoke-direct {v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->v:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 125
    .line 126
    sget-object v1, Lkotlinx/coroutines/Job$Key;->j:Lkotlinx/coroutines/Job$Key;

    .line 127
    .line 128
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 133
    .line 134
    new-instance v2, Lkotlinx/coroutines/JobImpl;

    .line 135
    .line 136
    invoke-direct {v2, v1}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Lma;

    .line 140
    .line 141
    const/16 v3, 0xd

    .line 142
    .line 143
    invoke-direct {v1, v3, p0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->v0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 147
    .line 148
    .line 149
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->w:Lkotlinx/coroutines/JobImpl;

    .line 150
    .line 151
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p1, v2}, Lkotlin/coroutines/CoroutineContext;->A(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->x:Lkotlin/coroutines/CoroutineContext;

    .line 160
    .line 161
    new-instance p1, Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->y:Landroidx/compose/runtime/Recomposer$RecomposerInfoImpl;

    .line 167
    .line 168
    return-void
.end method

.method public static final H(Ljava/util/ArrayList;Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p1, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
.end method

.method public static w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->w()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->z()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->B()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->g()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->b:Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->b:Landroidx/compose/runtime/internal/AwaiterQueue;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const v0, 0x7ffffff

    .line 16
    .line 17
    .line 18
    and-int/2addr p0, v0

    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->B()Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    return p0

    .line 39
    :goto_2
    monitor-exit v0

    .line 40
    throw p0
.end method

.method public final D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/Recomposer$join$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, v2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 9
    .line 10
    check-cast p0, Lkotlinx/coroutines/flow/CancellableFlow;

    .line 11
    .line 12
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 13
    .line 14
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->m(Lkotlinx/coroutines/flow/CancellableFlow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public final E()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->g:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :goto_0
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->g:Ljava/util/List;

    .line 24
    .line 25
    return-object v0
.end method

.method public final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 9
    .line 10
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/compose/runtime/Recomposer$State;

    .line 15
    .line 16
    sget-object v3, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-lez v2, :cond_1

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    check-cast v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    :try_start_1
    const-string v1, "Recomposer shutdown; frame clock awaiter will never resume"

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->e:Ljava/lang/Throwable;

    .line 38
    .line 39
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0

    .line 50
    throw p0
.end method

.method public final G(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p1

    .line 28
    throw p0
.end method

.method public final I(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    const/4 v5, 0x0

    .line 18
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    move-object/from16 v6, p1

    .line 21
    .line 22
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    move-object v8, v7

    .line 27
    check-cast v8, Landroidx/compose/runtime/MovableContentStateReference;

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    if-nez v8, :cond_0

    .line 37
    .line 38
    new-instance v8, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_0
    check-cast v8, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_f

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/util/Map$Entry;

    .line 73
    .line 74
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/util/List;

    .line 85
    .line 86
    check-cast v6, Landroidx/compose/runtime/CompositionImpl;

    .line 87
    .line 88
    iget-object v7, v6, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 89
    .line 90
    iget-boolean v7, v7, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    const-string v7, "Check failed"

    .line 95
    .line 96
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    new-instance v7, Lma;

    .line 100
    .line 101
    const/16 v8, 0xc

    .line 102
    .line 103
    invoke-direct {v7, v8, v6}, Lma;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v8, Lec;

    .line 107
    .line 108
    const/16 v9, 0x8

    .line 109
    .line 110
    move-object/from16 v10, p2

    .line 111
    .line 112
    invoke-direct {v8, v9, v6, v10}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v7, v8}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g(Lma;Lec;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 120
    .line 121
    .line 122
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 123
    :try_start_1
    iget-object v9, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 124
    .line 125
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :try_start_2
    new-instance v11, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    const/4 v13, 0x0

    .line 140
    :goto_2
    if-ge v13, v12, :cond_3

    .line 141
    .line 142
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    check-cast v14, Landroidx/compose/runtime/MovableContentStateReference;

    .line 147
    .line 148
    iget-object v15, v0, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 149
    .line 150
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {v15}, Landroidx/compose/runtime/collection/MultiValueMap;->a(Landroidx/collection/MutableScatterMap;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    move-object/from16 v16, v15

    .line 158
    .line 159
    check-cast v16, Landroidx/compose/runtime/MovableContentStateReference;

    .line 160
    .line 161
    new-instance v3, Lkotlin/Pair;

    .line 162
    .line 163
    invoke-direct {v3, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    goto/16 :goto_c

    .line 174
    .line 175
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    const/4 v4, 0x0

    .line 180
    :goto_3
    if-ge v4, v3, :cond_7

    .line 181
    .line 182
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v12

    .line 186
    check-cast v12, Lkotlin/Pair;

    .line 187
    .line 188
    iget-object v13, v12, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 189
    .line 190
    if-nez v13, :cond_6

    .line 191
    .line 192
    iget-object v13, v0, Landroidx/compose/runtime/Recomposer;->m:Landroidx/compose/runtime/NestedContentMap;

    .line 193
    .line 194
    iget-object v12, v12, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v12, Landroidx/compose/runtime/MovableContentStateReference;

    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object v12, v13, Landroidx/compose/runtime/NestedContentMap;->a:Landroidx/collection/MutableScatterMap;

    .line 202
    .line 203
    invoke-virtual {v12, v5}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-eqz v12, :cond_6

    .line 208
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/4 v12, 0x0

    .line 223
    :goto_4
    if-ge v12, v4, :cond_5

    .line 224
    .line 225
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    check-cast v13, Lkotlin/Pair;

    .line 230
    .line 231
    iget-object v14, v13, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 232
    .line 233
    if-nez v14, :cond_4

    .line 234
    .line 235
    iget-object v14, v0, Landroidx/compose/runtime/Recomposer;->m:Landroidx/compose/runtime/NestedContentMap;

    .line 236
    .line 237
    iget-object v15, v13, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v15, Landroidx/compose/runtime/MovableContentStateReference;

    .line 240
    .line 241
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    iget-object v15, v14, Landroidx/compose/runtime/NestedContentMap;->a:Landroidx/collection/MutableScatterMap;

    .line 245
    .line 246
    invoke-static {v15}, Landroidx/compose/runtime/collection/MultiValueMap;->a(Landroidx/collection/MutableScatterMap;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v17

    .line 250
    check-cast v17, Landroidx/compose/runtime/NestedMovableContent;

    .line 251
    .line 252
    invoke-virtual {v15}, Landroidx/collection/ScatterMap;->f()Z

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    if-eqz v15, :cond_4

    .line 257
    .line 258
    iget-object v14, v14, Landroidx/compose/runtime/NestedContentMap;->b:Landroidx/collection/MutableScatterMap;

    .line 259
    .line 260
    invoke-virtual {v14}, Landroidx/collection/MutableScatterMap;->h()V

    .line 261
    .line 262
    .line 263
    :cond_4
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .line 265
    .line 266
    add-int/lit8 v12, v12, 0x1

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_5
    move-object v11, v3

    .line 270
    goto :goto_5

    .line 271
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_7
    :goto_5
    :try_start_3
    monitor-exit v9

    .line 275
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    const/4 v4, 0x0

    .line 280
    :goto_6
    if-ge v4, v3, :cond_e

    .line 281
    .line 282
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    check-cast v9, Lkotlin/Pair;

    .line 287
    .line 288
    iget-object v9, v9, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 289
    .line 290
    if-nez v9, :cond_8

    .line 291
    .line 292
    add-int/lit8 v4, v4, 0x1

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_8
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    const/4 v4, 0x0

    .line 300
    :goto_7
    if-ge v4, v3, :cond_e

    .line 301
    .line 302
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    check-cast v9, Lkotlin/Pair;

    .line 307
    .line 308
    iget-object v9, v9, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 309
    .line 310
    if-eqz v9, :cond_9

    .line 311
    .line 312
    add-int/lit8 v4, v4, 0x1

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    const/4 v9, 0x0

    .line 329
    :goto_8
    if-ge v9, v4, :cond_b

    .line 330
    .line 331
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    check-cast v12, Lkotlin/Pair;

    .line 336
    .line 337
    iget-object v13, v12, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 338
    .line 339
    if-nez v13, :cond_a

    .line 340
    .line 341
    iget-object v12, v12, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v12, Landroidx/compose/runtime/MovableContentStateReference;

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :catchall_1
    move-exception v0

    .line 347
    goto :goto_d

    .line 348
    :cond_a
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_b
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 352
    .line 353
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    :try_start_4
    iget-object v9, v0, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 357
    .line 358
    .line 359
    :try_start_5
    monitor-exit v4

    .line 360
    new-instance v3, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    const/4 v9, 0x0

    .line 374
    :goto_a
    if-ge v9, v4, :cond_d

    .line 375
    .line 376
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    move-object v13, v12

    .line 381
    check-cast v13, Lkotlin/Pair;

    .line 382
    .line 383
    iget-object v13, v13, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 384
    .line 385
    if-eqz v13, :cond_c

    .line 386
    .line 387
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    :cond_c
    add-int/lit8 v9, v9, 0x1

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_d
    move-object v11, v3

    .line 394
    goto :goto_b

    .line 395
    :catchall_2
    move-exception v0

    .line 396
    monitor-exit v4

    .line 397
    throw v0

    .line 398
    :cond_e
    :goto_b
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/CompositionImpl;->u(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 399
    .line 400
    .line 401
    :try_start_6
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 402
    .line 403
    .line 404
    invoke-static {v7}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :catchall_3
    move-exception v0

    .line 410
    goto :goto_e

    .line 411
    :goto_c
    :try_start_7
    monitor-exit v9

    .line 412
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 413
    :goto_d
    :try_start_8
    invoke-static {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 414
    .line 415
    .line 416
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 417
    :goto_e
    invoke-static {v7}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 418
    .line 419
    .line 420
    throw v0

    .line 421
    :cond_f
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, Ljava/lang/Iterable;

    .line 426
    .line 427
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;)Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    return-object v0
.end method

.method public final J(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/CompositionImpl;
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget v0, p1, Landroidx/compose/runtime/CompositionImpl;->F:I

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->q:Landroidx/collection/MutableScatterSet;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_1
    new-instance p0, Lma;

    .line 29
    .line 30
    const/16 v2, 0xc

    .line 31
    .line 32
    invoke-direct {p0, v2, p1}, Lma;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lec;

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    invoke-direct {v2, v3, p1, p2}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g(Lma;Lec;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p2}, Landroidx/collection/ScatterSet;->c()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v3, v0, :cond_3

    .line 57
    .line 58
    new-instance v3, Lp0;

    .line 59
    .line 60
    const/16 v4, 0x1a

    .line 61
    .line 62
    invoke-direct {v3, v4, p2, p1}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p1, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    iget-boolean v4, p2, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    const-string v4, "Preparing a composition while composing is not supported"

    .line 72
    .line 73
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iput-boolean v0, p2, Landroidx/compose/runtime/GapComposer;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    :try_start_2
    invoke-virtual {v3}, Lp0;->a()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_3
    iput-boolean v0, p2, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    iput-boolean v0, p2, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 87
    .line 88
    throw p1

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->y()Z

    .line 92
    .line 93
    .line 94
    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 99
    .line 100
    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    return-object p1

    .line 104
    :catchall_2
    move-exception p1

    .line 105
    goto :goto_2

    .line 106
    :goto_1
    :try_start_5
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 107
    .line 108
    .line 109
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    :goto_2
    invoke-static {p0}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_4
    :goto_3
    return-object v1
.end method

.method public final K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/runtime/Recomposer;->A:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    instance-of v0, p1, Landroidx/compose/runtime/ComposeRuntimeError;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    const-string v1, "Error was captured in composition while live edit was enabled."

    .line 23
    .line 24
    const-string v2, "ComposeInternal"

    .line 25
    .line 26
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->j:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 40
    .line 41
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 62
    .line 63
    new-instance v2, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 64
    .line 65
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    if-eqz p2, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/Recomposer;->M(Landroidx/compose/runtime/ControlledComposition;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    const-string p0, "expected to go to inactive state due to composition error"

    .line 86
    .line 87
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_1
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :goto_1
    monitor-exit v0

    .line 93
    throw p0

    .line 94
    :cond_2
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 95
    .line 96
    monitor-enter p2

    .line 97
    :try_start_1
    const-string v0, "Error was captured in composition."

    .line 98
    .line 99
    const-string v1, "ComposeInternal"

    .line 100
    .line 101
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 105
    .line 106
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 111
    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 115
    .line 116
    new-instance v0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .line 123
    .line 124
    monitor-exit p2

    .line 125
    throw p1

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    :try_start_2
    iget-object p0, v0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->a:Ljava/lang/Throwable;

    .line 129
    .line 130
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :goto_2
    monitor-exit p2

    .line 132
    throw p0
.end method

.method public final L()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->A()Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->E()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 26
    .line 27
    new-instance v3, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/collection/MutableScatterSet;

    .line 33
    .line 34
    invoke-direct {v2}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :try_start_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v0, :cond_1

    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/compose/runtime/ControlledComposition;

    .line 52
    .line 53
    check-cast v4, Landroidx/compose/runtime/CompositionImpl;

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/CompositionImpl;->z(Landroidx/compose/runtime/collection/ScatterSetWrapper;)V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 59
    .line 60
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/compose/runtime/Recomposer$State;

    .line 65
    .line 66
    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 69
    .line 70
    .line 71
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    if-lez v4, :cond_1

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v0

    .line 82
    :try_start_3
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->A()Z

    .line 89
    .line 90
    .line 91
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    monitor-exit v0

    .line 93
    return p0

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string v1, "called outside of runRecomposeAndApplyChanges"

    .line 99
    .line 100
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    :goto_1
    monitor-exit v0

    .line 105
    throw p0

    .line 106
    :goto_2
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter v1

    .line 109
    :try_start_5
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_3

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {p0, v3}, Landroidx/collection/MutableScatterSet;->l(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    monitor-exit v1

    .line 133
    throw v0

    .line 134
    :catchall_3
    move-exception p0

    .line 135
    monitor-exit v1

    .line 136
    throw p0

    .line 137
    :goto_4
    monitor-exit v0

    .line 138
    throw p0
.end method

.method public final M(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->p:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer;->g:Ljava/util/List;

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final N(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 9
    .line 10
    iget-object v2, v2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;

    .line 20
    .line 21
    invoke-direct {v3, p0, v0, v2, v1}, Landroidx/compose/runtime/Recomposer$recompositionRunner$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->a:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 25
    .line 26
    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    .line 32
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p0, v0

    .line 38
    :goto_0
    if-ne p0, p1, :cond_1

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    return-object v0
.end method

.method public final a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/runtime/CompositionImpl;->E:Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/compose/runtime/GapComposer;->F:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 11
    .line 12
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/compose/runtime/Recomposer$State;

    .line 17
    .line 18
    sget-object v3, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v4, 0x1

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->E()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    xor-int/2addr v4, v2

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_0
    :goto_0
    monitor-exit v1

    .line 41
    :try_start_1
    new-instance v1, Lma;

    .line 42
    .line 43
    const/16 v2, 0xc

    .line 44
    .line 45
    invoke-direct {v1, v2, p1}, Lma;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lec;

    .line 49
    .line 50
    const/16 v5, 0x8

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-direct {v2, v5, p1, v6}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g(Lma;Lec;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 60
    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->j()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 64
    :try_start_3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/CompositionImpl;->n(Lkotlin/jvm/functions/Function2;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 65
    .line 66
    .line 67
    :try_start_4
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 68
    .line 69
    .line 70
    :try_start_5
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter p2

    .line 76
    :try_start_6
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 77
    .line 78
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-lez v1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->E()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_1

    .line 99
    .line 100
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->f:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->g:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_1
    :goto_1
    monitor-exit p2

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->m()V

    .line 118
    .line 119
    .line 120
    :cond_2
    :try_start_7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/CompositionImpl;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 121
    .line 122
    .line 123
    :try_start_8
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->h()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->j()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 127
    .line 128
    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->m()V

    .line 136
    .line 137
    .line 138
    :cond_3
    return-void

    .line 139
    :catchall_2
    move-exception p1

    .line 140
    invoke-virtual {p0, p1, v6}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catchall_3
    move-exception p2

    .line 145
    invoke-virtual {p0, p2, p1}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_2
    monitor-exit p2

    .line 150
    throw p0

    .line 151
    :catchall_4
    move-exception p2

    .line 152
    goto :goto_4

    .line 153
    :catchall_5
    move-exception p2

    .line 154
    goto :goto_3

    .line 155
    :catchall_6
    move-exception p2

    .line 156
    :try_start_9
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->q(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 157
    .line 158
    .line 159
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 160
    :goto_3
    :try_start_a
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/snapshots/MutableSnapshot;)V

    .line 161
    .line 162
    .line 163
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 164
    :goto_4
    if-eqz v4, :cond_4

    .line 165
    .line 166
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 167
    .line 168
    monitor-enter v0

    .line 169
    monitor-exit v0

    .line 170
    :cond_4
    invoke-virtual {p0, p2, p1}, Landroidx/compose/runtime/Recomposer;->K(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :goto_5
    monitor-exit v1

    .line 175
    throw p0
.end method

.method public final b(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/ScatterSet;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->v:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    move-object v2, p1

    .line 5
    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 8
    .line 9
    iput-object p2, v2, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {p0, p1, p3}, Landroidx/compose/runtime/Recomposer;->a(Landroidx/compose/runtime/ControlledComposition;Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/collection/MutableScatterSet;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :goto_0
    :try_start_2
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 29
    .line 30
    iput-object v3, p1, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_3
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 38
    .line 39
    iput-object v3, p1, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 40
    .line 41
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/runtime/Recomposer;->A:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final g()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    return-wide v0
.end method

.method public final h()Landroidx/compose/runtime/Composition;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final j()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->x:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final l(Landroidx/compose/runtime/ControlledComposition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->h(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->y()Lkotlinx/coroutines/CancellableContinuation;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    throw p0
.end method

.method public final m(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/compose/runtime/MovableContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0
.end method

.method public final n(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/ScatterSet;)Landroidx/collection/ScatterSet;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->v:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->L()Z

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 8
    .line 9
    invoke-direct {v2, p3}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/CompositionImpl;->z(Landroidx/compose/runtime/collection/ScatterSetWrapper;)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p1, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 18
    .line 19
    iput-object p2, p1, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroidx/compose/runtime/Recomposer;->J(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/CompositionImpl;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/CompositionImpl;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionImpl;->h()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionImpl;->j()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Landroidx/collection/MutableScatterSet;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget-object p0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_1
    :try_start_2
    iput-object p3, p1, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :goto_2
    :try_start_3
    iput-object p3, p1, Landroidx/compose/runtime/CompositionImpl;->y:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 62
    .line 63
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :goto_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final o(Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final q(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->v:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 12
    .line 13
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final r(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->q:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 9
    .line 10
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 11
    .line 12
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->q:Landroidx/collection/MutableScatterSet;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public final s(Lr1;)Landroidx/compose/runtime/CancellationHandle;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->b:Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->b:Landroidx/compose/runtime/internal/AwaiterQueue;

    .line 4
    .line 5
    new-instance v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue$NextFrameEndAwaiter;->a:Lr1;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->c:Lp0;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroidx/compose/runtime/internal/AwaiterQueue;->a(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final v(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->g:Ljava/util/List;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->j:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    .line 29
    throw p0
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 5
    .line 6
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 11
    .line 12
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->n:Landroidx/compose/runtime/Recomposer$State;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 21
    .line 22
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 23
    .line 24
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->w:Lkotlinx/coroutines/JobImpl;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public final y()Lkotlinx/coroutines/CancellableContinuation;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/compose/runtime/Recomposer$State;

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/runtime/Recomposer$State;->k:Landroidx/compose/runtime/Recomposer$State;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v5, p0, Landroidx/compose/runtime/Recomposer;->i:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-gtz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->E()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v7, 0x0

    .line 35
    :goto_0
    if-ge v7, v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    .line 42
    .line 43
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->f:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->g:Ljava/util/List;

    .line 54
    .line 55
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 56
    .line 57
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 61
    .line 62
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->p:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->p(Ljava/lang/Throwable;)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 81
    .line 82
    invoke-interface {v2, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object v6

    .line 86
    :cond_2
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->l:Landroidx/compose/runtime/Recomposer$State;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->d:Lkotlinx/coroutines/Job;

    .line 96
    .line 97
    if-nez v1, :cond_6

    .line 98
    .line 99
    new-instance v1, Landroidx/collection/MutableScatterSet;

    .line 100
    .line 101
    invoke-direct {v1}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->z()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->B()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->l:Landroidx/compose/runtime/Recomposer$State;

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    :goto_1
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->m:Landroidx/compose/runtime/Recomposer$State;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    iget v1, v5, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->h:Landroidx/collection/MutableScatterSet;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->c()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_9

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_9

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->z()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer;->B()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_9

    .line 164
    .line 165
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    .line 166
    .line 167
    invoke-virtual {v1}, Landroidx/collection/ScatterMap;->g()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_8
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->n:Landroidx/compose/runtime/Recomposer$State;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    :goto_2
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->o:Landroidx/compose/runtime/Recomposer$State;

    .line 178
    .line 179
    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    sget-object v0, Landroidx/compose/runtime/Recomposer$State;->o:Landroidx/compose/runtime/Recomposer$State;

    .line 183
    .line 184
    if-ne v1, v0, :cond_a

    .line 185
    .line 186
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 187
    .line 188
    iput-object v6, p0, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_a
    return-object v6
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->a:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->k:Landroidx/compose/runtime/internal/AwaiterQueue;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->c:Landroidx/compose/runtime/internal/AtomicInt;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const v0, 0x7ffffff

    .line 16
    .line 17
    .line 18
    and-int/2addr p0, v0

    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method
