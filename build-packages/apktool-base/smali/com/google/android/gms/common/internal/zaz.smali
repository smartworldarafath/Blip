.class public final Lcom/google/android/gms/common/internal/zaz;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->j(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v3, v0

    .line 8
    move v6, v3

    .line 9
    move v7, v6

    .line 10
    move-object v4, v1

    .line 11
    move-object v5, v4

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ge v0, p0, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-char v2, v0

    .line 23
    const/4 v8, 0x1

    .line 24
    if-eq v2, v8, :cond_5

    .line 25
    .line 26
    const/4 v8, 0x2

    .line 27
    if-eq v2, v8, :cond_3

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    if-eq v2, v8, :cond_2

    .line 31
    .line 32
    const/4 v8, 0x4

    .line 33
    if-eq v2, v8, :cond_1

    .line 34
    .line 35
    const/4 v8, 0x5

    .line 36
    if-eq v2, v8, :cond_0

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->i(Landroid/os/Parcel;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->f(Landroid/os/Parcel;I)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->f(Landroid/os/Parcel;I)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    .line 54
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, Lcom/google/android/gms/common/ConnectionResult;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->h(Landroid/os/Parcel;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    move-object v4, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    add-int/2addr v2, v0

    .line 79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->g(Landroid/os/Parcel;I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->e(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/google/android/gms/common/internal/zay;

    .line 92
    .line 93
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/common/internal/zay;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    .line 94
    .line 95
    .line 96
    return-object v2
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zay;

    .line 2
    .line 3
    return-object p0
.end method
