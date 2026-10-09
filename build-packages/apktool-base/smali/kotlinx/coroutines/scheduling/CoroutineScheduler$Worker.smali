.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation


# static fields
.field public static final synthetic r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field public final j:Lkotlinx/coroutines/scheduling/WorkQueue;

.field public final k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public m:J

.field public n:J

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public o:I

.field public p:Z

.field public final synthetic q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private volatile synthetic workerCtl$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 2
    .line 3
    const-string v1, "workerCtl$volatile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    .line 9
    .line 10
    const-class p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 20
    .line 21
    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 25
    .line 26
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->m:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 34
    .line 35
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 36
    .line 37
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    .line 38
    .line 39
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    long-to-int p1, v0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 p1, 0x2a

    .line 50
    .line 51
    :goto_0
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->o:I

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->j:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    .line 5
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x1

    .line 9
    iget-object v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    const-wide v1, 0x7ffffc0000000000L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v1, v4

    .line 27
    const/16 v6, 0x2a

    .line 28
    .line 29
    shr-long/2addr v1, v6

    .line 30
    long-to-int v1, v1

    .line 31
    if-nez v1, :cond_b

    .line 32
    .line 33
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 37
    .line 38
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-boolean v1, v0, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 48
    .line 49
    if-ne v1, v9, :cond_5

    .line 50
    .line 51
    :cond_3
    invoke-virtual {p1, v10, v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    move-object v8, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eq v1, v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 67
    .line 68
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :cond_6
    if-eq p1, v0, :cond_8

    .line 79
    .line 80
    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 81
    .line 82
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_7

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    invoke-virtual {v10, v0, v9}, Lkotlinx/coroutines/scheduling/WorkQueue;->c(IZ)Lkotlinx/coroutines/scheduling/Task;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    move-object v8, v1

    .line 98
    :cond_8
    :goto_2
    if-nez v8, :cond_a

    .line 99
    .line 100
    iget-object p1, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 101
    .line 102
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 107
    .line 108
    if-nez p1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p0, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i(I)Lkotlinx/coroutines/scheduling/Task;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_9
    return-object p1

    .line 116
    :cond_a
    return-object v8

    .line 117
    :cond_b
    const-wide v1, 0x40000000000L

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    sub-long v6, v4, v1

    .line 123
    .line 124
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 125
    .line 126
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->j:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 133
    .line 134
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 135
    .line 136
    :goto_3
    if-eqz p1, :cond_10

    .line 137
    .line 138
    iget p1, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    .line 139
    .line 140
    mul-int/lit8 p1, p1, 0x2

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_c

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_c
    const/4 v9, 0x0

    .line 150
    :goto_4
    if-eqz v9, :cond_d

    .line 151
    .line 152
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Lkotlinx/coroutines/scheduling/Task;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_d

    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    sget-object p1, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 163
    .line 164
    invoke-virtual {p1, v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    .line 169
    .line 170
    if-nez p1, :cond_e

    .line 171
    .line 172
    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_e
    if-eqz p1, :cond_f

    .line 177
    .line 178
    return-object p1

    .line 179
    :cond_f
    if-nez v9, :cond_11

    .line 180
    .line 181
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Lkotlinx/coroutines/scheduling/Task;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_11

    .line 186
    .line 187
    return-object p1

    .line 188
    :cond_10
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Lkotlinx/coroutines/scheduling/Task;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-eqz p1, :cond_11

    .line 193
    .line 194
    return-object p1

    .line 195
    :cond_11
    const/4 p1, 0x3

    .line 196
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i(I)Lkotlinx/coroutines/scheduling/Task;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(I)I
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->o:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->o:I

    .line 13
    .line 14
    add-int/lit8 p0, p1, -0x1

    .line 15
    .line 16
    and-int v1, p0, p1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    and-int/2addr p0, v0

    .line 21
    return p0

    .line 22
    :cond_0
    const p0, 0x7fffffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, v0

    .line 26
    rem-int/2addr p0, p1

    .line 27
    return p0
.end method

.method public final e()Lkotlinx/coroutines/scheduling/Task;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 9
    .line 10
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->d()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    .line 44
    .line 45
    return-object p0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    .line 8
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-worker-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string v1, "TERMINATED"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 38
    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->j:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 13
    .line 14
    const-wide v3, 0x40000000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 20
    .line 21
    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 27
    .line 28
    :cond_2
    return v1
.end method

.method public final i(I)Lkotlinx/coroutines/scheduling/Task;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-wide/32 v6, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long/2addr v4, v6

    .line 17
    long-to-int v2, v4

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x2

    .line 20
    if-ge v2, v5, :cond_0

    .line 21
    .line 22
    return-object v4

    .line 23
    :cond_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v10, 0x0

    .line 28
    const-wide v11, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :goto_0
    if-ge v10, v2, :cond_11

    .line 34
    .line 35
    const/4 v15, 0x1

    .line 36
    add-int/2addr v6, v15

    .line 37
    if-le v6, v2, :cond_1

    .line 38
    .line 39
    move v6, v15

    .line 40
    :cond_1
    iget-object v5, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 47
    .line 48
    if-eqz v5, :cond_f

    .line 49
    .line 50
    if-eq v5, v0, :cond_f

    .line 51
    .line 52
    iget-object v5, v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v7, 0x3

    .line 58
    if-ne v1, v7, :cond_2

    .line 59
    .line 60
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const-wide v16, 0x7fffffffffffffffL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide/16 v18, 0x0

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_2
    if-ne v1, v15, :cond_3

    .line 73
    .line 74
    move v7, v15

    .line 75
    :goto_1
    const-wide v16, 0x7fffffffffffffffL

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v7, 0x0

    .line 82
    goto :goto_1

    .line 83
    :goto_2
    sget-object v8, Lkotlinx/coroutines/scheduling/WorkQueue;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 84
    .line 85
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    sget-object v9, Lkotlinx/coroutines/scheduling/WorkQueue;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 90
    .line 91
    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    :goto_3
    if-eq v8, v9, :cond_6

    .line 96
    .line 97
    const-wide/16 v18, 0x0

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    sget-object v13, Lkotlinx/coroutines/scheduling/WorkQueue;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 102
    .line 103
    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-nez v13, :cond_4

    .line 108
    .line 109
    :goto_4
    move-object v7, v4

    .line 110
    goto :goto_5

    .line 111
    :cond_4
    add-int/lit8 v13, v8, 0x1

    .line 112
    .line 113
    invoke-virtual {v5, v8, v7}, Lkotlinx/coroutines/scheduling/WorkQueue;->c(IZ)Lkotlinx/coroutines/scheduling/Task;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    if-nez v8, :cond_5

    .line 118
    .line 119
    move v8, v13

    .line 120
    goto :goto_3

    .line 121
    :cond_5
    move-object v7, v8

    .line 122
    goto :goto_5

    .line 123
    :cond_6
    const-wide/16 v18, 0x0

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :goto_5
    iget-object v13, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 127
    .line 128
    if-eqz v7, :cond_7

    .line 129
    .line 130
    iput-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 131
    .line 132
    move-object v5, v4

    .line 133
    const-wide/16 v7, -0x1

    .line 134
    .line 135
    const-wide/16 v20, -0x1

    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_7
    :goto_6
    sget-object v7, Lkotlinx/coroutines/scheduling/WorkQueue;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 139
    .line 140
    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    check-cast v14, Lkotlinx/coroutines/scheduling/Task;

    .line 145
    .line 146
    if-nez v14, :cond_8

    .line 147
    .line 148
    const-wide/16 v20, -0x1

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_8
    const-wide/16 v20, -0x1

    .line 152
    .line 153
    iget-boolean v8, v14, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 154
    .line 155
    if-eqz v8, :cond_9

    .line 156
    .line 157
    move v8, v15

    .line 158
    goto :goto_7

    .line 159
    :cond_9
    const/4 v8, 0x2

    .line 160
    :goto_7
    and-int/2addr v8, v1

    .line 161
    if-nez v8, :cond_a

    .line 162
    .line 163
    :goto_8
    const-wide/16 v7, -0x2

    .line 164
    .line 165
    move-object v5, v4

    .line 166
    goto :goto_9

    .line 167
    :cond_a
    sget-object v8, Lkotlinx/coroutines/scheduling/TasksKt;->f:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v8

    .line 176
    move-object/from16 v23, v5

    .line 177
    .line 178
    iget-wide v4, v14, Lkotlinx/coroutines/scheduling/Task;->j:J

    .line 179
    .line 180
    sub-long/2addr v8, v4

    .line 181
    sget-wide v4, Lkotlinx/coroutines/scheduling/TasksKt;->b:J

    .line 182
    .line 183
    cmp-long v24, v8, v4

    .line 184
    .line 185
    if-gez v24, :cond_b

    .line 186
    .line 187
    sub-long v7, v4, v8

    .line 188
    .line 189
    const/4 v5, 0x0

    .line 190
    goto :goto_9

    .line 191
    :cond_b
    move-object/from16 v4, v23

    .line 192
    .line 193
    :cond_c
    const/4 v5, 0x0

    .line 194
    invoke-virtual {v7, v4, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_e

    .line 199
    .line 200
    iput-object v14, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 201
    .line 202
    move-wide/from16 v7, v20

    .line 203
    .line 204
    :goto_9
    cmp-long v4, v7, v20

    .line 205
    .line 206
    if-nez v4, :cond_d

    .line 207
    .line 208
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 211
    .line 212
    iput-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_d
    cmp-long v4, v7, v18

    .line 216
    .line 217
    if-lez v4, :cond_10

    .line 218
    .line 219
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 220
    .line 221
    .line 222
    move-result-wide v11

    .line 223
    goto :goto_a

    .line 224
    :cond_e
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    if-eq v5, v14, :cond_c

    .line 229
    .line 230
    move-object v5, v4

    .line 231
    const/4 v4, 0x0

    .line 232
    goto :goto_6

    .line 233
    :cond_f
    const-wide v16, 0x7fffffffffffffffL

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :cond_10
    :goto_a
    add-int/lit8 v10, v10, 0x1

    .line 239
    .line 240
    const/4 v4, 0x0

    .line 241
    const/4 v5, 0x2

    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_11
    const-wide v16, 0x7fffffffffffffffL

    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    const-wide/16 v18, 0x0

    .line 250
    .line 251
    cmp-long v1, v11, v16

    .line 252
    .line 253
    if-eqz v1, :cond_12

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_12
    move-wide/from16 v11, v18

    .line 257
    .line 258
    :goto_b
    iput-wide v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->n:J

    .line 259
    .line 260
    const/16 v22, 0x0

    .line 261
    .line 262
    return-object v22
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_0
    move v0, v2

    .line 5
    :cond_1
    :goto_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    .line 7
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    goto/16 :goto_b

    .line 17
    .line 18
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 19
    .line 20
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->n:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 21
    .line 22
    if-eq v3, v5, :cond_17

    .line 23
    .line 24
    iget-boolean v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->p:Z

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Z)Lkotlinx/coroutines/scheduling/Task;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-wide/32 v6, -0x200000

    .line 31
    .line 32
    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    if-eqz v3, :cond_8

    .line 36
    .line 37
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->n:J

    .line 38
    .line 39
    iget-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 40
    .line 41
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:J

    .line 42
    .line 43
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 44
    .line 45
    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 46
    .line 47
    if-ne v0, v8, :cond_3

    .line 48
    .line 49
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 50
    .line 51
    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 52
    .line 53
    :cond_3
    iget-boolean v0, v3, Lkotlinx/coroutines/scheduling/Task;->k:Z

    .line 54
    .line 55
    if-eqz v0, :cond_7

    .line 56
    .line 57
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->k:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    invoke-virtual {v4, v8, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->w(J)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->A()Z

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-interface {v8, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 105
    .line 106
    invoke-virtual {v0, v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 107
    .line 108
    .line 109
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 110
    .line 111
    if-eq v0, v5, :cond_0

    .line 112
    .line 113
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->m:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 114
    .line 115
    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_8
    iput-boolean v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->p:Z

    .line 137
    .line 138
    iget-wide v10, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->n:J

    .line 139
    .line 140
    cmp-long v3, v10, v8

    .line 141
    .line 142
    if-eqz v3, :cond_a

    .line 143
    .line 144
    if-nez v0, :cond_9

    .line 145
    .line 146
    move v0, v4

    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_9
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 152
    .line 153
    .line 154
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 155
    .line 156
    .line 157
    iget-wide v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->n:J

    .line 158
    .line 159
    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 160
    .line 161
    .line 162
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->n:J

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_a
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 167
    .line 168
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    .line 169
    .line 170
    if-eq v3, v5, :cond_14

    .line 171
    .line 172
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 173
    .line 174
    const/4 v5, -0x1

    .line 175
    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    :cond_b
    :goto_4
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 179
    .line 180
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    .line 181
    .line 182
    if-eq v3, v6, :cond_1

    .line 183
    .line 184
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 185
    .line 186
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-ne v6, v5, :cond_1

    .line 191
    .line 192
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 193
    .line 194
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 195
    .line 196
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-ne v6, v4, :cond_c

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_c
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 205
    .line 206
    sget-object v12, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->n:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 207
    .line 208
    if-ne v6, v12, :cond_d

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_d
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 213
    .line 214
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 215
    .line 216
    .line 217
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 218
    .line 219
    .line 220
    iget-wide v13, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:J

    .line 221
    .line 222
    cmp-long v6, v13, v8

    .line 223
    .line 224
    if-nez v6, :cond_e

    .line 225
    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 231
    .line 232
    const-wide/32 v15, 0x1fffff

    .line 233
    .line 234
    .line 235
    iget-wide v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:J

    .line 236
    .line 237
    add-long/2addr v13, v10

    .line 238
    iput-wide v13, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:J

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_e
    const-wide/32 v15, 0x1fffff

    .line 242
    .line 243
    .line 244
    :goto_5
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 245
    .line 246
    iget-wide v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:J

    .line 247
    .line 248
    invoke-static {v10, v11}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    iget-wide v13, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:J

    .line 256
    .line 257
    sub-long/2addr v10, v13

    .line 258
    cmp-long v6, v10, v8

    .line 259
    .line 260
    if-ltz v6, :cond_b

    .line 261
    .line 262
    iput-wide v8, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:J

    .line 263
    .line 264
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 265
    .line 266
    iget-object v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 267
    .line 268
    monitor-enter v10

    .line 269
    :try_start_2
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 270
    .line 271
    .line 272
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 273
    if-ne v7, v4, :cond_f

    .line 274
    .line 275
    move v7, v4

    .line 276
    goto :goto_6

    .line 277
    :cond_f
    move v7, v2

    .line 278
    :goto_6
    if-eqz v7, :cond_10

    .line 279
    .line 280
    :goto_7
    monitor-exit v10

    .line 281
    goto :goto_4

    .line 282
    :cond_10
    :try_start_3
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 283
    .line 284
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 285
    .line 286
    .line 287
    move-result-wide v13

    .line 288
    and-long/2addr v13, v15

    .line 289
    long-to-int v11, v13

    .line 290
    iget v13, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    .line 291
    .line 292
    if-gt v11, v13, :cond_11

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_11
    invoke-virtual {v3, v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-nez v3, :cond_12

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_12
    iget v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 303
    .line 304
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v1, v3, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->v(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 311
    .line 312
    .line 313
    move-result-wide v13

    .line 314
    and-long/2addr v13, v15

    .line 315
    long-to-int v7, v13

    .line 316
    if-eq v7, v3, :cond_13

    .line 317
    .line 318
    iget-object v11, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 319
    .line 320
    invoke-virtual {v11, v7}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    check-cast v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 328
    .line 329
    iget-object v13, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 330
    .line 331
    invoke-virtual {v13, v3, v11}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v6, v11, v7, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->v(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :catchall_2
    move-exception v0

    .line 342
    goto :goto_9

    .line 343
    :cond_13
    :goto_8
    iget-object v3, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 344
    .line 345
    const/4 v6, 0x0

    .line 346
    invoke-virtual {v3, v7, v6}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 347
    .line 348
    .line 349
    monitor-exit v10

    .line 350
    iput-object v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 351
    .line 352
    goto/16 :goto_4

    .line 353
    .line 354
    :goto_9
    monitor-exit v10

    .line 355
    throw v0

    .line 356
    :cond_14
    const-wide/32 v15, 0x1fffff

    .line 357
    .line 358
    .line 359
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 360
    .line 361
    iget-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 362
    .line 363
    if-eq v4, v5, :cond_15

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_15
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 368
    .line 369
    :goto_a
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v19

    .line 373
    and-long v8, v19, v15

    .line 374
    .line 375
    long-to-int v5, v8

    .line 376
    const-wide/32 v8, 0x200000

    .line 377
    .line 378
    .line 379
    add-long v8, v19, v8

    .line 380
    .line 381
    and-long/2addr v8, v6

    .line 382
    iget v10, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    .line 383
    .line 384
    iget-object v11, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 385
    .line 386
    invoke-virtual {v11, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->b(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    iput-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 391
    .line 392
    sget-object v17, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 393
    .line 394
    int-to-long v10, v10

    .line 395
    or-long v21, v8, v10

    .line 396
    .line 397
    move-object/from16 v18, v3

    .line 398
    .line 399
    invoke-virtual/range {v17 .. v22}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-eqz v3, :cond_16

    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_16
    move-object/from16 v3, v18

    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_17
    :goto_b
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->n:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 411
    .line 412
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 413
    .line 414
    .line 415
    return-void
.end method
