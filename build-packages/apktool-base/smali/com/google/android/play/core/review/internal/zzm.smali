.class final Lcom/google/android/play/core/review/internal/zzm;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic k:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic l:Lcom/google/android/play/core/review/internal/zzj;

.field public final synthetic m:Lcom/google/android/play/core/review/internal/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/review/internal/zzj;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzm;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/play/core/review/internal/zzm;->l:Lcom/google/android/play/core/review/internal/zzj;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzm;->m:Lcom/google/android/play/core/review/internal/zzt;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/play/core/review/internal/zzj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzm;->m:Lcom/google/android/play/core/review/internal/zzt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/review/internal/zzt;->f:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzm;->m:Lcom/google/android/play/core/review/internal/zzt;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzm;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    iget-object v3, v1, Lcom/google/android/play/core/review/internal/zzt;->e:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v3, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 16
    .line 17
    new-instance v4, Lcom/google/android/play/core/review/internal/zzl;

    .line 18
    .line 19
    invoke-direct {v4, v1, v2}, Lcom/google/android/play/core/review/internal/zzl;-><init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzm;->m:Lcom/google/android/play/core/review/internal/zzt;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzm;->m:Lcom/google/android/play/core/review/internal/zzt;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->b:Lcom/google/android/play/core/review/internal/zzi;

    .line 38
    .line 39
    const-string v2, "Already connected to the service."

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/review/internal/zzi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzm;->m:Lcom/google/android/play/core/review/internal/zzt;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzm;->l:Lcom/google/android/play/core/review/internal/zzj;

    .line 53
    .line 54
    invoke-static {v1, p0}, Lcom/google/android/play/core/review/internal/zzt;->b(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/play/core/review/internal/zzj;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method
