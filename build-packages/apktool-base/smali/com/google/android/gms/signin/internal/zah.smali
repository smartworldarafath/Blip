.class public final Lcom/google/android/gms/signin/internal/zah;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->j(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move-object v1, v0

    .line 7
    move-object v2, v1

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v3, p0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-char v4, v3

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eq v4, v5, :cond_1

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->i(Landroid/os/Parcel;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->c(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->h(Landroid/os/Parcel;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    add-int/2addr v3, v1

    .line 51
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    .line 53
    .line 54
    move-object v1, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->e(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lcom/google/android/gms/signin/internal/zag;

    .line 60
    .line 61
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/signin/internal/zag;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zag;

    .line 2
    .line 3
    return-object p0
.end method
