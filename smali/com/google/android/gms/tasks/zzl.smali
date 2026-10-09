.class final Lcom/google/android/gms/tasks/zzl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/tasks/zzq;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/google/android/gms/tasks/OnFailureListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzl;->b:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzl;->a:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzl;->c:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/google/android/gms/tasks/zzw;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzl;->b:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzl;->c:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzl;->a:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/tasks/zzk;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzk;-><init>(Lcom/google/android/gms/tasks/zzl;Lcom/google/android/gms/tasks/Task;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_1
    return-void
.end method
