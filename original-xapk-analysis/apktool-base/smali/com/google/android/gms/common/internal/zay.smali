.class public final Lcom/google/android/gms/common/internal/zay;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final j:I

.field public final k:Landroid/os/IBinder;

.field public final l:Lcom/google/android/gms/common/ConnectionResult;

.field public final m:Z

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/zaz;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/common/internal/zay;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/common/internal/zay;->j:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zay;->k:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zay;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zay;->m:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zay;->n:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    if-ne p0, p1, :cond_1

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zay;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/zay;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zay;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 15
    .line 16
    iget-object v1, p1, Lcom/google/android/gms/common/internal/zay;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zay;->k:Landroid/os/IBinder;

    .line 28
    .line 29
    if-nez p0, :cond_3

    .line 30
    .line 31
    move-object v2, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    sget v2, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->d:I

    .line 34
    .line 35
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v3, v2, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    new-instance v2, Lcom/google/android/gms/common/internal/zzt;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p0, p1, Lcom/google/android/gms/common/internal/zay;->k:Landroid/os/IBinder;

    .line 52
    .line 53
    if-nez p0, :cond_5

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_5
    sget p1, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->d:I

    .line 57
    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of v0, p1, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    move-object v1, p1

    .line 67
    check-cast v1, Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    new-instance v1, Lcom/google/android/gms/common/internal/zzt;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/common/zza;-><init>(Landroid/os/IBinder;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_7

    .line 80
    .line 81
    :goto_2
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 84
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->g(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->f(Landroid/os/Parcel;II)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/gms/common/internal/zay;->j:I

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zay;->k:Landroid/os/IBinder;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x2

    .line 23
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->g(Landroid/os/Parcel;I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->h(Landroid/os/Parcel;I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v1, 0x3

    .line 34
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zay;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 35
    .line 36
    invoke-static {p1, v1, v3, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->f(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/zay;->m:Z

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x5

    .line 48
    invoke-static {p1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->f(Landroid/os/Parcel;II)V

    .line 49
    .line 50
    .line 51
    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/zay;->n:Z

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->h(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
