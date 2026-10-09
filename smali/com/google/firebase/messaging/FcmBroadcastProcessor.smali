.class public Lcom/google/firebase/messaging/FcmBroadcastProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Lcom/google/firebase/messaging/WithinAppServiceConnection;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lz2;


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
    sput-object v0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lz2;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p1, v0}, Lz2;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->b:Lz2;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "FirebaseMessaging"

    .line 11
    .line 12
    const-string v1, "Binding to service"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->c:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->d:Lcom/google/firebase/messaging/WithinAppServiceConnection;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/google/firebase/messaging/WithinAppServiceConnection;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/WithinAppServiceConnection;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->d:Lcom/google/firebase/messaging/WithinAppServiceConnection;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->d:Lcom/google/firebase/messaging/WithinAppServiceConnection;

    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const/4 v0, 0x2

    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    invoke-static {}, Lcom/google/firebase/messaging/ServiceStarter;->a()Lcom/google/firebase/messaging/ServiceStarter;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/ServiceStarter;->c(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    sget-object p2, Lcom/google/firebase/messaging/WakeLockHolder;->a:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p2

    .line 53
    :try_start_1
    invoke-static {p0}, Lcom/google/firebase/messaging/WakeLockHolder;->a(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    const-string v2, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    if-nez p0, :cond_2

    .line 70
    .line 71
    sget-object p0, Lcom/google/firebase/messaging/WakeLockHolder;->b:Lcom/google/android/gms/stats/WakeLock;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/stats/WakeLock;->a()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection;->b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v1, Lcom/google/firebase/messaging/f;

    .line 84
    .line 85
    invoke-direct {v1, v0, p1}, Lcom/google/firebase/messaging/f;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 89
    .line 90
    .line 91
    monitor-exit p2

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    throw p0

    .line 95
    :cond_3
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection;->b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 96
    .line 97
    .line 98
    :goto_3
    const/4 p0, -0x1

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection;->b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    new-instance p1, Lz2;

    .line 113
    .line 114
    invoke-direct {p1, v0}, Lz2;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Lf7;

    .line 118
    .line 119
    const/16 v0, 0x1b

    .line 120
    .line 121
    invoke-direct {p2, v0}, Lf7;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw p0
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 1
    const-string v0, "gcm.rawData64"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v3, "rawData"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 29
    .line 30
    const/16 v3, 0x1a

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-lt v1, v3, :cond_1

    .line 34
    .line 35
    move v1, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/high16 v5, 0x10000000

    .line 43
    .line 44
    and-int/2addr v3, v5

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    move v2, v4

    .line 48
    :cond_2
    if-eqz v1, :cond_3

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    invoke-static {v0, p1, v2}, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->a(Landroid/content/Context;Landroid/content/Intent;Z)Lcom/google/android/gms/tasks/Task;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_3
    new-instance v1, Lcom/google/firebase/messaging/a;

    .line 58
    .line 59
    invoke-direct {v1, v0, p1}, Lcom/google/firebase/messaging/a;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/google/firebase/messaging/FcmBroadcastProcessor;->b:Lz2;

    .line 63
    .line 64
    invoke-static {p0, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v3, Lh8;

    .line 69
    .line 70
    invoke-direct {v3, v0, p1, v2}, Lh8;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0, v3}, Lcom/google/android/gms/tasks/Task;->e(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
