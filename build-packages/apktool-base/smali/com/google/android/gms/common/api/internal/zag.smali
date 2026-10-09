.class public final Lcom/google/android/gms/common/api/internal/zag;
.super Lcom/google/android/gms/common/api/internal/zac;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final b:Lcom/google/android/gms/common/api/internal/TaskApiCall;

.field public final c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final d:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zai;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zag;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zag;->b:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zag;->d:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    iget-boolean p0, p2, Lcom/google/android/gms/common/api/internal/TaskApiCall;->b:Z

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 19
    .line 20
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->d:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->l:Landroid/app/PendingIntent;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Exception;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/internal/zaaa;Z)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zaaa;->b:Ljava/util/Map;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaz;

    .line 15
    .line 16
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/internal/zaz;-><init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/zabk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zag;->b:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/common/api/internal/zacn;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacn;->d:Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    .line 12
    .line 13
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/common/api/internal/RemoteCall;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Exception;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zai;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zag;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_2
    move-exception p0

    .line 34
    throw p0
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/zabk;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->b:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a:[Lcom/google/android/gms/common/Feature;

    .line 4
    .line 5
    return-object p0
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/zabk;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->b:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/TaskApiCall;->b:Z

    .line 4
    .line 5
    return p0
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/zabk;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zag;->b:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/gms/common/api/internal/TaskApiCall;->c:I

    .line 4
    .line 5
    return p0
.end method
