.class public Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static A:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public static final x:Lcom/google/android/gms/common/api/Status;

.field public static final y:Lcom/google/android/gms/common/api/Status;

.field public static final z:Ljava/lang/Object;


# instance fields
.field public j:J

.field public k:Z

.field public l:Lcom/google/android/gms/common/internal/TelemetryData;

.field public m:Lcom/google/android/gms/common/internal/service/zat;

.field public final n:Landroid/content/Context;

.field public final o:Lcom/google/android/gms/common/GoogleApiAvailability;

.field public final p:Lcom/google/android/gms/common/internal/zao;

.field public final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final s:Ljava/util/concurrent/ConcurrentHashMap;

.field public final t:Landroidx/collection/ArraySet;

.field public final u:Landroidx/collection/ArraySet;

.field public final v:Lcom/google/android/gms/internal/base/zao;

.field public volatile w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->x:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    const-string v2, "The user must be signed in to make this API call."

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->y:Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->z:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    new-instance v2, Landroidx/collection/ArraySet;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->t:Landroidx/collection/ArraySet;

    .line 44
    .line 45
    new-instance v2, Landroidx/collection/ArraySet;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->u:Landroidx/collection/ArraySet;

    .line 51
    .line 52
    iput-boolean v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->w:Z

    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/gms/internal/base/zao;

    .line 57
    .line 58
    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 67
    .line 68
    new-instance p2, Lcom/google/android/gms/common/internal/zao;

    .line 69
    .line 70
    invoke-direct {p2}, Lcom/google/android/gms/common/internal/zao;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->p:Lcom/google/android/gms/common/internal/zao;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    sget-object p2, Lcom/google/android/gms/common/util/DeviceProperties;->d:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-nez p2, :cond_0

    .line 82
    .line 83
    const-string p2, "android.hardware.type.automotive"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sput-object p1, Lcom/google/android/gms/common/util/DeviceProperties;->d:Ljava/lang/Boolean;

    .line 94
    .line 95
    :cond_0
    sget-object p1, Lcom/google/android/gms/common/util/DeviceProperties;->d:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->w:Z

    .line 104
    .line 105
    :cond_1
    const/4 p0, 0x6

    .line 106
    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static b(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/ApiKey;->b:Lcom/google/android/gms/common/api/Api;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/api/Api;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x3f

    .line 26
    .line 27
    add-int/2addr v2, v3

    .line 28
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const-string v2, "API: "

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, " is not available on this device. Connection failed with: "

    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const/16 v1, 0x11

    .line 52
    .line 53
    iget-object v2, p1, Lcom/google/android/gms/common/ConnectionResult;->l:Landroid/app/PendingIntent;

    .line 54
    .line 55
    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->z:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->A:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->a:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    monitor-exit v1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    .line 20
    .line 21
    const-string v3, "GoogleApiHandler"

    .line 22
    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sput-object v2, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Landroid/os/HandlerThread;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->c:Landroid/os/HandlerThread;

    .line 34
    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v3, Lcom/google/android/gms/common/GoogleApiAvailability;->c:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    sput-object v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->A:Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    throw p0

    .line 58
    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->A:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-object p0

    .line 62
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/common/api/GoogleApi;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/google/android/gms/common/api/internal/zabk;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/common/api/internal/zabk;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->u:Landroidx/collection/ArraySet;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabk;->q()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final d(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 6
    .line 7
    iget v5, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall;->c:I

    .line 8
    .line 9
    if-eqz v5, :cond_6

    .line 10
    .line 11
    iget-object v6, p1, Lcom/google/android/gms/common/api/GoogleApi;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v3, v3, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    iget-boolean v7, v3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->k:Z

    .line 30
    .line 31
    if-eqz v7, :cond_2

    .line 32
    .line 33
    iget-boolean v3, v3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->l:Z

    .line 34
    .line 35
    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/google/android/gms/common/api/internal/zabk;

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    iget-object v8, v7, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 46
    .line 47
    instance-of v9, v8, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 48
    .line 49
    if-eqz v9, :cond_2

    .line 50
    .line 51
    check-cast v8, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 52
    .line 53
    iget-object v9, v8, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:Lcom/google/android/gms/common/internal/zzj;

    .line 54
    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;->n()Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-nez v9, :cond_1

    .line 62
    .line 63
    invoke-static {v7, v8, v5}, Lcom/google/android/gms/common/api/internal/zaby;->a(Lcom/google/android/gms/common/api/internal/zabk;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget v8, v7, Lcom/google/android/gms/common/api/internal/zabk;->o:I

    .line 70
    .line 71
    add-int/2addr v8, v4

    .line 72
    iput v8, v7, Lcom/google/android/gms/common/api/internal/zabk;->o:I

    .line 73
    .line 74
    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->l:Z

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v4, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_1
    new-instance v3, Lcom/google/android/gms/common/api/internal/zaby;

    .line 82
    .line 83
    const-wide/16 v7, 0x0

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move-wide v9, v7

    .line 93
    :goto_2
    if-eqz v4, :cond_5

    .line 94
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    :cond_5
    move-wide v11, v9

    .line 100
    move-wide v9, v7

    .line 101
    move-wide v7, v11

    .line 102
    move-object v4, p0

    .line 103
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/common/api/internal/zaby;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V

    .line 104
    .line 105
    .line 106
    :goto_3
    if-eqz v3, :cond_6

    .line 107
    .line 108
    iget-object v5, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 109
    .line 110
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    new-instance v6, Lcom/google/android/gms/common/api/internal/zabp;

    .line 114
    .line 115
    invoke-direct {v6, v2}, Lcom/google/android/gms/common/api/internal/zabp;-><init>(Lcom/google/android/gms/internal/base/zao;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/tasks/Task;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 119
    .line 120
    .line 121
    :cond_6
    new-instance v3, Lcom/google/android/gms/common/api/internal/zag;

    .line 122
    .line 123
    move-object/from16 v5, p5

    .line 124
    .line 125
    invoke-direct {v3, p2, v0, v1, v5}, Lcom/google/android/gms/common/api/internal/zag;-><init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    .line 126
    .line 127
    .line 128
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    new-instance p2, Lcom/google/android/gms/common/api/internal/zacc;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    invoke-direct {p2, v3, p0, p1}, Lcom/google/android/gms/common/api/internal/zacc;-><init>(Lcom/google/android/gms/common/api/internal/zag;ILcom/google/android/gms/common/api/GoogleApi;)V

    .line 137
    .line 138
    .line 139
    const/4 p0, 0x4

    .line 140
    invoke-virtual {v2, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->k:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->p:Lcom/google/android/gms/common/internal/zao;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zao;->a:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    const/4 v0, -0x1

    .line 24
    const v1, 0xc1fa340

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    monitor-exit p0

    .line 32
    if-eq v1, v0, :cond_3

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public final f(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/common/wrappers/InstantApps;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/google/android/gms/common/wrappers/InstantApps;->a:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    sget-object v5, Lcom/google/android/gms/common/wrappers/InstantApps;->b:Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    if-eq v3, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v1

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_1
    :goto_0
    :try_start_1
    sput-object v4, Lcom/google/android/gms/common/wrappers/InstantApps;->b:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    sput-object v5, Lcom/google/android/gms/common/wrappers/InstantApps;->b:Ljava/lang/Boolean;

    .line 52
    .line 53
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    move v2, v3

    .line 57
    :goto_1
    const/4 v11, 0x0

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_2
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->l:Landroid/app/PendingIntent;

    .line 68
    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    move v3, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move v3, v11

    .line 74
    :goto_2
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget-object v1, p1, Lcom/google/android/gms/common/ConnectionResult;->l:Landroid/app/PendingIntent;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    invoke-virtual {v0, v1, p0, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    const/high16 v3, 0xc000000

    .line 87
    .line 88
    invoke-static {p0, v11, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :goto_3
    move-object v1, v4

    .line 93
    :goto_4
    if-eqz v1, :cond_8

    .line 94
    .line 95
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 96
    .line 97
    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->k:I

    .line 98
    .line 99
    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 100
    .line 101
    new-instance v5, Landroid/content/Intent;

    .line 102
    .line 103
    invoke-direct {v5, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "pending_intent"

    .line 107
    .line 108
    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const-string v1, "failing_client_id"

    .line 112
    .line 113
    invoke-virtual {v5, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    const-string p2, "notify_manager"

    .line 117
    .line 118
    invoke-virtual {v5, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    sget p2, Lcom/google/android/gms/internal/base/zak;->a:I

    .line 122
    .line 123
    const/high16 v1, 0x8000000

    .line 124
    .line 125
    or-int/2addr p2, v1

    .line 126
    invoke-static {p0, v11, v5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v0, p0, v3, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 131
    .line 132
    .line 133
    iget-object p2, p1, Lcom/google/android/gms/common/ConnectionResult;->n:Ljava/lang/Integer;

    .line 134
    .line 135
    new-instance v5, Lcom/google/android/gms/common/internal/zab;

    .line 136
    .line 137
    if-nez p2, :cond_6

    .line 138
    .line 139
    const/4 p2, -0x1

    .line 140
    :goto_5
    move v6, p2

    .line 141
    goto :goto_6

    .line 142
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    goto :goto_5

    .line 147
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v8

    .line 155
    iget v10, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 156
    .line 157
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/common/internal/zab;-><init>(ILjava/lang/String;JIZ)V

    .line 158
    .line 159
    .line 160
    iget-object p1, v0, Lcom/google/android/gms/common/GoogleApiAvailability;->b:Lcom/google/android/gms/common/internal/service/zaq;

    .line 161
    .line 162
    if-nez p1, :cond_7

    .line 163
    .line 164
    new-instance p1, Lcom/google/android/gms/common/internal/service/zaq;

    .line 165
    .line 166
    sget-object p2, Lcom/google/android/gms/common/internal/service/zaq;->j:Lcom/google/android/gms/common/api/Api;

    .line 167
    .line 168
    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->a:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 169
    .line 170
    sget-object v3, Lcom/google/android/gms/common/api/GoogleApi$Settings;->b:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 171
    .line 172
    invoke-direct {p1, p0, p2, v1, v3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 173
    .line 174
    .line 175
    iput-object p1, v0, Lcom/google/android/gms/common/GoogleApiAvailability;->b:Lcom/google/android/gms/common/internal/service/zaq;

    .line 176
    .line 177
    :cond_7
    iget-object p0, v0, Lcom/google/android/gms/common/GoogleApiAvailability;->b:Lcom/google/android/gms/common/internal/service/zaq;

    .line 178
    .line 179
    invoke-virtual {p0, v5}, Lcom/google/android/gms/common/internal/service/zaq;->c(Lcom/google/android/gms/common/internal/zab;)Lcom/google/android/gms/tasks/Task;

    .line 180
    .line 181
    .line 182
    return v2

    .line 183
    :cond_8
    :goto_7
    return v11

    .line 184
    :goto_8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    throw p0
.end method

.method public final g(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->f(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    const-string v0, "GoogleApiManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget v3, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const-wide/32 v4, 0x493e0

    .line 10
    .line 11
    .line 12
    const/16 v6, 0x11

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x1

    .line 17
    packed-switch v3, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    add-int/lit8 p0, p0, 0x14

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-string p0, "Unknown message id: "

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v7

    .line 51
    :pswitch_0
    iput-boolean v7, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Z

    .line 52
    .line 53
    return v9

    .line 54
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lcom/google/android/gms/common/api/internal/zabz;

    .line 57
    .line 58
    iget-wide v2, p1, Lcom/google/android/gms/common/api/internal/zabz;->c:J

    .line 59
    .line 60
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabz;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 61
    .line 62
    iget v4, p1, Lcom/google/android/gms/common/api/internal/zabz;->b:I

    .line 63
    .line 64
    const-wide/16 v10, 0x0

    .line 65
    .line 66
    cmp-long v5, v2, v10

    .line 67
    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    new-instance p1, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 71
    .line 72
    filled-new-array {v0}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v4, v0}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 84
    .line 85
    if-nez v0, :cond_0

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 88
    .line 89
    sget-object v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->b:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 90
    .line 91
    new-instance v2, Lcom/google/android/gms/common/internal/service/zat;

    .line 92
    .line 93
    sget-object v3, Lcom/google/android/gms/common/internal/service/zat;->j:Lcom/google/android/gms/common/api/Api;

    .line 94
    .line 95
    sget-object v4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->b:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 96
    .line 97
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 101
    .line 102
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/service/zat;->c(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    .line 105
    .line 106
    .line 107
    return v9

    .line 108
    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 109
    .line 110
    if-eqz v5, :cond_8

    .line 111
    .line 112
    iget-object v7, v5, Lcom/google/android/gms/common/internal/TelemetryData;->k:Ljava/util/List;

    .line 113
    .line 114
    iget v5, v5, Lcom/google/android/gms/common/internal/TelemetryData;->j:I

    .line 115
    .line 116
    if-ne v5, v4, :cond_4

    .line 117
    .line 118
    if-eqz v7, :cond_2

    .line 119
    .line 120
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    iget p1, p1, Lcom/google/android/gms/common/api/internal/zabz;->d:I

    .line 125
    .line 126
    if-lt v5, p1, :cond_2

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 130
    .line 131
    iget-object v5, p1, Lcom/google/android/gms/common/internal/TelemetryData;->k:Ljava/util/List;

    .line 132
    .line 133
    if-nez v5, :cond_3

    .line 134
    .line 135
    new-instance v5, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v5, p1, Lcom/google/android/gms/common/internal/TelemetryData;->k:Ljava/util/List;

    .line 141
    .line 142
    :cond_3
    iget-object p1, p1, Lcom/google/android/gms/common/internal/TelemetryData;->k:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    :goto_0
    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 152
    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    iget v5, p1, Lcom/google/android/gms/common/internal/TelemetryData;->j:I

    .line 156
    .line 157
    if-gtz v5, :cond_5

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->e()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v5, :cond_7

    .line 164
    .line 165
    :cond_5
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 166
    .line 167
    if-nez v5, :cond_6

    .line 168
    .line 169
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 170
    .line 171
    sget-object v7, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->b:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 172
    .line 173
    new-instance v10, Lcom/google/android/gms/common/internal/service/zat;

    .line 174
    .line 175
    sget-object v11, Lcom/google/android/gms/common/internal/service/zat;->j:Lcom/google/android/gms/common/api/Api;

    .line 176
    .line 177
    sget-object v12, Lcom/google/android/gms/common/api/GoogleApi$Settings;->b:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 178
    .line 179
    invoke-direct {v10, v5, v11, v7, v12}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 180
    .line 181
    .line 182
    iput-object v10, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 183
    .line 184
    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 185
    .line 186
    invoke-virtual {v5, p1}, Lcom/google/android/gms/common/internal/service/zat;->c(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    .line 187
    .line 188
    .line 189
    :cond_7
    iput-object v8, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 190
    .line 191
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 192
    .line 193
    if-nez p1, :cond_22

    .line 194
    .line 195
    new-instance p1, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 204
    .line 205
    invoke-direct {v0, v4, p1}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 206
    .line 207
    .line 208
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 209
    .line 210
    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 215
    .line 216
    .line 217
    return v9

    .line 218
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 219
    .line 220
    if-eqz p1, :cond_22

    .line 221
    .line 222
    iget v0, p1, Lcom/google/android/gms/common/internal/TelemetryData;->j:I

    .line 223
    .line 224
    if-gtz v0, :cond_9

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->e()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_b

    .line 231
    .line 232
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 233
    .line 234
    if-nez v0, :cond_a

    .line 235
    .line 236
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 237
    .line 238
    sget-object v1, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->b:Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    .line 239
    .line 240
    new-instance v2, Lcom/google/android/gms/common/internal/service/zat;

    .line 241
    .line 242
    sget-object v3, Lcom/google/android/gms/common/internal/service/zat;->j:Lcom/google/android/gms/common/api/Api;

    .line 243
    .line 244
    sget-object v4, Lcom/google/android/gms/common/api/GoogleApi$Settings;->b:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 245
    .line 246
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 247
    .line 248
    .line 249
    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 250
    .line 251
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->m:Lcom/google/android/gms/common/internal/service/zat;

    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/service/zat;->c(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    .line 254
    .line 255
    .line 256
    :cond_b
    iput-object v8, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->l:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 257
    .line 258
    return v9

    .line 259
    :pswitch_3
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabl;

    .line 262
    .line 263
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 264
    .line 265
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-eqz p1, :cond_22

    .line 270
    .line 271
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 272
    .line 273
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    .line 278
    .line 279
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabk;->m:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_22

    .line 286
    .line 287
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 288
    .line 289
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 290
    .line 291
    const/16 v2, 0xf

    .line 292
    .line 293
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 297
    .line 298
    const/16 v1, 0x10

    .line 299
    .line 300
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabl;->b:Lcom/google/android/gms/common/Feature;

    .line 304
    .line 305
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabk;->d:Ljava/util/LinkedList;

    .line 306
    .line 307
    new-instance v1, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_e

    .line 325
    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Lcom/google/android/gms/common/api/internal/zai;

    .line 331
    .line 332
    instance-of v4, v3, Lcom/google/android/gms/common/api/internal/zac;

    .line 333
    .line 334
    if-eqz v4, :cond_c

    .line 335
    .line 336
    move-object v4, v3

    .line 337
    check-cast v4, Lcom/google/android/gms/common/api/internal/zac;

    .line 338
    .line 339
    invoke-virtual {v4, p1}, Lcom/google/android/gms/common/api/internal/zac;->f(Lcom/google/android/gms/common/api/internal/zabk;)[Lcom/google/android/gms/common/Feature;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    if-eqz v4, :cond_c

    .line 344
    .line 345
    array-length v5, v4

    .line 346
    move v6, v7

    .line 347
    :goto_3
    if-ge v6, v5, :cond_c

    .line 348
    .line 349
    aget-object v8, v4, v6

    .line 350
    .line 351
    invoke-static {v8, p0}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    if-eqz v8, :cond_d

    .line 356
    .line 357
    if-ltz v6, :cond_c

    .line 358
    .line 359
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    :goto_4
    if-ge v7, p1, :cond_22

    .line 371
    .line 372
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Lcom/google/android/gms/common/api/internal/zai;

    .line 377
    .line 378
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    new-instance v3, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    .line 382
    .line 383
    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zai;->b(Ljava/lang/Exception;)V

    .line 387
    .line 388
    .line 389
    add-int/lit8 v7, v7, 0x1

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :pswitch_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabl;

    .line 395
    .line 396
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 397
    .line 398
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-eqz p1, :cond_22

    .line 403
    .line 404
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->a:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 405
    .line 406
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    .line 411
    .line 412
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabk;->m:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p0

    .line 418
    if-nez p0, :cond_f

    .line 419
    .line 420
    goto/16 :goto_e

    .line 421
    .line 422
    :cond_f
    iget-boolean p0, p1, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 423
    .line 424
    if-nez p0, :cond_22

    .line 425
    .line 426
    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 427
    .line 428
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 429
    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    if-nez p0, :cond_10

    .line 435
    .line 436
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabk;->q()V

    .line 437
    .line 438
    .line 439
    return v9

    .line 440
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabk;->f()V

    .line 441
    .line 442
    .line 443
    return v9

    .line 444
    :pswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    .line 446
    invoke-static {p0}, Lq;->e(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    throw p0

    .line 451
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    .line 453
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result p0

    .line 457
    if-eqz p0, :cond_22

    .line 458
    .line 459
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 460
    .line 461
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabk;

    .line 466
    .line 467
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 468
    .line 469
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 470
    .line 471
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 472
    .line 473
    .line 474
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 475
    .line 476
    move-object v0, p1

    .line 477
    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 478
    .line 479
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->m()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_13

    .line 484
    .line 485
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->i:Ljava/util/HashMap;

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_13

    .line 492
    .line 493
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->g:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 494
    .line 495
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zaaa;->a:Ljava/util/Map;

    .line 496
    .line 497
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_12

    .line 502
    .line 503
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaa;->b:Ljava/util/Map;

    .line 504
    .line 505
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-nez v0, :cond_11

    .line 510
    .line 511
    goto :goto_5

    .line 512
    :cond_11
    const-string p0, "Timing out service connection."

    .line 513
    .line 514
    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 515
    .line 516
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    return v9

    .line 520
    :cond_12
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->k()V

    .line 521
    .line 522
    .line 523
    :cond_13
    return v9

    .line 524
    :pswitch_7
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    .line 526
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result p0

    .line 530
    if-eqz p0, :cond_22

    .line 531
    .line 532
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    .line 534
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabk;

    .line 539
    .line 540
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 541
    .line 542
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 543
    .line 544
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 545
    .line 546
    .line 547
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 548
    .line 549
    if-eqz v0, :cond_22

    .line 550
    .line 551
    if-eqz v0, :cond_14

    .line 552
    .line 553
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 554
    .line 555
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 556
    .line 557
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 558
    .line 559
    const/16 v3, 0xb

    .line 560
    .line 561
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 565
    .line 566
    const/16 v2, 0x9

    .line 567
    .line 568
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    iput-boolean v7, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 572
    .line 573
    :cond_14
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 574
    .line 575
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 576
    .line 577
    sget v1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->a:I

    .line 578
    .line 579
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(Landroid/content/Context;I)I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    const/16 v0, 0x12

    .line 584
    .line 585
    if-ne p1, v0, :cond_15

    .line 586
    .line 587
    const-string p1, "Connection timed out waiting for Google Play services update to complete."

    .line 588
    .line 589
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 590
    .line 591
    const/16 v1, 0x15

    .line 592
    .line 593
    invoke-direct {v0, v1, p1, v8, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 594
    .line 595
    .line 596
    goto :goto_6

    .line 597
    :cond_15
    const-string p1, "API failed to connect while resuming due to an unknown error."

    .line 598
    .line 599
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 600
    .line 601
    const/16 v1, 0x16

    .line 602
    .line 603
    invoke-direct {v0, v1, p1, v8, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 604
    .line 605
    .line 606
    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 607
    .line 608
    .line 609
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 610
    .line 611
    const-string p1, "Timing out connection while resuming."

    .line 612
    .line 613
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 614
    .line 615
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    return v9

    .line 619
    :pswitch_8
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->u:Landroidx/collection/ArraySet;

    .line 620
    .line 621
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    :cond_16
    :goto_7
    move-object v0, p1

    .line 626
    check-cast v0, Landroidx/collection/IndexBasedArrayIterator;

    .line 627
    .line 628
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    if-eqz v1, :cond_17

    .line 633
    .line 634
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 639
    .line 640
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    .line 645
    .line 646
    if-eqz v0, :cond_16

    .line 647
    .line 648
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabk;->p()V

    .line 649
    .line 650
    .line 651
    goto :goto_7

    .line 652
    :cond_17
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    .line 653
    .line 654
    .line 655
    return v9

    .line 656
    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    .line 658
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result p0

    .line 662
    if-eqz p0, :cond_22

    .line 663
    .line 664
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    .line 666
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object p0

    .line 670
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabk;

    .line 671
    .line 672
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 673
    .line 674
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 675
    .line 676
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 677
    .line 678
    .line 679
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 680
    .line 681
    if-eqz p1, :cond_22

    .line 682
    .line 683
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->q()V

    .line 684
    .line 685
    .line 686
    return v9

    .line 687
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApi;

    .line 690
    .line 691
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->a(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;

    .line 692
    .line 693
    .line 694
    return v9

    .line 695
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->n:Landroid/content/Context;

    .line 696
    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    instance-of v0, v0, Landroid/app/Application;

    .line 702
    .line 703
    if-eqz v0, :cond_22

    .line 704
    .line 705
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    check-cast p1, Landroid/app/Application;

    .line 710
    .line 711
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->a(Landroid/app/Application;)V

    .line 712
    .line 713
    .line 714
    sget-object p1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->n:Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    .line 715
    .line 716
    new-instance v0, Lcom/google/android/gms/common/api/internal/zabf;

    .line 717
    .line 718
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    monitor-enter p1

    .line 725
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->l:Ljava/util/ArrayList;

    .line 726
    .line 727
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 732
    .line 733
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 734
    .line 735
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-nez v1, :cond_1a

    .line 740
    .line 741
    sget-object v1, Lcom/google/android/gms/common/util/ProcessUtils;->b:Ljava/lang/Boolean;

    .line 742
    .line 743
    if-nez v1, :cond_18

    .line 744
    .line 745
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    sput-object v1, Lcom/google/android/gms/common/util/ProcessUtils;->b:Ljava/lang/Boolean;

    .line 754
    .line 755
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    if-nez v1, :cond_19

    .line 760
    .line 761
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 762
    .line 763
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 764
    .line 765
    .line 766
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {p1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 770
    .line 771
    .line 772
    move-result p1

    .line 773
    if-nez p1, :cond_1a

    .line 774
    .line 775
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 776
    .line 777
    const/16 v1, 0x64

    .line 778
    .line 779
    if-le p1, v1, :cond_1a

    .line 780
    .line 781
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 782
    .line 783
    .line 784
    goto :goto_8

    .line 785
    :cond_19
    move p1, v9

    .line 786
    goto :goto_9

    .line 787
    :cond_1a
    :goto_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 788
    .line 789
    .line 790
    move-result p1

    .line 791
    :goto_9
    if-nez p1, :cond_22

    .line 792
    .line 793
    iput-wide v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:J

    .line 794
    .line 795
    return v9

    .line 796
    :catchall_0
    move-exception p0

    .line 797
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    throw p0

    .line 799
    :pswitch_c
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 800
    .line 801
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 804
    .line 805
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    if-eqz v3, :cond_1c

    .line 818
    .line 819
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v3

    .line 823
    check-cast v3, Lcom/google/android/gms/common/api/internal/zabk;

    .line 824
    .line 825
    iget v4, v3, Lcom/google/android/gms/common/api/internal/zabk;->j:I

    .line 826
    .line 827
    if-ne v4, v1, :cond_1b

    .line 828
    .line 829
    goto :goto_a

    .line 830
    :cond_1c
    move-object v3, v8

    .line 831
    :goto_a
    if-eqz v3, :cond_1e

    .line 832
    .line 833
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 834
    .line 835
    const/16 v1, 0xd

    .line 836
    .line 837
    if-ne v0, v1, :cond_1d

    .line 838
    .line 839
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 840
    .line 841
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 842
    .line 843
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    sget-object p0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 847
    .line 848
    invoke-static {v0}, Lcom/google/android/gms/common/ConnectionResult;->a(I)Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object p0

    .line 852
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->m:Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    add-int/lit8 v0, v0, 0x45

    .line 863
    .line 864
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    .line 869
    .line 870
    add-int/2addr v0, v2

    .line 871
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 872
    .line 873
    .line 874
    const-string v0, "Error resolution was canceled by the user, original error message: "

    .line 875
    .line 876
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string p0, ": "

    .line 883
    .line 884
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object p0

    .line 894
    invoke-direct {v1, v6, p0, v8, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 898
    .line 899
    .line 900
    return v9

    .line 901
    :cond_1d
    iget-object p0, v3, Lcom/google/android/gms/common/api/internal/zabk;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 902
    .line 903
    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 904
    .line 905
    .line 906
    move-result-object p0

    .line 907
    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/internal/zabk;->j(Lcom/google/android/gms/common/api/Status;)V

    .line 908
    .line 909
    .line 910
    return v9

    .line 911
    :cond_1e
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object p0

    .line 915
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 916
    .line 917
    .line 918
    move-result p0

    .line 919
    new-instance p1, Ljava/lang/StringBuilder;

    .line 920
    .line 921
    add-int/lit8 p0, p0, 0x41

    .line 922
    .line 923
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 924
    .line 925
    .line 926
    const-string p0, "Could not find API instance "

    .line 927
    .line 928
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string p0, " while trying to fail enqueued calls."

    .line 935
    .line 936
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object p0

    .line 943
    new-instance p1, Ljava/lang/Exception;

    .line 944
    .line 945
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 946
    .line 947
    .line 948
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    .line 950
    .line 951
    return v9

    .line 952
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 953
    .line 954
    check-cast p1, Lcom/google/android/gms/common/api/internal/zacc;

    .line 955
    .line 956
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zacc;->c:Lcom/google/android/gms/common/api/GoogleApi;

    .line 957
    .line 958
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zacc;->a:Lcom/google/android/gms/common/api/internal/zag;

    .line 959
    .line 960
    iget-object v3, v0, Lcom/google/android/gms/common/api/GoogleApi;->f:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 961
    .line 962
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    check-cast v2, Lcom/google/android/gms/common/api/internal/zabk;

    .line 967
    .line 968
    if-nez v2, :cond_1f

    .line 969
    .line 970
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->a(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    :cond_1f
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/zabk;->e:Lcom/google/android/gms/common/api/Api$Client;

    .line 975
    .line 976
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->b()Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-eqz v0, :cond_20

    .line 981
    .line 982
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 983
    .line 984
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 985
    .line 986
    .line 987
    move-result p0

    .line 988
    iget p1, p1, Lcom/google/android/gms/common/api/internal/zacc;->b:I

    .line 989
    .line 990
    if-eq p0, p1, :cond_20

    .line 991
    .line 992
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->x:Lcom/google/android/gms/common/api/Status;

    .line 993
    .line 994
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zag;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabk;->p()V

    .line 998
    .line 999
    .line 1000
    return v9

    .line 1001
    :cond_20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/zabk;->o(Lcom/google/android/gms/common/api/internal/zac;)V

    .line 1002
    .line 1003
    .line 1004
    return v9

    .line 1005
    :pswitch_e
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p0

    .line 1009
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1010
    .line 1011
    .line 1012
    move-result-object p0

    .line 1013
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1014
    .line 1015
    .line 1016
    move-result p1

    .line 1017
    if-eqz p1, :cond_22

    .line 1018
    .line 1019
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object p1

    .line 1023
    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    .line 1024
    .line 1025
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabk;->p:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 1026
    .line 1027
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->v:Lcom/google/android/gms/internal/base/zao;

    .line 1028
    .line 1029
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->b(Landroid/os/Handler;)V

    .line 1030
    .line 1031
    .line 1032
    iput-object v8, p1, Lcom/google/android/gms/common/api/internal/zabk;->n:Lcom/google/android/gms/common/ConnectionResult;

    .line 1033
    .line 1034
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabk;->q()V

    .line 1035
    .line 1036
    .line 1037
    goto :goto_b

    .line 1038
    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1039
    .line 1040
    invoke-static {p0}, Lq;->e(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p0

    .line 1044
    throw p0

    .line 1045
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1046
    .line 1047
    check-cast p1, Ljava/lang/Boolean;

    .line 1048
    .line 1049
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1050
    .line 1051
    .line 1052
    move-result p1

    .line 1053
    if-eq v9, p1, :cond_21

    .line 1054
    .line 1055
    goto :goto_c

    .line 1056
    :cond_21
    const-wide/16 v4, 0x2710

    .line 1057
    .line 1058
    :goto_c
    iput-wide v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:J

    .line 1059
    .line 1060
    const/16 p1, 0xc

    .line 1061
    .line 1062
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v0

    .line 1073
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v2

    .line 1077
    if-eqz v2, :cond_22

    .line 1078
    .line 1079
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v2

    .line 1083
    check-cast v2, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 1084
    .line 1085
    invoke-virtual {v1, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    iget-wide v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->j:J

    .line 1090
    .line 1091
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1092
    .line 1093
    .line 1094
    goto :goto_d

    .line 1095
    :cond_22
    :goto_e
    return v9

    .line 1096
    nop

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
