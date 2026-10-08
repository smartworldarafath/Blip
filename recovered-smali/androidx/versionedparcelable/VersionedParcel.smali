.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/collection/ArrayMap;

.field public final b:Landroidx/collection/ArrayMap;

.field public final c:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->a:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->b:Landroidx/collection/ArrayMap;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->c:Landroidx/collection/ArrayMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcel;->c:Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Class;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "."

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, "Parcelizer"

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcel;->a:Landroidx/collection/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Method;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const-class v1, Landroidx/versionedparcelable/VersionedParcel;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "read"

    .line 26
    .line 27
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->b:Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/reflect/Method;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/Class;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    .line 23
    .line 24
    filled-new-array {p1, v0}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "write"

    .line 29
    .line 30
    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_0
    return-object v0
.end method

.method public final e(IZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final f([B)[B
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-gez p1, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    new-array p1, p1, [B

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public final g(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 9
    .line 10
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 13
    .line 14
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/CharSequence;

    .line 19
    .line 20
    return-object p0
.end method

.method public abstract h(I)Z
.end method

.method public final i(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final j(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final k(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final l()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->a()Landroidx/versionedparcelable/VersionedParcel;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->c(Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catch_2
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_3
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :goto_0
    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    .line 42
    .line 43
    invoke-static {v0, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :goto_1
    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    .line 48
    .line 49
    invoke-static {v0, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v0, v0, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    const-string v0, "VersionedParcel encountered InvocationTargetException"

    .line 62
    .line 63
    invoke-static {v0, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    throw p0

    .line 74
    :goto_3
    const-string v0, "VersionedParcel encountered IllegalAccessException"

    .line 75
    .line 76
    invoke-static {v0, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public abstract m(I)V
.end method

.method public final n(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o([B)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 3
    .line 4
    .line 5
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 p1, -0x1

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final p(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p0, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final q(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r(Landroid/os/Parcelable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    check-cast p0, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/Class;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, p0

    .line 25
    check-cast v2, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->a()Landroidx/versionedparcelable/VersionedParcel;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    check-cast v1, Landroidx/versionedparcelable/VersionedParcelParcel;

    .line 52
    .line 53
    iget-object p0, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->e:Landroid/os/Parcel;

    .line 54
    .line 55
    iget p1, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->i:I

    .line 56
    .line 57
    if-ltz p1, :cond_1

    .line 58
    .line 59
    iget-object v0, v1, Landroidx/versionedparcelable/VersionedParcelParcel;->d:Landroid/util/SparseIntArray;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sub-int v1, v0, p1

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void

    .line 81
    :catch_0
    move-exception p0

    .line 82
    const-string p1, "VersionedParcel encountered ClassNotFoundException"

    .line 83
    .line 84
    invoke-static {p1, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_1
    move-exception p0

    .line 89
    const-string p1, "VersionedParcel encountered NoSuchMethodException"

    .line 90
    .line 91
    invoke-static {p1, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catch_2
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    instance-of p1, p1, Ljava/lang/RuntimeException;

    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    const-string p1, "VersionedParcel encountered InvocationTargetException"

    .line 105
    .line 106
    invoke-static {p1, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Ljava/lang/RuntimeException;

    .line 115
    .line 116
    throw p0

    .line 117
    :catch_3
    move-exception p0

    .line 118
    const-string p1, "VersionedParcel encountered IllegalAccessException"

    .line 119
    .line 120
    invoke-static {p1, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_4
    move-exception p0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const-string v0, " does not have a Parcelizer"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p1, p0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
