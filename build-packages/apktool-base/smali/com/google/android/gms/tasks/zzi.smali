.class final Lcom/google/android/gms/tasks/zzi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/tasks/Task;

.field public final synthetic k:Lcom/google/android/gms/tasks/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzj;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->j:Lcom/google/android/gms/tasks/Task;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->k:Lcom/google/android/gms/tasks/zzj;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->k:Lcom/google/android/gms/tasks/zzj;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/tasks/zzj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzj;->c:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->j:Lcom/google/android/gms/tasks/Task;

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->h(Lcom/google/android/gms/tasks/Task;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
