.class final Lcom/google/android/gms/tasks/zze;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/tasks/Task;

.field public final synthetic k:Lcom/google/android/gms/tasks/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzf;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/zze;->j:Lcom/google/android/gms/tasks/Task;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zze;->k:Lcom/google/android/gms/tasks/zzf;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->k:Lcom/google/android/gms/tasks/zzf;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/tasks/zzf;->b:Lcom/google/android/gms/tasks/Continuation;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->j:Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/Continuation;->g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string v1, "Continuation returned null"

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzf;->d(Ljava/lang/Exception;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->b:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 29
    .line 30
    .line 31
    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzw;->b:Lcom/google/android/gms/tasks/zzr;

    .line 34
    .line 35
    new-instance v3, Lcom/google/android/gms/tasks/zzl;

    .line 36
    .line 37
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tasks/zzl;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

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
    new-instance v3, Lcom/google/android/gms/tasks/zzh;

    .line 47
    .line 48
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/zzr;->a(Lcom/google/android/gms/tasks/zzq;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->q()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :catch_1
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzf;->c:Lcom/google/android/gms/tasks/zzw;

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    instance-of v1, v1, Ljava/lang/Exception;

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/Exception;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzf;->c:Lcom/google/android/gms/tasks/zzw;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzf;->c:Lcom/google/android/gms/tasks/zzw;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
