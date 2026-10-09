.class final synthetic Lcom/google/android/gms/common/internal/service/zas;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/service/zas;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/common/internal/service/zau;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/common/internal/service/zak;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/google/android/gms/internal/base/zac;->a:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iget-object p0, p0, Lcom/google/android/gms/common/internal/service/zas;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/base/zaa;->d:Landroid/os/IBinder;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
