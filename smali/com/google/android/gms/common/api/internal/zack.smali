.class final Lcom/google/android/gms/common/api/internal/zack;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lcom/google/android/gms/signin/internal/zak;

.field public final synthetic k:Lcom/google/android/gms/common/api/internal/zacm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacm;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zack;->j:Lcom/google/android/gms/signin/internal/zak;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zack;->k:Lcom/google/android/gms/common/api/internal/zacm;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zack;->k:Lcom/google/android/gms/common/api/internal/zacm;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zack;->j:Lcom/google/android/gms/signin/internal/zak;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zak;->k:Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    .line 10
    iget v2, v1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 11
    .line 12
    if-nez v2, :cond_5

    .line 13
    .line 14
    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zak;->l:Lcom/google/android/gms/common/internal/zay;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zay;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    .line 21
    iget v2, v1, Lcom/google/android/gms/common/ConnectionResult;->k:I

    .line 22
    .line 23
    if-nez v2, :cond_4

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacm;->j:Lcom/google/android/gms/common/api/internal/zacl;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zay;->k:Landroid/os/IBinder;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget v3, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->d:I

    .line 35
    .line 36
    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 37
    .line 38
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    instance-of v4, v3, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    check-cast v3, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v3, Lcom/google/android/gms/common/internal/zzt;

    .line 50
    .line 51
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->g:Ljava/util/Set;

    .line 55
    .line 56
    check-cast v1, Lcom/google/android/gms/common/api/internal/zabn;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabn;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 67
    .line 68
    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/zabn;->d:Ljava/util/Set;

    .line 69
    .line 70
    iget-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zabn;->e:Z

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabn;->a:Lcom/google/android/gms/common/api/Api$Client;

    .line 75
    .line 76
    check-cast v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 77
    .line 78
    invoke-virtual {v1, v3, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/Exception;

    .line 83
    .line 84
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "GoogleApiManager"

    .line 88
    .line 89
    const-string v4, "Received null response from onSignInSuccess"

    .line 90
    .line 91
    invoke-static {v3, v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    .line 95
    .line 96
    const/4 v3, 0x4

    .line 97
    invoke-direct {p0, v3, v2, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance v2, Ljava/lang/Exception;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v3, "SignInCoordinator"

    .line 114
    .line 115
    const-string v4, "Sign-in succeeded with resolve account failure: "

    .line 116
    .line 117
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->j:Lcom/google/android/gms/common/api/internal/zacl;

    .line 125
    .line 126
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabn;

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 132
    .line 133
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->d()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_5
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->j:Lcom/google/android/gms/common/api/internal/zacl;

    .line 140
    .line 141
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabn;

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabn;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_2
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zacm;->i:Lcom/google/android/gms/signin/zae;

    .line 147
    .line 148
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->d()V

    .line 151
    .line 152
    .line 153
    return-void
.end method
