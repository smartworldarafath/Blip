.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/ParcelableSnapshotMutableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/compose/runtime/ParcelableSnapshotMutableState<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public static a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-class p1, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne p0, v1, :cond_1

    .line 26
    .line 27
    sget-object p0, Landroidx/compose/runtime/ReferentialEqualityPolicy;->a:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p1, "Unsupported MutableState policy "

    .line 31
    .line 32
    const-string v0, " was restored"

    .line 33
    .line 34
    invoke-static {p1, p0, v0}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget-object p0, Landroidx/compose/runtime/NeverEqualPolicy;->a:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 47
    .line 48
    :goto_0
    invoke-direct {v0, p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-static {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState$Companion$CREATOR$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    return-object p0
.end method
