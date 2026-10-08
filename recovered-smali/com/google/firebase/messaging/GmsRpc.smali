.class Lcom/google/firebase/messaging/GmsRpc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/firebase/FirebaseApp;

.field public final b:Lcom/google/firebase/messaging/Metadata;

.field public final c:Lcom/google/android/gms/cloudmessaging/Rpc;

.field public final d:Lcom/google/firebase/inject/Provider;

.field public final e:Lcom/google/firebase/inject/Provider;

.field public final f:Lcom/google/firebase/installations/FirebaseInstallationsApi;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/Metadata;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/cloudmessaging/Rpc;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/firebase/messaging/GmsRpc;->a:Lcom/google/firebase/FirebaseApp;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/firebase/messaging/GmsRpc;->b:Lcom/google/firebase/messaging/Metadata;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/firebase/messaging/GmsRpc;->d:Lcom/google/firebase/inject/Provider;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/firebase/messaging/GmsRpc;->e:Lcom/google/firebase/inject/Provider;

    .line 23
    .line 24
    iput-object p5, p0, Lcom/google/firebase/messaging/GmsRpc;->f:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    const-string v1, "scope"

    .line 4
    .line 5
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "sender"

    .line 9
    .line 10
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "subtype"

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "gmp_app_id"

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->a:Lcom/google/firebase/FirebaseApp;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/firebase/FirebaseOptions;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "gmsv"

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->b:Lcom/google/firebase/messaging/Metadata;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/firebase/messaging/Metadata;->c()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "osv"

    .line 48
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "app_ver"

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->b:Lcom/google/firebase/messaging/Metadata;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/messaging/Metadata;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "app_ver_name"

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->b:Lcom/google/firebase/messaging/Metadata;

    .line 72
    .line 73
    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/messaging/Metadata;->c:Ljava/lang/String;

    .line 75
    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/firebase/messaging/Metadata;->f()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/firebase/messaging/Metadata;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    monitor-exit v0

    .line 88
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p1, "firebase-app-name-hash"

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/firebase/messaging/GmsRpc;->a:Lcom/google/firebase/FirebaseApp;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 96
    .line 97
    .line 98
    iget-object v0, v0, Lcom/google/firebase/FirebaseApp;->b:Ljava/lang/String;

    .line 99
    .line 100
    const-string v1, "SHA-1"

    .line 101
    .line 102
    :try_start_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/16 v1, 0xb

    .line 115
    .line 116
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    const-string v0, "[HASH-ERROR]"

    .line 122
    .line 123
    :goto_1
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz p3, :cond_1

    .line 127
    .line 128
    const-string p1, "Goog-Api-Key"

    .line 129
    .line 130
    iget-object p3, p0, Lcom/google/firebase/messaging/GmsRpc;->a:Lcom/google/firebase/FirebaseApp;

    .line 131
    .line 132
    invoke-virtual {p3}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 133
    .line 134
    .line 135
    iget-object p3, p3, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 136
    .line 137
    iget-object p3, p3, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/google/firebase/messaging/GmsRpc;->f:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 143
    .line 144
    check-cast p1, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/installations/FirebaseInstallations;->d()Lcom/google/android/gms/tasks/Task;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/google/firebase/installations/InstallationTokenResult;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-nez p3, :cond_2

    .line 165
    .line 166
    const-string p3, "Goog-Firebase-Installations-Auth"

    .line 167
    .line 168
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :catch_1
    move-exception p1

    .line 173
    goto :goto_2

    .line 174
    :catch_2
    move-exception p1

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    const-string p1, "FirebaseMessaging"

    .line 177
    .line 178
    const-string p3, "FIS auth token is empty"

    .line 179
    .line 180
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :goto_2
    const-string p3, "FirebaseMessaging"

    .line 185
    .line 186
    const-string v0, "Failed to get FIS auth token"

    .line 187
    .line 188
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .line 190
    .line 191
    :goto_3
    const-string p1, "appid"

    .line 192
    .line 193
    iget-object p3, p0, Lcom/google/firebase/messaging/GmsRpc;->f:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 194
    .line 195
    check-cast p3, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/google/firebase/installations/FirebaseInstallations;->c()Lcom/google/android/gms/tasks/Task;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    check-cast p3, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string p1, "cliv"

    .line 211
    .line 212
    const-string p3, "fcm-25.1.2"

    .line 213
    .line 214
    invoke-virtual {p2, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/google/firebase/messaging/GmsRpc;->e:Lcom/google/firebase/inject/Provider;

    .line 218
    .line 219
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 224
    .line 225
    iget-object p0, p0, Lcom/google/firebase/messaging/GmsRpc;->d:Lcom/google/firebase/inject/Provider;

    .line 226
    .line 227
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    check-cast p0, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    .line 232
    .line 233
    if-eqz p1, :cond_3

    .line 234
    .line 235
    if-eqz p0, :cond_3

    .line 236
    .line 237
    check-cast p1, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->a()Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    sget-object p3, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->k:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 244
    .line 245
    if-eq p1, p3, :cond_3

    .line 246
    .line 247
    const-string p3, "Firebase-Client-Log-Type"

    .line 248
    .line 249
    iget p1, p1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->j:I

    .line 250
    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string p1, "Firebase-Client"

    .line 259
    .line 260
    check-cast p0, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/google/firebase/platforminfo/DefaultUserAgentPublisher;->b()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_3
    return-void

    .line 270
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    throw p0
.end method
