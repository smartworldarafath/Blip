.class abstract Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzc;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final d:I

.field public final e:Landroid/os/Bundle;

.field public final synthetic f:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->f:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/common/internal/zza;->d:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zza;->e:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b(Lcom/google/android/gms/common/ConnectionResult;)V
.end method
