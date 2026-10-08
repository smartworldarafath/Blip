.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    }
.end annotation


# static fields
.field public static final synthetic q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final t:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field private volatile synthetic _isTerminated$volatile:I

.field private volatile synthetic controlState$volatile:J

.field public final j:I

.field public final k:I

.field public final l:J

.field public final m:Ljava/lang/String;

.field public final n:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final o:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

.field private volatile synthetic parkedWorkersStack$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "parkedWorkersStack$volatile"

    .line 2
    .line 3
    const-class v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    const-string v0, "controlState$volatile"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    const-string v0, "_isTerminated$volatile"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    .line 27
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 28
    .line 29
    const-string v1, "NOT_IN_STACK"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    .line 5
    .line 6
    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:I

    .line 7
    .line 8
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:J

    .line 9
    .line 10
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p5, 0x1

    .line 13
    if-lt p1, p5, :cond_3

    .line 14
    .line 15
    const-string p5, "Max pool size "

    .line 16
    .line 17
    if-lt p2, p1, :cond_2

    .line 18
    .line 19
    const v0, 0x1ffffe

    .line 20
    .line 21
    .line 22
    if-gt p2, v0, :cond_1

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long p2, p3, v0

    .line 27
    .line 28
    if-lez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 31
    .line 32
    invoke-direct {p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 36
    .line 37
    new-instance p2, Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 38
    .line 39
    invoke-direct {p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 43
    .line 44
    new-instance p2, Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 45
    .line 46
    add-int/lit8 p3, p1, 0x1

    .line 47
    .line 48
    mul-int/lit8 p3, p3, 0x2

    .line 49
    .line 50
    invoke-direct {p2, p3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 54
    .line 55
    int-to-long p1, p1

    .line 56
    const/16 p3, 0x2a

    .line 57
    .line 58
    shl-long/2addr p1, p3

    .line 59
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$volatile:J

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    const-string p0, "Idle worker keep alive time "

    .line 63
    .line 64
    const-string p1, " must be positive"

    .line 65
    .line 66
    invoke-static {p0, p3, p4, p1}, Lk8;->k(Ljava/lang/String;JLjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    throw p0

    .line 71
    :cond_1
    const-string p0, " should not exceed maximal supported number of threads 2097150"

    .line 72
    .line 73
    invoke-static {p5, p2, p0}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    throw p0

    .line 82
    :cond_2
    const-string p0, " should be greater than or equals to core pool size "

    .line 83
    .line 84
    invoke-static {p2, p1, p5, p0}, Lq;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    throw p0

    .line 93
    :cond_3
    const-string p0, "Core pool size "

    .line 94
    .line 95
    const-string p2, " should be at least 1"

    .line 96
    .line 97
    invoke-static {p0, p1, p2}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lfe;->l(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    throw p0
.end method

.method public static synthetic q(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;I)V
    .locals 1

    .line 1
    and-int/lit8 p2, p2, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move p2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x1

    .line 9
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n(Ljava/lang/Runnable;ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 11

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    const-wide/32 v0, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v3

    .line 11
    long-to-int v0, v0

    .line 12
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 19
    .line 20
    const/4 v7, -0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    move-object v3, p0

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    const-wide/32 v1, 0x200000

    .line 28
    .line 29
    .line 30
    add-long/2addr v1, v3

    .line 31
    const-wide/32 v5, -0x200000

    .line 32
    .line 33
    .line 34
    and-long/2addr v1, v5

    .line 35
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :goto_1
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    .line 40
    .line 41
    if-ne v5, v9, :cond_2

    .line 42
    .line 43
    move v6, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    if-nez v5, :cond_3

    .line 46
    .line 47
    move v6, v8

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 50
    .line 51
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_6

    .line 56
    .line 57
    :goto_2
    if-ltz v6, :cond_0

    .line 58
    .line 59
    int-to-long v5, v6

    .line 60
    or-long/2addr v5, v1

    .line 61
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 62
    .line 63
    move-object v2, p0

    .line 64
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    move-object v3, v2

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_3
    if-nez v0, :cond_4

    .line 75
    .line 76
    return v8

    .line 77
    :cond_4
    sget-object p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 78
    .line 79
    invoke-virtual {p0, v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    return p0

    .line 90
    :cond_5
    move-object p0, v3

    .line 91
    goto :goto_0

    .line 92
    :cond_6
    move-wide v9, v3

    .line 93
    move-object v3, p0

    .line 94
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-wide v3, v9

    .line 99
    goto :goto_1
.end method

.method public final close()V
    .locals 8

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, v3

    .line 25
    :goto_0
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 28
    .line 29
    if-eq v1, p0, :cond_3

    .line 30
    .line 31
    :cond_2
    move-object v0, v3

    .line 32
    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    const-wide/32 v6, 0x1fffff

    .line 42
    .line 43
    .line 44
    and-long/2addr v4, v6

    .line 45
    long-to-int v4, v4

    .line 46
    monitor-exit v1

    .line 47
    if-gt v2, v4, :cond_8

    .line 48
    .line 49
    move v1, v2

    .line 50
    :goto_1
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 51
    .line 52
    invoke-virtual {v5, v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 60
    .line 61
    if-eq v5, v0, :cond_7

    .line 62
    .line 63
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    sget-object v7, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 68
    .line 69
    if-eq v6, v7, :cond_4

    .line 70
    .line 71
    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v6, 0x2710

    .line 75
    .line 76
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-object v5, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 81
    .line 82
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v7, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    .line 89
    invoke-virtual {v7, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Lkotlinx/coroutines/scheduling/Task;

    .line 94
    .line 95
    if-eqz v7, :cond_5

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->a(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_3
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-nez v7, :cond_6

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    invoke-virtual {v6, v7}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->a(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    :goto_4
    if-eq v1, v4, :cond_8

    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 117
    .line 118
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->b()V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 122
    .line 123
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->b()V

    .line 124
    .line 125
    .line 126
    :goto_5
    if-eqz v0, :cond_9

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-nez v1, :cond_b

    .line 133
    .line 134
    :cond_9
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 135
    .line 136
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 141
    .line 142
    if-nez v1, :cond_b

    .line 143
    .line 144
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 145
    .line 146
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 151
    .line 152
    if-nez v1, :cond_b

    .line 153
    .line 154
    if-eqz v0, :cond_a

    .line 155
    .line 156
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->n:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 159
    .line 160
    .line 161
    :cond_a
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 162
    .line 163
    const-wide/16 v1, 0x0

    .line 164
    .line 165
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 169
    .line 170
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_b
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catchall_0
    move-exception v1

    .line 179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-interface {v4, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    monitor-exit v1

    .line 193
    throw p0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h()I
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_1
    :try_start_1
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    const-wide/32 v6, 0x1fffff

    .line 29
    .line 30
    .line 31
    and-long v8, v4, v6

    .line 32
    .line 33
    long-to-int v8, v8

    .line 34
    const-wide v9, 0x3ffffe00000L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v4, v9

    .line 40
    const/16 v9, 0x15

    .line 41
    .line 42
    shr-long/2addr v4, v9

    .line 43
    long-to-int v4, v4

    .line 44
    sub-int v4, v8, v4

    .line 45
    .line 46
    if-gez v4, :cond_2

    .line 47
    .line 48
    move v4, v3

    .line 49
    :cond_2
    iget v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    if-lt v4, v5, :cond_3

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return v3

    .line 55
    :cond_3
    :try_start_2
    iget v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    if-lt v8, v5, :cond_4

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return v3

    .line 61
    :cond_4
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    and-long/2addr v8, v6

    .line 66
    long-to-int v3, v8

    .line 67
    add-int/2addr v3, v2

    .line 68
    if-lez v3, :cond_6

    .line 69
    .line 70
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_6

    .line 77
    .line 78
    new-instance v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 79
    .line 80
    invoke-direct {v5, p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    .line 81
    .line 82
    .line 83
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 84
    .line 85
    invoke-virtual {v8, v3, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    and-long/2addr v6, v8

    .line 93
    long-to-int p0, v6

    .line 94
    if-ne v3, p0, :cond_5

    .line 95
    .line 96
    add-int/2addr v4, v2

    .line 97
    monitor-exit v0

    .line 98
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 99
    .line 100
    .line 101
    return v4

    .line 102
    :cond_5
    :try_start_4
    const-string p0, "Failed requirement."

    .line 103
    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const-string p0, "Failed requirement."

    .line 113
    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :goto_1
    monitor-exit v0

    .line 121
    throw p0
.end method

.method public final n(Ljava/lang/Runnable;ZZ)V
    .locals 7

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->f:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/Task;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 15
    .line 16
    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/Task;->j:J

    .line 17
    .line 18
    iput-boolean p2, p1, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/TaskImpl;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/TaskImpl;-><init>(Ljava/lang/Runnable;JZ)V

    .line 24
    .line 25
    .line 26
    move-object p1, v2

    .line 27
    :goto_0
    iget-boolean p2, p1, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 28
    .line 29
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    const-wide/32 v1, 0x200000

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    instance-of v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v3, v5

    .line 56
    :goto_2
    if-eqz v3, :cond_3

    .line 57
    .line 58
    iget-object v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 59
    .line 60
    if-eq v4, p0, :cond_4

    .line 61
    .line 62
    :cond_3
    move-object v3, v5

    .line 63
    :cond_4
    if-nez v3, :cond_5

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    iget-object v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 67
    .line 68
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->n:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 69
    .line 70
    if-ne v4, v6, :cond_6

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    iget-boolean v6, p1, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 74
    .line 75
    if-nez v6, :cond_7

    .line 76
    .line 77
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 78
    .line 79
    if-ne v4, v6, :cond_7

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_7
    const/4 v4, 0x1

    .line 83
    iput-boolean v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->p:Z

    .line 84
    .line 85
    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 86
    .line 87
    if-eqz p3, :cond_8

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_3

    .line 94
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget-object p3, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 98
    .line 99
    invoke-virtual {p3, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 104
    .line 105
    if-nez p1, :cond_9

    .line 106
    .line 107
    move-object p1, v5

    .line 108
    goto :goto_3

    .line 109
    :cond_9
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_3
    if-eqz p1, :cond_c

    .line 114
    .line 115
    iget-boolean p3, p1, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 116
    .line 117
    if-eqz p3, :cond_a

    .line 118
    .line 119
    iget-object p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 120
    .line 121
    invoke-virtual {p3, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->a(Ljava/lang/Runnable;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    goto :goto_4

    .line 126
    :cond_a
    iget-object p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 127
    .line 128
    invoke-virtual {p3, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->a(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    :goto_4
    if-eqz p1, :cond_b

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_b
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/lang/String;

    .line 143
    .line 144
    const-string p3, " was terminated"

    .line 145
    .line 146
    invoke-static {p2, p0, p3}, Lq;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_c
    :goto_5
    if-eqz p2, :cond_f

    .line 155
    .line 156
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_d

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_d
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->w(J)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_e

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_e
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A()Z

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_f
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_10

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 182
    .line 183
    .line 184
    move-result-wide p1

    .line 185
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->w(J)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_11

    .line 190
    .line 191
    :goto_6
    return-void

    .line 192
    :cond_11
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A()Z

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 7
    .line 8
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->a()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    move v5, v3

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    move v9, v4

    .line 19
    :goto_0
    if-ge v9, v2, :cond_8

    .line 20
    .line 21
    invoke-virtual {v1, v9}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v10

    .line 25
    check-cast v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 26
    .line 27
    if-nez v10, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    iget-object v11, v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 32
    .line 33
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object v12, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    if-eqz v12, :cond_1

    .line 43
    .line 44
    sget-object v12, Lkotlinx/coroutines/scheduling/WorkQueue;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 45
    .line 46
    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    sget-object v13, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 51
    .line 52
    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    sub-int/2addr v12, v11

    .line 57
    add-int/2addr v12, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    sget-object v12, Lkotlinx/coroutines/scheduling/WorkQueue;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 60
    .line 61
    invoke-virtual {v12, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    sget-object v13, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 66
    .line 67
    invoke-virtual {v13, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    sub-int/2addr v12, v11

    .line 72
    :goto_1
    iget-object v10, v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 73
    .line 74
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_6

    .line 79
    .line 80
    if-eq v10, v4, :cond_5

    .line 81
    .line 82
    const/4 v11, 0x2

    .line 83
    if-eq v10, v11, :cond_4

    .line 84
    .line 85
    const/4 v11, 0x3

    .line 86
    if-eq v10, v11, :cond_3

    .line 87
    .line 88
    const/4 v11, 0x4

    .line 89
    if-ne v10, v11, :cond_2

    .line 90
    .line 91
    add-int/lit8 v8, v8, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0

    .line 99
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 100
    .line 101
    if-lez v12, :cond_7

    .line 102
    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/16 v11, 0x64

    .line 112
    .line 113
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const/16 v11, 0x62

    .line 138
    .line 139
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const/16 v11, 0x63

    .line 161
    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_8
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    iget-object v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const/16 v9, 0x40

    .line 193
    .line 194
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v9, "[Pool Size {core = "

    .line 205
    .line 206
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    .line 210
    .line 211
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v10, ", max = "

    .line 215
    .line 216
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:I

    .line 220
    .line 221
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v10, "}, Worker States {CPU = "

    .line 225
    .line 226
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v3, ", blocking = "

    .line 233
    .line 234
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v3, ", parked = "

    .line 241
    .line 242
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v3, ", dormant = "

    .line 249
    .line 250
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, ", terminated = "

    .line 257
    .line 258
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v3, "}, running workers queues = "

    .line 265
    .line 266
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v0, ", global CPU queue size = "

    .line 273
    .line 274
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 278
    .line 279
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->c()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v0, ", global blocking queue size = "

    .line 287
    .line 288
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 292
    .line 293
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->c()I

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string p0, ", Control State {created workers= "

    .line 301
    .line 302
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-wide/32 v5, 0x1fffff

    .line 306
    .line 307
    .line 308
    and-long/2addr v5, v1

    .line 309
    long-to-int p0, v5

    .line 310
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string p0, ", blocking tasks = "

    .line 314
    .line 315
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-wide v5, 0x3ffffe00000L

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    and-long/2addr v5, v1

    .line 324
    const/16 p0, 0x15

    .line 325
    .line 326
    shr-long/2addr v5, p0

    .line 327
    long-to-int p0, v5

    .line 328
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string p0, ", CPUs acquired = "

    .line 332
    .line 333
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-wide v5, 0x7ffffc0000000000L

    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    and-long v0, v1, v5

    .line 342
    .line 343
    const/16 p0, 0x2a

    .line 344
    .line 345
    shr-long/2addr v0, p0

    .line 346
    long-to-int p0, v0

    .line 347
    sub-int/2addr v9, p0

    .line 348
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string p0, "}]"

    .line 352
    .line 353
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    return-object p0
.end method

.method public final v(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    const-wide/32 v0, 0x1fffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v3

    .line 11
    long-to-int v0, v0

    .line 12
    const-wide/32 v1, 0x200000

    .line 13
    .line 14
    .line 15
    add-long/2addr v1, v3

    .line 16
    const-wide/32 v5, -0x200000

    .line 17
    .line 18
    .line 19
    and-long/2addr v1, v5

    .line 20
    if-ne v0, p2, :cond_5

    .line 21
    .line 22
    if-nez p3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_1
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    .line 29
    .line 30
    if-ne v0, v5, :cond_1

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 39
    .line 40
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    move v0, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move v0, p3

    .line 54
    :cond_5
    :goto_2
    if-ltz v0, :cond_0

    .line 55
    .line 56
    int-to-long v5, v0

    .line 57
    or-long/2addr v5, v1

    .line 58
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 59
    .line 60
    move-object v2, p0

    .line 61
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_6

    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    move-object p0, v2

    .line 69
    goto :goto_0
.end method

.method public final w(J)Z
    .locals 3

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 2
    .line 3
    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0x3ffffe00000L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr p1, v1

    .line 12
    const/16 v1, 0x15

    .line 13
    .line 14
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    move v0, p1

    .line 21
    :cond_0
    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    .line 22
    .line 23
    if-ge v0, p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    if-le p2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h()I

    .line 35
    .line 36
    .line 37
    :cond_1
    if-lez v0, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return p1
.end method
