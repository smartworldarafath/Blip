.class public abstract Lcom/google/android/gms/common/internal/zzz;
.super Lcom/google/android/gms/internal/common/zzb;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final c(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v2, :cond_7

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq p1, v3, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq p1, v3, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lcom/google/android/gms/common/internal/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    .line 24
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/common/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/google/android/gms/common/internal/zzj;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 31
    .line 32
    .line 33
    check-cast p0, Lcom/google/android/gms/common/internal/zzd;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 36
    .line 37
    const-string v5, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    .line 38
    .line 39
    invoke-static {p2, v5}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v4, p2, Lcom/google/android/gms/common/internal/BaseGmsClient;->v:Lcom/google/android/gms/common/internal/zzj;

    .line 46
    .line 47
    instance-of p2, p2, Lcom/google/android/gms/internal/cloudmessaging/zzd;

    .line 48
    .line 49
    if-eqz p2, :cond_5

    .line 50
    .line 51
    iget-object p2, v4, Lcom/google/android/gms/common/internal/zzj;->m:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    move-object p2, v1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->j:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 62
    .line 63
    :goto_0
    monitor-enter v5

    .line 64
    if-nez p2, :cond_4

    .line 65
    .line 66
    :try_start_0
    sget-object p2, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->c:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 67
    .line 68
    :cond_2
    :goto_1
    iput-object p2, v5, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    :cond_3
    monitor-exit v5

    .line 71
    goto :goto_3

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :try_start_1
    iget-object v6, v5, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 75
    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    iget v6, v6, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->j:I

    .line 79
    .line 80
    iget v7, p2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->j:I

    .line 81
    .line 82
    if-ge v6, v7, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_5
    :goto_3
    iget-object p2, v4, Lcom/google/android/gms/common/internal/zzj;->j:Landroid/os/Bundle;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 90
    .line 91
    const-string v5, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 92
    .line 93
    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 97
    .line 98
    iget v5, p0, Lcom/google/android/gms/common/internal/zzd;->e:I

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v6, Lcom/google/android/gms/common/internal/zzf;

    .line 104
    .line 105
    invoke-direct {v6, v4, p1, v3, p2}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    .line 109
    .line 110
    invoke-virtual {p1, v2, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    .line 125
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/common/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 132
    .line 133
    .line 134
    new-instance p0, Ljava/lang/Exception;

    .line 135
    .line 136
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string p1, "GmsClient"

    .line 140
    .line 141
    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    .line 142
    .line 143
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    .line 157
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/common/zzc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroid/os/Bundle;

    .line 162
    .line 163
    invoke-static {p2}, Lcom/google/android/gms/internal/common/zzc;->b(Landroid/os/Parcel;)V

    .line 164
    .line 165
    .line 166
    check-cast p0, Lcom/google/android/gms/common/internal/zzd;

    .line 167
    .line 168
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 169
    .line 170
    const-string v5, "onPostInitComplete can be called only once per call to getRemoteService"

    .line 171
    .line 172
    invoke-static {p2, v5}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 176
    .line 177
    iget v5, p0, Lcom/google/android/gms/common/internal/zzd;->e:I

    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v6, Lcom/google/android/gms/common/internal/zzf;

    .line 183
    .line 184
    invoke-direct {v6, p2, p1, v3, v4}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p2, Lcom/google/android/gms/common/internal/BaseGmsClient;->e:Landroid/os/Handler;

    .line 188
    .line 189
    invoke-virtual {p1, v2, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 194
    .line 195
    .line 196
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 197
    .line 198
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    return v2
.end method
