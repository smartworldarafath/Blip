.class Lcom/google/firebase/messaging/TopicSubscriptionClient;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field public final b:Lcom/google/firebase/FirebaseApp;

.field public final c:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/installations/FirebaseInstallationsApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/messaging/TopicSubscriptionClient;->a:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/messaging/TopicSubscriptionClient;->b:Lcom/google/firebase/FirebaseApp;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/firebase/messaging/TopicSubscriptionClient;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-wide/16 v0, 0x1e

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/tasks/Tasks;->b(Lcom/google/android/gms/tasks/Task;J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/io/IOException;

    .line 10
    .line 11
    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 12
    .line 13
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/io/IOException;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    check-cast v0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw v0

    .line 33
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    check-cast v0, Ljava/io/IOException;

    .line 40
    .line 41
    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_8

    .line 2
    .line 3
    if-eqz p3, :cond_8

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/firebase/messaging/TopicSubscriptionClient;->b:Lcom/google/firebase/FirebaseApp;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->c:Lcom/google/firebase/FirebaseOptions;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/firebase/FirebaseOptions;->h:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 15
    .line 16
    .line 17
    iget-object p0, v0, Lcom/google/firebase/FirebaseOptions;->a:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_7

    .line 20
    .line 21
    new-instance v0, Ljava/net/URL;

    .line 22
    .line 23
    const-string v2, "/registrations/"

    .line 24
    .line 25
    const-string v3, "/topicSubscriptions/"

    .line 26
    .line 27
    const-string v4, "https://fcmregistrations.googleapis.com/v1/projects/"

    .line 28
    .line 29
    invoke-static {v4, v1, v2, p3, v3}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ":"

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p3, "FirebaseMessaging"

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-static {p3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v3, " for: "

    .line 59
    .line 60
    const-string v4, "Topic "

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const-string v2, " with url: "

    .line 65
    .line 66
    invoke-static {v4, p4, v3, p1, v2}, Lq;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 85
    .line 86
    const-string v2, "POST"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "x-goog-api-key"

    .line 92
    .line 93
    invoke-virtual {v0, v2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p0, "x-goog-firebase-installations-auth"

    .line 97
    .line 98
    invoke-virtual {v0, p0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 103
    .line 104
    .line 105
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 106
    .line 107
    .line 108
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    .line 111
    .line 112
    const/16 p2, 0xc8

    .line 113
    .line 114
    if-lt p0, p2, :cond_2

    .line 115
    .line 116
    const/16 p2, 0x12c

    .line 117
    .line 118
    if-ge p0, p2, :cond_2

    .line 119
    .line 120
    invoke-static {p3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_1

    .line 125
    .line 126
    const-string p0, " succeeded."

    .line 127
    .line 128
    invoke-static {v4, p4, v3, p1, p0}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :cond_1
    return-void

    .line 136
    :cond_2
    const/16 p1, 0x194

    .line 137
    .line 138
    if-eq p0, p1, :cond_5

    .line 139
    .line 140
    const/16 p1, 0x193

    .line 141
    .line 142
    if-ne p0, p1, :cond_3

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    const/16 p1, 0x1f4

    .line 146
    .line 147
    if-lt p0, p1, :cond_4

    .line 148
    .line 149
    const-string p0, "INTERNAL_SERVER_ERROR"

    .line 150
    .line 151
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 156
    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p3, " failed with status: "

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_5
    :goto_0
    invoke-static {p3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    const-string p1, " failed: "

    .line 186
    .line 187
    if-eqz p0, :cond_6

    .line 188
    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-static {v4, p4, p1, p0}, Lfe;->q(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :catchall_0
    move-exception p0

    .line 223
    goto :goto_1

    .line 224
    :catch_0
    move-exception p0

    .line 225
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 226
    .line 227
    const-string p2, "SERVICE_NOT_AVAILABLE"

    .line 228
    .line 229
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_7
    const-string p0, "Project ID or API Key is missing"

    .line 238
    .line 239
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_8
    const-string p0, "FIS auth token or FIS ID is empty"

    .line 244
    .line 245
    invoke-static {p0}, Lk8;->j(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method
