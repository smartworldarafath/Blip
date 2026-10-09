.class final synthetic Lcom/google/android/gms/internal/cloudmessaging/zzl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

.field public final synthetic b:Lcom/google/android/gms/cloudmessaging/RegisterRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/cloudmessaging/RegisterRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->b:Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zzd;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cloudmessaging/zzi;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->a:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    .line 8
    .line 9
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/cloudmessaging/zzi;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, v1, Lcom/google/android/gms/common/api/GoogleApi;->a:Landroid/content/Context;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move p2, v1

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cloudmessaging/zzl;->b:Lcom/google/android/gms/cloudmessaging/RegisterRequest;

    .line 38
    .line 39
    iput p2, p0, Lcom/google/android/gms/cloudmessaging/RegisterRequest;->o:I

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()Landroid/os/IInterface;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zze;

    .line 46
    .line 47
    new-instance p2, Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-direct {p2, v2, v2, v1, v3}, Lcom/google/android/gms/common/api/ComplianceOptions;-><init>(IIIZ)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lcom/google/android/gms/common/api/ApiMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-boolean v1, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->b:Z

    .line 62
    .line 63
    iput-object p2, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a:Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a()Lcom/google/android/gms/common/api/ApiMetadata;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-instance v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v4, p2, Lcom/google/android/gms/common/api/ApiMetadata;->j:Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 75
    .line 76
    iput-object v4, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a:Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 77
    .line 78
    iget-boolean p2, p2, Lcom/google/android/gms/common/api/ApiMetadata;->l:Z

    .line 79
    .line 80
    iput-boolean p2, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->c:Z

    .line 81
    .line 82
    iput-boolean v3, v2, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->b:Z

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a()Lcom/google/android/gms/common/api/ApiMetadata;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v4, "com.google.android.gms.cloudmessaging.internal.ICloudMessagingService"

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget v4, Lcom/google/android/gms/internal/cloudmessaging/zzc;->a:I

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p0, v2, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/common/api/ApiMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/cloudmessaging/zza;->d:Landroid/os/IBinder;

    .line 119
    .line 120
    invoke-interface {p1, v3, v2, p0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 138
    .line 139
    .line 140
    throw p1
.end method
