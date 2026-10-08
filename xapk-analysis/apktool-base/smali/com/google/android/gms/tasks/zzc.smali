.class final Lcom/google/android/gms/tasks/zzc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/tasks/Task;

.field public final synthetic k:Lcom/google/android/gms/tasks/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzd;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzc;->j:Lcom/google/android/gms/tasks/Task;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzc;->k:Lcom/google/android/gms/tasks/zzd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzc;->j:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/tasks/zzw;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/tasks/zzw;->d:Z

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzc;->k:Lcom/google/android/gms/tasks/zzd;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, v2, Lcom/google/android/gms/tasks/zzd;->c:Lcom/google/android/gms/tasks/zzw;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->o()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, v2, Lcom/google/android/gms/tasks/zzd;->b:Lcom/google/android/gms/tasks/Continuation;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/google/android/gms/tasks/Continuation;->g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->k:Lcom/google/android/gms/tasks/zzd;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzd;->c:Lcom/google/android/gms/tasks/zzw;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->m(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->k:Lcom/google/android/gms/tasks/zzd;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzd;->c:Lcom/google/android/gms/tasks/zzw;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    instance-of v1, v1, Ljava/lang/Exception;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->k:Lcom/google/android/gms/tasks/zzd;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Exception;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzd;->c:Lcom/google/android/gms/tasks/zzw;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzd;->c:Lcom/google/android/gms/tasks/zzw;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->n(Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
