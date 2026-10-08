.class final Lcom/google/android/gms/common/api/internal/zabm;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic k:Lcom/google/android/gms/common/api/internal/zabn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabn;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabm;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabm;->k:Lcom/google/android/gms/common/api/internal/zabn;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabm;->k:Lcom/google/android/gms/common/api/internal/zabn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabn;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zabn;->a:Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zabn;->b:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/gms/common/api/internal/zabk;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabm;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 21
    .line 22
    iget v3, p0, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_4

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    iput-boolean p0, v0, Lcom/google/android/gms/common/api/internal/zabn;->e:Z

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_2

    .line 35
    .line 36
    :try_start_0
    move-object p0, v2

    .line 37
    check-cast p0, Lcom/google/android/gms/common/internal/GmsClient;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->y:Ljava/util/Set;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 49
    .line 50
    :goto_0
    move-object v0, v2

    .line 51
    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 52
    .line 53
    invoke-virtual {v0, v4, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p0

    .line 58
    const-string v0, "GoogleApiManager"

    .line 59
    .line 60
    const-string v3, "Failed to get service from broker. "

    .line 61
    .line 62
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    const-string p0, "Failed to get service from broker."

    .line 66
    .line 67
    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 68
    .line 69
    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    .line 73
    .line 74
    const/16 v0, 0xa

    .line 75
    .line 76
    invoke-direct {p0, v0, v4, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget-boolean p0, v0, Lcom/google/android/gms/common/api/internal/zabn;->e:Z

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zabn;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 88
    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabn;->d:Ljava/util/Set;

    .line 92
    .line 93
    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 94
    .line 95
    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_1
    return-void

    .line 99
    :cond_4
    invoke-virtual {v1, p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->n(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
