.class public final Landroidx/datastore/core/DataStoreImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/datastore/core/DataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/DataStoreImpl$InitDataStore;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/DataStore<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/datastore/core/FileStorage;

.field public final b:Landroidx/datastore/core/CorruptionHandler;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lkotlinx/coroutines/flow/Flow;

.field public final e:Lkotlinx/coroutines/sync/MutexImpl;

.field public f:I

.field public g:Lkotlinx/coroutines/Job;

.field public final h:Landroidx/datastore/core/DataStoreInMemoryCache;

.field public final i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Landroidx/datastore/core/SimpleActor;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/FileStorage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->a:Landroidx/datastore/core/FileStorage;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl;->b:Landroidx/datastore/core/CorruptionHandler;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/datastore/core/DataStoreImpl;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$data$1;

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    invoke-direct {p1, p0, p3}, Landroidx/datastore/core/DataStoreImpl$data$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->d:Lkotlinx/coroutines/flow/Flow;

    .line 21
    .line 22
    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 23
    .line 24
    invoke-direct {p1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 28
    .line 29
    new-instance p1, Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 30
    .line 31
    invoke-direct {p1}, Landroidx/datastore/core/DataStoreInMemoryCache;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 35
    .line 36
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 37
    .line 38
    invoke-direct {p1, p0, p2}, Landroidx/datastore/core/DataStoreImpl$InitDataStore;-><init>(Landroidx/datastore/core/DataStoreImpl;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 42
    .line 43
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$storageConnectionDelegate$1;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Landroidx/datastore/core/DataStoreImpl$storageConnectionDelegate$1;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->j:Lkotlin/Lazy;

    .line 53
    .line 54
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$coordinator$2;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Landroidx/datastore/core/DataStoreImpl$coordinator$2;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->k:Lkotlin/Lazy;

    .line 64
    .line 65
    new-instance p1, Landroidx/datastore/core/SimpleActor;

    .line 66
    .line 67
    new-instance p2, Landroidx/datastore/core/DataStoreImpl$writeActor$1;

    .line 68
    .line 69
    invoke-direct {p2, p0}, Landroidx/datastore/core/DataStoreImpl$writeActor$1;-><init>(Landroidx/datastore/core/DataStoreImpl;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$writeActor$3;

    .line 73
    .line 74
    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/DataStoreImpl$writeActor$3;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p2, v0, p4}, Landroidx/datastore/core/SimpleActor;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->l:Landroidx/datastore/core/SimpleActor;

    .line 81
    .line 82
    return-void
.end method

.method public static final a(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->q:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object p1, p0

    .line 45
    move-object p0, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 57
    .line 58
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 59
    .line 60
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 61
    .line 62
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$decrementCollector$1;->q:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    iput v0, p0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 76
    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->g:Lkotlinx/coroutines/Job;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    check-cast v0, Lkotlinx/coroutines/JobSupport;

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/JobSupport;->n(Ljava/util/concurrent/CancellationException;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iput-object v4, p0, Landroidx/datastore/core/DataStoreImpl;->g:Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :goto_2
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0

    .line 99
    :goto_3
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public static final b(Landroidx/datastore/core/DataStoreImpl;Landroidx/datastore/core/Message$Update;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->r:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->r:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v6, :cond_1

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-ne v2, v4, :cond_2

    .line 42
    .line 43
    :cond_1
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->m:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v3

    .line 61
    :cond_3
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->o:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    .line 64
    .line 65
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->n:Landroidx/datastore/core/DataStoreImpl;

    .line 66
    .line 67
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->m:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Landroidx/datastore/core/Message$Update;

    .line 70
    .line 71
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    move-object p2, p0

    .line 75
    move-object p0, p1

    .line 76
    move-object p1, v2

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p1, Landroidx/datastore/core/Message$Update;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 82
    .line 83
    :try_start_2
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/datastore/core/DataStoreInMemoryCache;->a()Landroidx/datastore/core/State;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    instance-of v7, v2, Landroidx/datastore/core/Data;

    .line 90
    .line 91
    if-eqz v7, :cond_6

    .line 92
    .line 93
    iget-object v2, p1, Landroidx/datastore/core/Message$Update;->a:Lkotlin/jvm/functions/Function2;

    .line 94
    .line 95
    iget-object p1, p1, Landroidx/datastore/core/Message$Update;->d:Lkotlin/coroutines/CoroutineContext;

    .line 96
    .line 97
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->m:Ljava/lang/Object;

    .line 98
    .line 99
    iput v6, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    .line 101
    :try_start_3
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    new-instance v5, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;

    .line 106
    .line 107
    invoke-direct {v5, p0, p1, v2, v3}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 108
    .line 109
    .line 110
    check-cast v4, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 111
    .line 112
    invoke-virtual {v4, v5, v0}, Landroidx/datastore/core/SingleProcessCoordinator;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    if-ne p0, v1, :cond_5

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_5
    move-object v8, p2

    .line 120
    move-object p2, p0

    .line 121
    move-object p0, v8

    .line 122
    goto :goto_7

    .line 123
    :goto_1
    move-object p1, p0

    .line 124
    goto :goto_2

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    goto :goto_1

    .line 127
    :goto_2
    move-object p0, p2

    .line 128
    goto :goto_6

    .line 129
    :catchall_2
    move-exception p1

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    :try_start_4
    instance-of v7, v2, Landroidx/datastore/core/ReadException;

    .line 132
    .line 133
    if-eqz v7, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    instance-of v6, v2, Landroidx/datastore/core/UnInitialized;

    .line 137
    .line 138
    :goto_3
    if-eqz v6, :cond_a

    .line 139
    .line 140
    iget-object v6, p1, Landroidx/datastore/core/Message$Update;->c:Landroidx/datastore/core/State;

    .line 141
    .line 142
    if-ne v2, v6, :cond_9

    .line 143
    .line 144
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->m:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->n:Landroidx/datastore/core/DataStoreImpl;

    .line 147
    .line 148
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->o:Ljava/lang/Object;

    .line 149
    .line 150
    iput v5, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->r:I

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroidx/datastore/core/DataStoreImpl;->i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-ne v2, v1, :cond_8

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_8
    :goto_4
    iget-object v2, p1, Landroidx/datastore/core/Message$Update;->a:Lkotlin/jvm/functions/Function2;

    .line 160
    .line 161
    iget-object p1, p1, Landroidx/datastore/core/Message$Update;->d:Lkotlin/coroutines/CoroutineContext;

    .line 162
    .line 163
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->m:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v3, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->n:Landroidx/datastore/core/DataStoreImpl;

    .line 166
    .line 167
    iput-object v3, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->o:Ljava/lang/Object;

    .line 168
    .line 169
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$handleUpdate$1;->r:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 170
    .line 171
    :try_start_5
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    new-instance v5, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;

    .line 176
    .line 177
    invoke-direct {v5, p0, p1, v2, v3}, Landroidx/datastore/core/DataStoreImpl$transformAndWrite$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 178
    .line 179
    .line 180
    check-cast v4, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 181
    .line 182
    invoke-virtual {v4, v5, v0}, Landroidx/datastore/core/SingleProcessCoordinator;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 186
    if-ne p0, v1, :cond_5

    .line 187
    .line 188
    :goto_5
    return-object v1

    .line 189
    :catchall_3
    move-exception p0

    .line 190
    goto :goto_1

    .line 191
    :cond_9
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    check-cast v2, Landroidx/datastore/core/ReadException;

    .line 195
    .line 196
    iget-object p0, v2, Landroidx/datastore/core/ReadException;->b:Ljava/lang/Throwable;

    .line 197
    .line 198
    throw p0

    .line 199
    :cond_a
    instance-of p0, v2, Landroidx/datastore/core/Final;

    .line 200
    .line 201
    if-eqz p0, :cond_b

    .line 202
    .line 203
    check-cast v2, Landroidx/datastore/core/Final;

    .line 204
    .line 205
    iget-object p0, v2, Landroidx/datastore/core/Final;->b:Ljava/lang/Throwable;

    .line 206
    .line 207
    throw p0

    .line 208
    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 209
    .line 210
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 211
    .line 212
    .line 213
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 214
    :goto_6
    new-instance p2, Lkotlin/Result$Failure;

    .line 215
    .line 216
    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :goto_7
    invoke-static {p0, p2}, Lkotlinx/coroutines/CompletableDeferredKt;->b(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 223
    .line 224
    return-object p0
.end method

.method public static final c(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->q:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object p1, p0

    .line 45
    move-object p0, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl;->e:Lkotlinx/coroutines/sync/MutexImpl;

    .line 57
    .line 58
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 59
    .line 60
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 61
    .line 62
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$incrementCollector$1;->q:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 72
    .line 73
    add-int/2addr v0, v3

    .line 74
    iput v0, p0, Landroidx/datastore/core/DataStoreImpl;->f:I

    .line 75
    .line 76
    if-ne v0, v3, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 79
    .line 80
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$incrementCollector$2$1;

    .line 81
    .line 82
    invoke-direct {v1, p0, v4}, Landroidx/datastore/core/DataStoreImpl$incrementCollector$2$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    invoke-static {v0, v4, v4, v1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->g:Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    :goto_2
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p0

    .line 101
    :goto_3
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public static final d(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->r:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->r:I

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v5, :cond_3

    .line 38
    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_2
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->o:Z

    .line 63
    .line 64
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->n:Landroidx/datastore/core/State;

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/datastore/core/DataStoreInMemoryCache;->a()Landroidx/datastore/core/State;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    instance-of v2, p2, Landroidx/datastore/core/UnInitialized;

    .line 82
    .line 83
    if-nez v2, :cond_c

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 90
    .line 91
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->n:Landroidx/datastore/core/State;

    .line 92
    .line 93
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->o:Z

    .line 94
    .line 95
    iput v5, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->r:I

    .line 96
    .line 97
    check-cast v2, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroidx/datastore/core/SingleProcessCoordinator;->a()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-ne v2, v1, :cond_5

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    move-object v8, v2

    .line 107
    move-object v2, p0

    .line 108
    move-object p0, p2

    .line 109
    move-object p2, v8

    .line 110
    :goto_1
    check-cast p2, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    instance-of v5, p0, Landroidx/datastore/core/Data;

    .line 117
    .line 118
    if-eqz v5, :cond_6

    .line 119
    .line 120
    iget v7, p0, Landroidx/datastore/core/State;->a:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    const/4 v7, -0x1

    .line 124
    :goto_2
    if-eqz v5, :cond_7

    .line 125
    .line 126
    if-ne p2, v7, :cond_7

    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_7
    if-eqz p1, :cond_9

    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$3;

    .line 136
    .line 137
    invoke-direct {p1, v2, v6}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$3;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 138
    .line 139
    .line 140
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 141
    .line 142
    iput-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->n:Landroidx/datastore/core/State;

    .line 143
    .line 144
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->r:I

    .line 145
    .line 146
    check-cast p0, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 147
    .line 148
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/core/SingleProcessCoordinator;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-ne p2, v1, :cond_8

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_8
    move-object p0, v2

    .line 156
    :goto_3
    check-cast p2, Lkotlin/Pair;

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_9
    invoke-virtual {v2}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    new-instance p1, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$4;

    .line 164
    .line 165
    invoke-direct {p1, v2, v7, v6}, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$4;-><init>(Landroidx/datastore/core/DataStoreImpl;ILkotlin/coroutines/Continuation;)V

    .line 166
    .line 167
    .line 168
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 169
    .line 170
    iput-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->n:Landroidx/datastore/core/State;

    .line 171
    .line 172
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$readDataAndUpdateCache$1;->r:I

    .line 173
    .line 174
    check-cast p0, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 175
    .line 176
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/core/SingleProcessCoordinator;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    if-ne p2, v1, :cond_a

    .line 181
    .line 182
    :goto_4
    return-object v1

    .line 183
    :cond_a
    move-object p0, v2

    .line 184
    :goto_5
    check-cast p2, Lkotlin/Pair;

    .line 185
    .line 186
    :goto_6
    iget-object p1, p2, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Landroidx/datastore/core/State;

    .line 189
    .line 190
    iget-object p2, p2, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p2, Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-eqz p2, :cond_b

    .line 199
    .line 200
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreInMemoryCache;->b(Landroidx/datastore/core/State;)V

    .line 203
    .line 204
    .line 205
    :cond_b
    return-object p1

    .line 206
    :cond_c
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 207
    .line 208
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object v6
.end method

.method public static final e(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->s:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v4

    .line 42
    :pswitch_0
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->o:Ljava/io/Serializable;

    .line 43
    .line 44
    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 45
    .line 46
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->n:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroidx/datastore/core/CorruptionException;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_c

    .line 61
    .line 62
    :pswitch_1
    iget-boolean p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 63
    .line 64
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->o:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    iget-object v5, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->n:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v5, Landroidx/datastore/core/CorruptionException;

    .line 73
    .line 74
    iget-object v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Landroidx/datastore/core/DataStoreImpl;

    .line 77
    .line 78
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :pswitch_2
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 84
    .line 85
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Landroidx/datastore/core/DataStoreImpl;

    .line 88
    .line 89
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :catch_0
    move-exception p2

    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :pswitch_3
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 98
    .line 99
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroidx/datastore/core/DataStoreImpl;

    .line 102
    .line 103
    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :pswitch_4
    iget p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->r:I

    .line 109
    .line 110
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 111
    .line 112
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->n:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v5, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v5, Landroidx/datastore/core/DataStoreImpl;

    .line 117
    .line 118
    :try_start_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_3 .. :try_end_3} :catch_1

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception p2

    .line 123
    move-object p0, v5

    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :pswitch_5
    iget-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 127
    .line 128
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Landroidx/datastore/core/DataStoreImpl;

    .line 131
    .line 132
    :try_start_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    :try_start_5
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 142
    .line 143
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 144
    .line 145
    const/4 p2, 0x1

    .line 146
    iput p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Landroidx/datastore/core/DataStoreImpl;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    if-ne p2, v1, :cond_1

    .line 153
    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    move v2, v3

    .line 164
    :goto_2
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->n:Ljava/lang/Object;

    .line 171
    .line 172
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 173
    .line 174
    iput v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->r:I

    .line 175
    .line 176
    const/4 v6, 0x2

    .line 177
    iput v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 178
    .line 179
    check-cast v5, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 180
    .line 181
    invoke-virtual {v5}, Landroidx/datastore/core/SingleProcessCoordinator;->a()Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v5
    :try_end_5
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_5 .. :try_end_5} :catch_0

    .line 185
    if-ne v5, v1, :cond_3

    .line 186
    .line 187
    goto/16 :goto_a

    .line 188
    .line 189
    :cond_3
    move-object v8, v5

    .line 190
    move-object v5, p0

    .line 191
    move p0, v2

    .line 192
    move-object v2, p2

    .line 193
    move-object p2, v8

    .line 194
    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    new-instance v6, Landroidx/datastore/core/Data;

    .line 201
    .line 202
    invoke-direct {v6, p0, p2, v2}, Landroidx/datastore/core/Data;-><init>(IILjava/lang/Object;)V
    :try_end_6
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_6 .. :try_end_6} :catch_1

    .line 203
    .line 204
    .line 205
    return-object v6

    .line 206
    :cond_4
    :try_start_7
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 211
    .line 212
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 213
    .line 214
    const/4 v2, 0x3

    .line 215
    iput v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 216
    .line 217
    check-cast p2, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 218
    .line 219
    invoke-virtual {p2}, Landroidx/datastore/core/SingleProcessCoordinator;->a()Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    if-ne p2, v1, :cond_5

    .line 224
    .line 225
    goto/16 :goto_a

    .line 226
    .line 227
    :cond_5
    :goto_4
    check-cast p2, Ljava/lang/Number;

    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v5, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$2;

    .line 238
    .line 239
    invoke-direct {v5, p0, p2, v4}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$2;-><init>(Landroidx/datastore/core/DataStoreImpl;ILkotlin/coroutines/Continuation;)V

    .line 240
    .line 241
    .line 242
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 243
    .line 244
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 245
    .line 246
    const/4 p2, 0x4

    .line 247
    iput p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 248
    .line 249
    check-cast v2, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 250
    .line 251
    invoke-virtual {v2, v5, v0}, Landroidx/datastore/core/SingleProcessCoordinator;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    if-ne p2, v1, :cond_6

    .line 256
    .line 257
    goto/16 :goto_a

    .line 258
    .line 259
    :cond_6
    :goto_5
    check-cast p2, Landroidx/datastore/core/Data;
    :try_end_7
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_7 .. :try_end_7} :catch_0

    .line 260
    .line 261
    return-object p2

    .line 262
    :goto_6
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 263
    .line 264
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v5, p0, Landroidx/datastore/core/DataStoreImpl;->b:Landroidx/datastore/core/CorruptionHandler;

    .line 268
    .line 269
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->n:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->o:Ljava/io/Serializable;

    .line 274
    .line 275
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 276
    .line 277
    iput-boolean p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->q:Z

    .line 278
    .line 279
    const/4 v6, 0x5

    .line 280
    iput v6, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 281
    .line 282
    invoke-interface {v5, p2}, Landroidx/datastore/core/CorruptionHandler;->a(Landroidx/datastore/core/CorruptionException;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    if-ne v5, v1, :cond_7

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :cond_7
    move-object v6, v5

    .line 290
    move-object v5, p2

    .line 291
    move-object p2, v6

    .line 292
    move-object v6, p0

    .line 293
    move p0, p1

    .line 294
    move-object p1, v2

    .line 295
    :goto_7
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 296
    .line 297
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 298
    .line 299
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 300
    .line 301
    .line 302
    :try_start_8
    new-instance p2, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;

    .line 303
    .line 304
    invoke-direct {p2, v2, v6, p1, v4}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    .line 305
    .line 306
    .line 307
    iput-object v5, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->m:Ljava/lang/Object;

    .line 308
    .line 309
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->n:Ljava/lang/Object;

    .line 310
    .line 311
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->o:Ljava/io/Serializable;

    .line 312
    .line 313
    iput-object v4, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->p:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 314
    .line 315
    const/4 v7, 0x6

    .line 316
    iput v7, v0, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$1;->u:I

    .line 317
    .line 318
    if-eqz p0, :cond_8

    .line 319
    .line 320
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2, v0}, Landroidx/datastore/core/DataStoreImpl$readDataOrHandleCorruption$3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    goto :goto_8

    .line 328
    :cond_8
    invoke-virtual {v6}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    new-instance v6, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;

    .line 333
    .line 334
    invoke-direct {v6, v4, p2}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 335
    .line 336
    .line 337
    check-cast p0, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 338
    .line 339
    invoke-virtual {p0, v6, v0}, Landroidx/datastore/core/SingleProcessCoordinator;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 343
    :goto_8
    if-ne p0, v1, :cond_9

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_9
    move-object p0, p1

    .line 347
    move-object p1, v2

    .line 348
    :goto_9
    new-instance v1, Landroidx/datastore/core/Data;

    .line 349
    .line 350
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 351
    .line 352
    if-eqz p1, :cond_a

    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    :cond_a
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 359
    .line 360
    invoke-direct {v1, v3, p0, p1}, Landroidx/datastore/core/Data;-><init>(IILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    :goto_a
    return-object v1

    .line 364
    :goto_b
    move-object v0, v5

    .line 365
    goto :goto_c

    .line 366
    :catchall_1
    move-exception p0

    .line 367
    goto :goto_b

    .line 368
    :goto_c
    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 369
    .line 370
    .line 371
    throw v0

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final f()Landroidx/datastore/core/InterProcessCoordinator;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/datastore/core/InterProcessCoordinator;

    .line 8
    .line 9
    return-object p0
.end method

.method public final g()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->d:Lkotlinx/coroutines/flow/Flow;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;->j:Landroidx/datastore/core/UpdatingDataContextElement$Companion$Key;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/datastore/core/UpdatingDataContextElement;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/datastore/core/UpdatingDataContextElement;->a(Landroidx/datastore/core/DataStoreImpl;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroidx/datastore/core/UpdatingDataContextElement;

    .line 20
    .line 21
    invoke-direct {v1, v0, p0}, Landroidx/datastore/core/UpdatingDataContextElement;-><init>(Landroidx/datastore/core/UpdatingDataContextElement;Landroidx/datastore/core/DataStoreImpl;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$updateData$2;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, p0, p1, v2}, Landroidx/datastore/core/DataStoreImpl$updateData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0, p2}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->q:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->n:I

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_4

    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_2
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/datastore/core/DataStoreImpl;->f()Landroidx/datastore/core/InterProcessCoordinator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 70
    .line 71
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->q:I

    .line 72
    .line 73
    check-cast p1, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessCoordinator;->a()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :try_start_1
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl;->i:Landroidx/datastore/core/DataStoreImpl$InitDataStore;

    .line 89
    .line 90
    iput-object p0, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->m:Landroidx/datastore/core/DataStoreImpl;

    .line 91
    .line 92
    iput p1, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->n:I

    .line 93
    .line 94
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;->q:I

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Landroidx/datastore/core/RunOnce;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    if-ne p0, v1, :cond_5

    .line 101
    .line 102
    :goto_2
    return-object v1

    .line 103
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object v5, v0

    .line 108
    move-object v0, p0

    .line 109
    move p0, p1

    .line 110
    move-object p1, v5

    .line 111
    :goto_4
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl;->h:Landroidx/datastore/core/DataStoreInMemoryCache;

    .line 112
    .line 113
    new-instance v1, Landroidx/datastore/core/ReadException;

    .line 114
    .line 115
    invoke-direct {v1, p1, p0}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroidx/datastore/core/DataStoreInMemoryCache;->b(Landroidx/datastore/core/State;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/datastore/core/StorageConnection;

    .line 8
    .line 9
    new-instance v0, Landroidx/datastore/core/StorageConnectionKt$readData$2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v0, v2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    check-cast p0, Landroidx/datastore/core/FileStorageConnection;

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/core/FileStorageConnection;->a(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final k(Ljava/lang/Object;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->p:I

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
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/datastore/core/DataStoreImpl$writeData$1;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->m:Lkotlin/jvm/internal/Ref$IntRef;

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

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
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, Landroidx/datastore/core/DataStoreImpl;->j:Lkotlin/Lazy;

    .line 58
    .line 59
    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Landroidx/datastore/core/StorageConnection;

    .line 64
    .line 65
    new-instance v4, Landroidx/datastore/core/DataStoreImpl$writeData$2;

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    move-object v6, p0

    .line 69
    move-object v7, p1

    .line 70
    move v8, p2

    .line 71
    invoke-direct/range {v4 .. v9}, Landroidx/datastore/core/DataStoreImpl$writeData$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/datastore/core/DataStoreImpl;Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)V

    .line 72
    .line 73
    .line 74
    iput-object v5, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->m:Lkotlin/jvm/internal/Ref$IntRef;

    .line 75
    .line 76
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$writeData$1;->p:I

    .line 77
    .line 78
    check-cast p3, Landroidx/datastore/core/FileStorageConnection;

    .line 79
    .line 80
    invoke-virtual {p3, v4, v0}, Landroidx/datastore/core/FileStorageConnection;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-ne p0, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    move-object p0, v5

    .line 88
    :goto_1
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 89
    .line 90
    new-instance p1, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 93
    .line 94
    .line 95
    return-object p1
.end method
