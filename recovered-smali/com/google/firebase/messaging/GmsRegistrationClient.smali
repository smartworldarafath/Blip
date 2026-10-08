.class Lcom/google/firebase/messaging/GmsRegistrationClient;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

.field public final b:Lcom/google/firebase/FirebaseApp;

.field public final c:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field public final d:Lcom/google/firebase/messaging/GmsRpc;

.field public final e:Lcom/google/firebase/messaging/Metadata;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/messaging/GmsRpc;Lcom/google/firebase/messaging/Metadata;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cloudmessaging/zzm;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->a:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->b:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/cloudmessaging/zzm;->j:Lcom/google/android/gms/common/api/Api;

    .line 8
    .line 9
    invoke-direct {v0, p1, v3, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->b:Lcom/google/firebase/FirebaseApp;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->c:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->d:Lcom/google/firebase/messaging/GmsRpc;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->e:Lcom/google/firebase/messaging/Metadata;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Exception;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->f()Ljava/lang/Exception;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->f()Ljava/lang/Exception;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/util/concurrent/ExecutionException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v1, "Unexpected Error"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 1
    const-string v0, "firebase_messaging_installation_id_enabled"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->b:Lcom/google/firebase/FirebaseApp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/16 v2, 0x80

    .line 21
    .line 22
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return p0

    .line 43
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final c()Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/GmsRegistrationClient;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->e:Lcom/google/firebase/messaging/Metadata;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/messaging/Metadata;->c()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0xf919880

    .line 14
    .line 15
    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 19
    .line 20
    const-string v1, "Firebase-Messaging-Network-Io"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->c:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 30
    .line 31
    check-cast v1, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/firebase/installations/FirebaseInstallations;->d()Lcom/google/android/gms/tasks/Task;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lcom/google/firebase/messaging/g;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v2, v3, p0, v0}, Lcom/google/firebase/messaging/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/google/firebase/messaging/g;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v2, v3, p0, v0}, Lcom/google/firebase/messaging/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/Task;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/GmsRegistrationClient;->d:Lcom/google/firebase/messaging/GmsRpc;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/firebase/messaging/GmsRpc;->a:Lcom/google/firebase/FirebaseApp;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/firebase/messaging/Metadata;->b(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    :try_start_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/firebase/messaging/GmsRpc;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;->b(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    new-instance v1, Lz2;

    .line 89
    .line 90
    const/4 v2, 0x2

    .line 91
    invoke-direct {v1, v2}, Lz2;-><init>(I)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lfe;

    .line 95
    .line 96
    const/16 v3, 0x17

    .line 97
    .line 98
    invoke-direct {v2, v3, p0}, Lfe;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method
