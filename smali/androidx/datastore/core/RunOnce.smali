.class public abstract Landroidx/datastore/core/RunOnce;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lkotlinx/coroutines/sync/MutexImpl;

.field public final b:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/datastore/core/RunOnce;->a:Lkotlinx/coroutines/sync/MutexImpl;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/CompletableDeferredKt;->a(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableDeferred;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Landroidx/datastore/core/RunOnce;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Landroidx/datastore/core/RunOnce$runIfNeeded$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->q:I

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
    iput v1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/RunOnce$runIfNeeded$1;-><init>(Landroidx/datastore/core/RunOnce;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->m:Landroidx/datastore/core/RunOnce;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_4

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v6

    .line 58
    :cond_2
    iget-object p0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 59
    .line 60
    iget-object v2, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->m:Landroidx/datastore/core/RunOnce;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object p1, p0

    .line 66
    move-object p0, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Landroidx/datastore/core/RunOnce;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 72
    .line 73
    check-cast p1, Lkotlinx/coroutines/JobSupport;

    .line 74
    .line 75
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->Q()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    return-object v5

    .line 82
    :cond_4
    iput-object p0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->m:Landroidx/datastore/core/RunOnce;

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/datastore/core/RunOnce;->a:Lkotlinx/coroutines/sync/MutexImpl;

    .line 85
    .line 86
    iput-object p1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 87
    .line 88
    iput v4, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->q:I

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-ne v2, v1, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroidx/datastore/core/RunOnce;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 98
    .line 99
    check-cast v2, Lkotlinx/coroutines/JobSupport;

    .line 100
    .line 101
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->Q()Z

    .line 102
    .line 103
    .line 104
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-object v5

    .line 111
    :cond_6
    :try_start_2
    iput-object p0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->m:Landroidx/datastore/core/RunOnce;

    .line 112
    .line 113
    iput-object p1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 114
    .line 115
    iput v3, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->q:I

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroidx/datastore/core/RunOnce;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    if-ne v0, v1, :cond_7

    .line 122
    .line 123
    :goto_2
    return-object v1

    .line 124
    :cond_7
    move-object v0, p0

    .line 125
    move-object p0, p1

    .line 126
    :goto_3
    :try_start_3
    iget-object p1, v0, Landroidx/datastore/core/RunOnce;->b:Lkotlinx/coroutines/CompletableDeferred;

    .line 127
    .line 128
    invoke-interface {p1, v5}, Lkotlinx/coroutines/CompletableDeferred;->E0(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .line 130
    .line 131
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v5

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    move-object v7, p1

    .line 137
    move-object p1, p0

    .line 138
    move-object p0, v7

    .line 139
    :goto_4
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    throw p1
.end method
