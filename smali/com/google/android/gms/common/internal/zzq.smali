.class final Lcom/google/android/gms/common/internal/zzq;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final d:Ljava/util/HashMap;

.field public final e:Landroid/content/Context;

.field public volatile f:Lcom/google/android/gms/internal/common/zzg;

.field public final g:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field public final h:J

.field public final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/common/internal/zzp;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzq;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->e:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/common/zzg;

    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->f:Lcom/google/android/gms/internal/common/zzg;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->g:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 37
    .line 38
    const-wide/16 p1, 0x1388

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzq;->h:J

    .line 41
    .line 42
    const-wide/32 p1, 0x493e0

    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzq;->i:J

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/internal/zze;Ljava/lang/String;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/google/android/gms/common/internal/zzo;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/common/internal/zzo;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/zzo;-><init>(Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/internal/zzn;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->j:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {p0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzo;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->f:Lcom/google/android/gms/internal/common/zzg;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->j:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_5

    .line 48
    .line 49
    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->j:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget p0, v2, Lcom/google/android/gms/common/internal/zzo;->k:I

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    if-eq p0, p1, :cond_2

    .line 58
    .line 59
    const/4 p1, 0x2

    .line 60
    if-eq p0, p1, :cond_1

    .line 61
    .line 62
    :goto_0
    move-object p0, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzo;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object p0, v2, Lcom/google/android/gms/common/internal/zzo;->o:Landroid/content/ComponentName;

    .line 70
    .line 71
    iget-object p1, v2, Lcom/google/android/gms/common/internal/zzo;->m:Landroid/os/IBinder;

    .line 72
    .line 73
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/common/internal/zze;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    iget-boolean p1, v2, Lcom/google/android/gms/common/internal/zzo;->l:Z

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    sget-object p0, Lcom/google/android/gms/common/ConnectionResult;->o:Lcom/google/android/gms/common/ConnectionResult;

    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-object p0

    .line 85
    :cond_3
    if-nez p0, :cond_4

    .line 86
    .line 87
    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    .line 88
    .line 89
    const/4 p1, -0x1

    .line 90
    invoke-direct {p0, p1, v3, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    monitor-exit v0

    .line 94
    return-object p0

    .line 95
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzn;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    add-int/lit8 p2, p2, 0x51

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0
.end method
