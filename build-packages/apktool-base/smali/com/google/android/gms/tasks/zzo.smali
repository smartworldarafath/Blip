.class final Lcom/google/android/gms/tasks/zzo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/tasks/Task;

.field public final synthetic k:Lcom/google/android/gms/tasks/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzp;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzo;->j:Lcom/google/android/gms/tasks/Task;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzo;->k:Lcom/google/android/gms/tasks/zzp;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzo;->k:Lcom/google/android/gms/tasks/zzp;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/tasks/zzp;->b:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzo;->j:Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->g()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/SuccessContinuation;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzw;->b:Lcom/google/android/gms/tasks/zzr;

    .line 23
    .line 24
    new-instance v3, Lcom/google/android/gms/tasks/zzl;

    .line 25
    .line 26
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/google/android/gms/tasks/zzh;

    .line 36
    .line 37
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzp;->c:Lcom/google/android/gms/tasks/zzw;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzp;->c()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    instance-of v1, v1, Ljava/lang/Exception;

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/Exception;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzp;->d(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzp;->c:Lcom/google/android/gms/tasks/zzw;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
