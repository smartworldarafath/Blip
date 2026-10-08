.class public abstract Lcom/google/android/gms/tasks/Tasks;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "GoogleApiHandler"

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "Must not be called on GoogleApiHandler thread."

    .line 36
    .line 37
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_1
    :goto_0
    const-string v0, "Task must not be null"

    .line 42
    .line 43
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->j()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_2
    new-instance v0, Lcom/google/android/gms/tasks/zzaa;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzaa;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    move-object v2, p0

    .line 68
    check-cast v2, Lcom/google/android/gms/tasks/zzw;

    .line 69
    .line 70
    iget-object v3, v2, Lcom/google/android/gms/tasks/zzw;->b:Lcom/google/android/gms/tasks/zzr;

    .line 71
    .line 72
    new-instance v4, Lcom/google/android/gms/tasks/zzl;

    .line 73
    .line 74
    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 81
    .line 82
    .line 83
    new-instance v4, Lcom/google/android/gms/tasks/zzh;

    .line 84
    .line 85
    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzaa;->a:Ljava/util/concurrent/CountDownLatch;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_3
    const-string p0, "Must not be called on the main application thread"

    .line 105
    .line 106
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v2
.end method

.method public static b(Lcom/google/android/gms/tasks/Task;J)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "GoogleApiHandler"

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "Must not be called on GoogleApiHandler thread."

    .line 36
    .line 37
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_1
    :goto_0
    const-string v0, "Task must not be null"

    .line 42
    .line 43
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "TimeUnit must not be null"

    .line 47
    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->j()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    new-instance v0, Lcom/google/android/gms/tasks/zzaa;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzaa;-><init>()V

    .line 67
    .line 68
    .line 69
    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    .line 70
    .line 71
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 72
    .line 73
    .line 74
    move-object v3, p0

    .line 75
    check-cast v3, Lcom/google/android/gms/tasks/zzw;

    .line 76
    .line 77
    iget-object v4, v3, Lcom/google/android/gms/tasks/zzw;->b:Lcom/google/android/gms/tasks/zzr;

    .line 78
    .line 79
    new-instance v5, Lcom/google/android/gms/tasks/zzl;

    .line 80
    .line 81
    invoke-direct {v5, v2, v0}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 88
    .line 89
    .line 90
    new-instance v5, Lcom/google/android/gms/tasks/zzh;

    .line 91
    .line 92
    invoke-direct {v5, v2, v0}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzaa;->a:Ljava/util/concurrent/CountDownLatch;

    .line 102
    .line 103
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_3
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 115
    .line 116
    const-string p1, "Timed out waiting for Task"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_4
    const-string p0, "Must not be called on the main application thread"

    .line 123
    .line 124
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v2
.end method

.method public static c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    const-string v0, "Executor must not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/tasks/zzx;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/tasks/zzx;-><init>(Lcom/google/android/gms/tasks/zzw;Ljava/util/concurrent/Callable;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->m(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->g()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/google/android/gms/tasks/zzw;->d:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 20
    .line 21
    const-string v0, "Task is already canceled"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->f()Ljava/lang/Exception;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method
