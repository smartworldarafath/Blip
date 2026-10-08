.class public Lcom/google/firebase/installations/FirebaseInstallations;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/installations/FirebaseInstallationsApi;


# static fields
.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

.field public final c:Lcom/google/firebase/installations/local/PersistedInstallation;

.field public final d:Lcom/google/firebase/installations/Utils;

.field public final e:Lcom/google/firebase/components/Lazy;

.field public final f:Lcom/google/firebase/installations/RandomFidGenerator;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/HashSet;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->m:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallations$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/firebase/installations/FirebaseInstallations$1;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;-><init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lcom/google/firebase/installations/local/PersistedInstallation;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/google/firebase/installations/time/SystemClock;->a:Lcom/google/firebase/installations/time/SystemClock;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Lcom/google/firebase/installations/time/SystemClock;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/google/firebase/installations/time/SystemClock;->a:Lcom/google/firebase/installations/time/SystemClock;

    .line 26
    .line 27
    :cond_0
    sget-object v1, Lcom/google/firebase/installations/time/SystemClock;->a:Lcom/google/firebase/installations/time/SystemClock;

    .line 28
    .line 29
    sget-object v2, Lcom/google/firebase/installations/Utils;->c:Lcom/google/firebase/installations/Utils;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lcom/google/firebase/installations/Utils;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lcom/google/firebase/installations/Utils;-><init>(Lcom/google/firebase/installations/time/SystemClock;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/google/firebase/installations/Utils;->c:Lcom/google/firebase/installations/Utils;

    .line 39
    .line 40
    :cond_1
    sget-object v1, Lcom/google/firebase/installations/Utils;->c:Lcom/google/firebase/installations/Utils;

    .line 41
    .line 42
    new-instance v2, Lcom/google/firebase/components/Lazy;

    .line 43
    .line 44
    new-instance v3, Lm5;

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    invoke-direct {v3, v4, p1}, Lm5;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lcom/google/firebase/installations/RandomFidGenerator;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/lang/Object;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->g:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v4, Ljava/util/HashSet;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->k:Ljava/util/HashSet;

    .line 74
    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->l:Ljava/util/ArrayList;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->b:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 85
    .line 86
    iput-object p2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->d:Lcom/google/firebase/installations/Utils;

    .line 89
    .line 90
    iput-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->e:Lcom/google/firebase/components/Lazy;

    .line 91
    .line 92
    iput-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->f:Lcom/google/firebase/installations/RandomFidGenerator;

    .line 93
    .line 94
    iput-object p3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->h:Ljava/util/concurrent/ExecutorService;

    .line 95
    .line 96
    iput-object p4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->i:Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/firebase/installations/CrossProcessLock;->a(Landroid/content/Context;)Lcom/google/firebase/installations/CrossProcessLock;

    .line 12
    .line 13
    .line 14
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->c()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->f(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->p(Ljava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v4, v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->b(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->b()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->j(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->i:Ljava/util/concurrent/Executor;

    .line 56
    .line 57
    new-instance v1, Lcom/google/firebase/installations/a;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/google/firebase/installations/a;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_2
    if-eqz v1, :cond_2

    .line 67
    .line 68
    :try_start_3
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->b()V

    .line 69
    .line 70
    .line 71
    :cond_2
    throw p0

    .line 72
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    throw p0
.end method

.method public final b(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->b:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 19
    .line 20
    .line 21
    iget-object v3, v3, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/google/firebase/FirebaseOptions;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->a()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    if-eq v1, v0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    if-ne v1, v0, :cond_0

    .line 48
    .line 49
    monitor-enter p0

    .line 50
    const/4 v0, 0x0

    .line 51
    :try_start_0
    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->n()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move-object p1, v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1

    .line 63
    :cond_0
    new-instance p0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 64
    .line 65
    const-string p1, "Firebase Installations Service is unavailable. Please try again later."

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->m()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/TokenResult;->c()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    iget-object p0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->d:Lcom/google/firebase/installations/Utils;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/google/firebase/installations/Utils;->a:Lcom/google/firebase/installations/time/Clock;

    .line 87
    .line 88
    check-cast p0, Lcom/google/firebase/installations/time/SystemClock;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    const-wide/16 v6, 0x3e8

    .line 98
    .line 99
    div-long/2addr v3, v6

    .line 100
    move-object v0, p1

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->l(JJLjava/lang/String;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public final c()Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->e()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/google/firebase/installations/GetIdListener;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/google/firebase/installations/GetIdListener;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->g:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_1
    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->l:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->h:Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    new-instance v2, Ll8;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, p0, v3}, Ll8;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    throw v0
.end method

.method public final d()Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/installations/FirebaseInstallations;->e()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/installations/GetAuthTokenListener;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->d:Lcom/google/firebase/installations/Utils;

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lcom/google/firebase/installations/GetAuthTokenListener;-><init>(Lcom/google/firebase/installations/Utils;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->g:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->l:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->h:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    new-instance v2, Ll8;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, p0, v3}, Ll8;-><init>(Lcom/google/firebase/installations/FirebaseInstallations;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/firebase/FirebaseOptions;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/firebase/FirebaseOptions;->h:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/firebase/FirebaseOptions;->b:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v3, Lcom/google/firebase/installations/Utils;->b:Ljava/util/regex/Pattern;

    .line 47
    .line 48
    const-string v3, ":"

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v0, Lcom/google/firebase/installations/Utils;->b:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {v2, p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final f(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/firebase/FirebaseApp;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "CHIME_ANDROID_SDK"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->f:Lcom/google/firebase/installations/RandomFidGenerator;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 19
    .line 20
    .line 21
    const-string v0, "[DEFAULT]"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->j()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/google/firebase/installations/RandomFidGenerator;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    iget-object p0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->e:Lcom/google/firebase/components/Lazy;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/google/firebase/installations/local/IidStore;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/google/firebase/installations/local/IidStore;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 52
    .line 53
    sget-object p1, Lcom/google/firebase/installations/local/IidStore;->d:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/datastorage/JavaDataStorage;->c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Long;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    move-object v0, p1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const-string p1, "ContentValues"

    .line 67
    .line 68
    sget-object v1, Lcom/google/firebase/installations/local/IidStore;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 69
    .line 70
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/datastorage/JavaDataStorage;->c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Long;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/String;

    .line 75
    .line 76
    if-nez p0, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const/16 v1, 0x8

    .line 80
    .line 81
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v2, "RSA"

    .line 86
    .line 87
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    .line 92
    .line 93
    invoke-direct {v4, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 97
    .line 98
    .line 99
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p0

    .line 102
    goto :goto_0

    .line 103
    :catch_1
    move-exception p0

    .line 104
    goto :goto_0

    .line 105
    :catch_2
    move-exception p0

    .line 106
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "Invalid key stored "

    .line 109
    .line 110
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-object p0, v0

    .line 124
    :goto_1
    if-nez p0, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    :try_start_1
    const-string v2, "SHA1"

    .line 132
    .line 133
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const/4 v2, 0x0

    .line 142
    aget-byte v4, p0, v2

    .line 143
    .line 144
    and-int/lit8 v4, v4, 0xf

    .line 145
    .line 146
    add-int/lit8 v4, v4, 0x70

    .line 147
    .line 148
    and-int/lit16 v4, v4, 0xff

    .line 149
    .line 150
    int-to-byte v4, v4

    .line 151
    aput-byte v4, p0, v2

    .line 152
    .line 153
    const/16 v4, 0xb

    .line 154
    .line 155
    invoke-static {p0, v2, v1, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    .line 159
    goto :goto_2

    .line 160
    :catch_3
    const-string p0, "Unexpected error, device missing required algorithms"

    .line 161
    .line 162
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_6

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/google/firebase/installations/RandomFidGenerator;->a()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :cond_6
    return-object v0
.end method

.method public final declared-synchronized g(Lm8;)Lcom/google/firebase/installations/internal/FidListenerHandle;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->k:Ljava/util/HashSet;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallations$2;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method public final h(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0xb

    .line 17
    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->e:Lcom/google/firebase/components/Lazy;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/firebase/installations/local/IidStore;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/google/firebase/installations/local/IidStore;->e:[Ljava/lang/String;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-ge v4, v3, :cond_2

    .line 36
    .line 37
    aget-object v5, v2, v4

    .line 38
    .line 39
    iget-object v6, v0, Lcom/google/firebase/installations/local/IidStore;->b:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v8, "|T|"

    .line 44
    .line 45
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v6, "|"

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance v6, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 64
    .line 65
    invoke-direct {v6, v5}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v5, v0, Lcom/google/firebase/installations/local/IidStore;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 69
    .line 70
    invoke-virtual {v5, v6, v1}, Lcom/google/firebase/datastorage/JavaDataStorage;->c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Long;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_1

    .line 83
    .line 84
    const-string v0, "{"

    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 93
    .line 94
    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "token"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    move-object v1, v5

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    :cond_2
    :goto_1
    move-object v7, v1

    .line 110
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 116
    .line 117
    iget-object v3, v1, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 127
    .line 128
    iget-object v5, v1, Lcom/google/firebase/FirebaseOptions;->h:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 131
    .line 132
    .line 133
    iget-object v0, v0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 134
    .line 135
    iget-object v6, v0, Lcom/google/firebase/FirebaseOptions;->b:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->b:Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;

    .line 138
    .line 139
    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->d()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    const/4 p0, 0x1

    .line 154
    if-ne v1, p0, :cond_3

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->m()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :cond_3
    new-instance p0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 162
    .line 163
    const-string p1, "Firebase Installations Service is unavailable. Please try again later."

    .line 164
    .line 165
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->b()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->c()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object p0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->d:Lcom/google/firebase/installations/Utils;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/google/firebase/installations/Utils;->a:Lcom/google/firebase/installations/time/Clock;

    .line 180
    .line 181
    check-cast p0, Lcom/google/firebase/installations/time/SystemClock;

    .line 182
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    const-wide/16 v5, 0x3e8

    .line 191
    .line 192
    div-long/2addr v3, v5

    .line 193
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->a()Lcom/google/firebase/installations/remote/TokenResult;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Lcom/google/firebase/installations/remote/TokenResult;->b()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/InstallationResponse;->a()Lcom/google/firebase/installations/remote/TokenResult;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p0}, Lcom/google/firebase/installations/remote/TokenResult;->c()J

    .line 206
    .line 207
    .line 208
    move-result-wide v6

    .line 209
    move-object v0, p1

    .line 210
    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->o(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/firebase/installations/StateListener;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lcom/google/firebase/installations/StateListener;->a(Ljava/lang/Exception;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final j(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/google/firebase/installations/StateListener;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lcom/google/firebase/installations/StateListener;->b(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
