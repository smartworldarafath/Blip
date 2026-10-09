.class public final Lcom/google/android/gms/common/api/internal/zacm;
.super Lcom/google/android/gms/signin/internal/zac;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final k:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field public final g:Ljava/util/Set;

.field public final h:Lcom/google/android/gms/common/internal/ClientSettings;

.field public i:Lcom/google/android/gms/signin/zae;

.field public j:Lcom/google/android/gms/common/api/internal/zacl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/zad;->a:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/common/api/internal/zacm;->k:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/base/zao;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacm;->d:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacm;->e:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacm;->h:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 14
    .line 15
    iget-object p1, p3, Lcom/google/android/gms/common/internal/ClientSettings;->a:Ljava/util/Set;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacm;->g:Ljava/util/Set;

    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/common/api/internal/zacm;->k:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacm;->f:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacm;->j:Lcom/google/android/gms/common/api/internal/zacl;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabn;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabn;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabn;->b:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabk;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->l:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 24
    .line 25
    const/16 v0, 0x11

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p1, v0, v1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->m(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->c(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/signin/internal/SignInClientImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "<<default account>>"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->A:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v4, Landroid/accounts/Account;

    .line 18
    .line 19
    const-string v5, "com.google"

    .line 20
    .line 21
    invoke-direct {v4, v1, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->c:Landroid/content/Context;

    .line 33
    .line 34
    sget-object v5, Lcom/google/android/gms/auth/api/signin/internal/Storage;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v5, Lcom/google/android/gms/auth/api/signin/internal/Storage;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    sget-object v6, Lcom/google/android/gms/auth/api/signin/internal/Storage;->d:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 45
    .line 46
    if-nez v6, :cond_0

    .line 47
    .line 48
    new-instance v6, Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v6, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    sput-object v6, Lcom/google/android/gms/auth/api/signin/internal/Storage;->d:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/Storage;->d:Lcom/google/android/gms/auth/api/signin/internal/Storage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    .line 66
    .line 67
    const-string v5, "defaultGoogleSignInAccount"

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const/16 v8, 0x14

    .line 91
    .line 92
    add-int/2addr v8, v6

    .line 93
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .line 95
    .line 96
    const-string v6, "googleSignInAccount:"

    .line 97
    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v1, v5}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 115
    .line 116
    .line 117
    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 118
    goto :goto_3

    .line 119
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    goto :goto_4

    .line 125
    :catch_1
    :cond_2
    :goto_2
    move-object v1, v3

    .line 126
    :goto_3
    new-instance v5, Lcom/google/android/gms/common/internal/zaw;

    .line 127
    .line 128
    iget-object v6, v0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->C:Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/4 v7, 0x2

    .line 138
    invoke-direct {v5, v7, v4, v6, v1}, Lcom/google/android/gms/common/internal/zaw;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()Landroid/os/IInterface;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/google/android/gms/signin/internal/zaf;

    .line 146
    .line 147
    new-instance v1, Lcom/google/android/gms/signin/internal/zai;

    .line 148
    .line 149
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zaw;)V

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iget-object v5, v0, Lcom/google/android/gms/internal/base/zaa;->e:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget v5, Lcom/google/android/gms/internal/base/zac;->a:I

    .line 162
    .line 163
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/signin/internal/zai;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 174
    .line 175
    .line 176
    move-result-object v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    :try_start_5
    iget-object v0, v0, Lcom/google/android/gms/internal/base/zaa;->d:Landroid/os/IBinder;

    .line 178
    .line 179
    const/16 v6, 0xc

    .line 180
    .line 181
    invoke-interface {v0, v6, v4, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 185
    .line 186
    .line 187
    :try_start_6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catchall_1
    move-exception v0

    .line 195
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    .line 200
    .line 201
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 202
    :goto_4
    const-string v1, "Remote service probably died when signIn is called"

    .line 203
    .line 204
    const-string v4, "SignInClientImpl"

    .line 205
    .line 206
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    :try_start_7
    new-instance v1, Lcom/google/android/gms/signin/internal/zak;

    .line 210
    .line 211
    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    .line 212
    .line 213
    const/16 v6, 0x8

    .line 214
    .line 215
    invoke-direct {v5, v6, v3, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zay;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zacm;->j(Lcom/google/android/gms/signin/internal/zak;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :catch_2
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 226
    .line 227
    invoke-static {v4, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .line 229
    .line 230
    :goto_5
    return-void
.end method

.method public final g(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacm;->j:Lcom/google/android/gms/common/api/internal/zacl;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabn;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zack;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zack;-><init>(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/signin/internal/zak;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacm;->e:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
