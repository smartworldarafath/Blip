.class public final Lcom/google/android/gms/common/internal/zac;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->j(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v5, v0

    .line 10
    move v9, v5

    .line 11
    move v10, v9

    .line 12
    move-wide v7, v1

    .line 13
    move-object v6, v3

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge v0, p0, :cond_5

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-char v1, v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eq v1, v2, :cond_4

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->i(Landroid/os/Parcel;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->f(Landroid/os/Parcel;I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    move v10, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->g(Landroid/os/Parcel;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    move v9, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/16 v1, 0x8

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->k(Landroid/os/Parcel;II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    move-wide v7, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v6, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->g(Landroid/os/Parcel;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    move v5, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->e(Landroid/os/Parcel;I)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Lcom/google/android/gms/common/internal/zab;

    .line 83
    .line 84
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/common/internal/zab;-><init>(ILjava/lang/String;JIZ)V

    .line 85
    .line 86
    .line 87
    return-object v4
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zab;

    .line 2
    .line 3
    return-object p0
.end method
