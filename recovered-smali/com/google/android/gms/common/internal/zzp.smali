.class final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/common/internal/zzq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzp;->j:Lcom/google/android/gms/common/internal/zzq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "Timeout waiting for ServiceConnection callback "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzp;->j:Lcom/google/android/gms/common/internal/zzq;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/google/android/gms/common/internal/zzo;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    iget v2, p0, Lcom/google/android/gms/common/internal/zzo;->k:I

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-ne v2, v4, :cond_3

    .line 35
    .line 36
    const-string v2, "GmsClientSupervisor"

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/lit8 v5, v5, 0x2f

    .line 47
    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v4, Ljava/lang/Exception;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->o:Landroid/content/ComponentName;

    .line 72
    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 83
    .line 84
    new-instance v1, Landroid/content/ComponentName;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "unknown"

    .line 92
    .line 93
    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzo;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    monitor-exit v0

    .line 100
    return v3

    .line 101
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    throw p0

    .line 103
    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzp;->j:Lcom/google/android/gms/common/internal/zzq;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 106
    .line 107
    monitor-enter v0

    .line 108
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/google/android/gms/common/internal/zzo;

    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    iget-object v4, v1, Lcom/google/android/gms/common/internal/zzo;->j:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    iget-boolean v4, v1, Lcom/google/android/gms/common/internal/zzo;->l:Z

    .line 131
    .line 132
    if-eqz v4, :cond_5

    .line 133
    .line 134
    iget-object v4, v1, Lcom/google/android/gms/common/internal/zzo;->n:Lcom/google/android/gms/common/internal/zzn;

    .line 135
    .line 136
    iget-object v5, v1, Lcom/google/android/gms/common/internal/zzo;->p:Lcom/google/android/gms/common/internal/zzq;

    .line 137
    .line 138
    iget-object v6, v5, Lcom/google/android/gms/common/internal/zzq;->f:Lcom/google/android/gms/internal/common/zzg;

    .line 139
    .line 140
    invoke-virtual {v6, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v5, Lcom/google/android/gms/common/internal/zzq;->g:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 144
    .line 145
    iget-object v5, v5, Lcom/google/android/gms/common/internal/zzq;->e:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 148
    .line 149
    .line 150
    iput-boolean v2, v1, Lcom/google/android/gms/common/internal/zzo;->l:Z

    .line 151
    .line 152
    const/4 v2, 0x2

    .line 153
    iput v2, v1, Lcom/google/android/gms/common/internal/zzo;->k:I

    .line 154
    .line 155
    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzq;->d:Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catchall_1
    move-exception p0

    .line 162
    goto :goto_3

    .line 163
    :cond_6
    :goto_2
    monitor-exit v0

    .line 164
    return v3

    .line 165
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    throw p0
.end method
