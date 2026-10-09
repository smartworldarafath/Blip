.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->h(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->l()Landroidx/versionedparcelable/VersionedParcelable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    .line 21
    .line 22
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->g(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->g(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 41
    .line 42
    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 43
    .line 44
    const/4 v2, 0x4

    .line 45
    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->j(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/app/PendingIntent;

    .line 50
    .line 51
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 52
    .line 53
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/VersionedParcel;->e(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 61
    .line 62
    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-virtual {p0, v2, v1}, Landroidx/versionedparcelable/VersionedParcel;->e(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iput-boolean p0, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 70
    .line 71
    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Landroidx/versionedparcelable/VersionedParcel;->m(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->t(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->p(Ljava/lang/CharSequence;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->p(Ljava/lang/CharSequence;I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->r(Landroid/os/Parcelable;I)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->n(IZ)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    invoke-virtual {p1, v0, p0}, Landroidx/versionedparcelable/VersionedParcel;->n(IZ)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
