.class final Lcom/google/android/play/core/review/internal/zzn;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic k:Lcom/google/android/play/core/review/internal/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/internal/zzt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzj;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/review/internal/zzt;->f:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->b:Lcom/google/android/play/core/review/internal/zzi;

    .line 30
    .line 31
    const-string v1, "Leaving the connection open for other ongoing calls."

    .line 32
    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lcom/google/android/play/core/review/internal/zzi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/google/android/play/core/review/internal/zzt;->m:Lcom/google/android/play/core/review/internal/zzf;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->b:Lcom/google/android/play/core/review/internal/zzi;

    .line 49
    .line 50
    const-string v3, "Unbind from service."

    .line 51
    .line 52
    new-array v4, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v1, v3, v4}, Lcom/google/android/play/core/review/internal/zzi;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 58
    .line 59
    iget-object v3, v1, Lcom/google/android/play/core/review/internal/zzt;->a:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->l:Landroid/content/ServiceConnection;

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 67
    .line 68
    iput-boolean v2, v1, Lcom/google/android/play/core/review/internal/zzt;->g:Z

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    iput-object v2, v1, Lcom/google/android/play/core/review/internal/zzt;->m:Lcom/google/android/play/core/review/internal/zzf;

    .line 72
    .line 73
    iput-object v2, v1, Lcom/google/android/play/core/review/internal/zzt;->l:Landroid/content/ServiceConnection;

    .line 74
    .line 75
    :cond_1
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzn;->k:Lcom/google/android/play/core/review/internal/zzt;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/play/core/review/internal/zzt;->e()V

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method
