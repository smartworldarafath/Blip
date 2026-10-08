.class public final synthetic Lcom/google/firebase/installations/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/firebase/installations/FirebaseInstallations;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/installations/FirebaseInstallations;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/installations/a;->j:Lcom/google/firebase/installations/FirebaseInstallations;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/google/firebase/installations/a;->j:Lcom/google/firebase/installations/FirebaseInstallations;

    .line 2
    .line 3
    sget-object v0, Lcom/google/firebase/installations/FirebaseInstallations;->m:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/firebase/installations/CrossProcessLock;->a(Landroid/content/Context;)Lcom/google/firebase/installations/CrossProcessLock;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/FirebaseInstallations;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallation;->c()Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :try_start_2
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->b()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_c

    .line 31
    .line 32
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->f()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->i()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/installations/FirebaseInstallations;->d:Lcom/google/firebase/installations/Utils;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/Utils;->a(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->b(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/FirebaseInstallations;->h(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 64
    .line 65
    .line 66
    move-result-object v1
    :try_end_3
    .catch Lcom/google/firebase/installations/FirebaseInstallationsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    :goto_2
    monitor-enter v0

    .line 68
    :try_start_4
    iget-object v3, p0, Lcom/google/firebase/installations/FirebaseInstallations;->a:Lcom/google/firebase/FirebaseApp;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->a()V

    .line 71
    .line 72
    .line 73
    iget-object v3, v3, Lcom/google/firebase/FirebaseApp;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v3}, Lcom/google/firebase/installations/CrossProcessLock;->a(Landroid/content/Context;)Lcom/google/firebase/installations/CrossProcessLock;

    .line 76
    .line 77
    .line 78
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    :try_start_5
    iget-object v4, p0, Lcom/google/firebase/installations/FirebaseInstallations;->c:Lcom/google/firebase/installations/local/PersistedInstallation;

    .line 80
    .line 81
    invoke-virtual {v4, v1}, Lcom/google/firebase/installations/local/PersistedInstallation;->b(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 82
    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    :try_start_6
    invoke-virtual {v3}, Lcom/google/firebase/installations/CrossProcessLock;->b()V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto/16 :goto_a

    .line 92
    .line 93
    :cond_4
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 94
    monitor-enter p0

    .line 95
    :try_start_7
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->h()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v3, 0x1

    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_5
    invoke-virtual {v2}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->h()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    xor-int/2addr v3, v0

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    const/4 v3, 0x0

    .line 134
    :goto_4
    if-eqz v3, :cond_a

    .line 135
    .line 136
    iget-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->k:Ljava/util/HashSet;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_a

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lcom/google/firebase/installations/internal/FidListener;

    .line 153
    .line 154
    check-cast v2, Lm8;

    .line 155
    .line 156
    iget-object v2, v2, Lm8;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 157
    .line 158
    const-string v3, "FirebaseMessaging"

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()Lcom/google/firebase/messaging/Store$Token;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    if-nez v4, :cond_7

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    const/4 v4, 0x3

    .line 168
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_8

    .line 173
    .line 174
    const-string v4, "FID Change detected! Triggering re-sync"

    .line 175
    .line 176
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    :cond_8
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 180
    :try_start_8
    iget-boolean v3, v2, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    .line 181
    .line 182
    if-nez v3, :cond_9

    .line 183
    .line 184
    const-wide/16 v3, 0x0

    .line 185
    .line 186
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :catchall_2
    move-exception v0

    .line 191
    goto :goto_7

    .line 192
    :cond_9
    :goto_6
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 193
    goto :goto_5

    .line 194
    :goto_7
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 195
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 196
    :catchall_3
    move-exception v0

    .line 197
    goto :goto_9

    .line 198
    :cond_a
    monitor-exit p0

    .line 199
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->h()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_b

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->c()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    monitor-enter p0

    .line 210
    :try_start_c
    iput-object v0, p0, Lcom/google/firebase/installations/FirebaseInstallations;->j:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 211
    .line 212
    monitor-exit p0

    .line 213
    goto :goto_8

    .line 214
    :catchall_4
    move-exception v0

    .line 215
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 216
    throw v0

    .line 217
    :cond_b
    :goto_8
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->f()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_c

    .line 222
    .line 223
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->i(Ljava/lang/Exception;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_c
    invoke-virtual {v1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->g()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_d

    .line 237
    .line 238
    new-instance v0, Ljava/io/IOException;

    .line 239
    .line 240
    const-string v1, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    .line 241
    .line 242
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->i(Ljava/lang/Exception;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_d
    invoke-virtual {p0, v1}, Lcom/google/firebase/installations/FirebaseInstallations;->j(Lcom/google/firebase/installations/local/PersistedInstallationEntry;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :goto_9
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 254
    throw v0

    .line 255
    :catchall_5
    move-exception p0

    .line 256
    if-eqz v3, :cond_e

    .line 257
    .line 258
    :try_start_f
    invoke-virtual {v3}, Lcom/google/firebase/installations/CrossProcessLock;->b()V

    .line 259
    .line 260
    .line 261
    :cond_e
    throw p0

    .line 262
    :goto_a
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 263
    throw p0

    .line 264
    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/firebase/installations/FirebaseInstallations;->i(Ljava/lang/Exception;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :catchall_6
    move-exception p0

    .line 269
    if-eqz v1, :cond_f

    .line 270
    .line 271
    :try_start_10
    invoke-virtual {v1}, Lcom/google/firebase/installations/CrossProcessLock;->b()V

    .line 272
    .line 273
    .line 274
    :cond_f
    throw p0

    .line 275
    :goto_c
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 276
    throw p0
.end method
