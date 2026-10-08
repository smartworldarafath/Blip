.class public final Lcoil3/disk/DiskLruCache$fileSystem$1;
.super Lokio/ForwardingFileSystem;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final S(Lokio/Path;Z)Lokio/Sink;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lokio/Path;->c()Lokio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lokio/FileSystem;->n(Lokio/Path;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lokio/ForwardingFileSystem;->l:Lokio/FileSystem;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->S(Lokio/Path;Z)Lokio/Sink;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
