.class final Lcom/google/android/play/core/review/zzf;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic k:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic l:Lcom/google/android/play/core/review/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/review/zzf;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/review/zzf;->l:Lcom/google/android/play/core/review/zzi;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/google/android/play/core/review/internal/zzj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/review/zzf;->l:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/play/core/review/zzi;->a:Lcom/google/android/play/core/review/internal/zzt;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zzt;->m:Lcom/google/android/play/core/review/internal/zzf;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/play/core/review/zzi;->b:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v3, Lcom/google/android/play/core/review/zzj;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    const-class v3, Lcom/google/android/play/core/review/zzj;

    .line 17
    .line 18
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    sget-object v4, Lcom/google/android/play/core/review/zzj;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    const-string v5, "java"

    .line 22
    .line 23
    const/16 v6, 0x4e22

    .line 24
    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_2
    monitor-exit v3

    .line 33
    const-string v3, "playcore_version_code"

    .line 34
    .line 35
    const-string v5, "java"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v3, "native"

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    const-string v3, "playcore_native_version"

    .line 59
    .line 60
    const-string v5, "native"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    const-string v3, "unity"

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    const-string v3, "playcore_unity_version"

    .line 87
    .line 88
    const-string v5, "unity"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    :cond_1
    new-instance v3, Lcom/google/android/play/core/review/zzh;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/google/android/play/core/review/zzf;->l:Lcom/google/android/play/core/review/zzi;

    .line 106
    .line 107
    iget-object v5, p0, Lcom/google/android/play/core/review/zzf;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 108
    .line 109
    iget-object v6, v4, Lcom/google/android/play/core/review/zzi;->b:Ljava/lang/String;

    .line 110
    .line 111
    new-instance v6, Lcom/google/android/play/core/review/internal/zzi;

    .line 112
    .line 113
    const-string v7, "OnRequestInstallCallback"

    .line 114
    .line 115
    invoke-direct {v6, v7}, Lcom/google/android/play/core/review/internal/zzi;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/play/core/review/zzg;-><init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 119
    .line 120
    .line 121
    check-cast v1, Lcom/google/android/play/core/review/internal/zzd;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "com.google.android.play.core.inappreview.protocol.IInAppReviewService"

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget v0, Lcom/google/android/play/core/review/internal/zzc;->a:I

    .line 139
    .line 140
    const/4 v0, 0x1

    .line 141
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    .line 151
    :try_start_3
    iget-object v1, v1, Lcom/google/android/play/core/review/internal/zza;->d:Landroid/os/IBinder;

    .line 152
    .line 153
    const/4 v2, 0x2

    .line 154
    const/4 v3, 0x0

    .line 155
    invoke-interface {v1, v2, v4, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    .line 157
    .line 158
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :catchall_0
    move-exception v0

    .line 163
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 164
    .line 165
    .line 166
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    :catchall_1
    move-exception v0

    .line 168
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 169
    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 170
    :goto_1
    iget-object v1, p0, Lcom/google/android/play/core/review/zzf;->l:Lcom/google/android/play/core/review/zzi;

    .line 171
    .line 172
    sget-object v2, Lcom/google/android/play/core/review/zzi;->c:Lcom/google/android/play/core/review/internal/zzi;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/google/android/play/core/review/zzi;->b:Ljava/lang/String;

    .line 175
    .line 176
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v3, "error requesting in-app review for %s"

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    const-string v4, "PlayCore"

    .line 186
    .line 187
    const/4 v5, 0x6

    .line 188
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_2

    .line 193
    .line 194
    iget-object v2, v2, Lcom/google/android/play/core/review/internal/zzi;->a:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v2, v3, v1}, Lcom/google/android/play/core/review/internal/zzi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    :cond_2
    iget-object p0, p0, Lcom/google/android/play/core/review/zzf;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 204
    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    .line 206
    .line 207
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Exception;)Z

    .line 211
    .line 212
    .line 213
    return-void
.end method
