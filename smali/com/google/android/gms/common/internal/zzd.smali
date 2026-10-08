.class public final Lcom/google/android/gms/common/internal/zzd;
.super Lcom/google/android/gms/common/internal/zzz;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public d:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd;->d:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 7
    .line 8
    iput p2, p0, Lcom/google/android/gms/common/internal/zzd;->e:I

    .line 9
    .line 10
    return-void
.end method
