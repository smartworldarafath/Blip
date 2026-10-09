.class public abstract Lcoil3/util/FileSystemsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lokio/FileSystem;Lokio/Path;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lokio/FileSystem;->E(Lokio/Path;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lokio/Path;

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {p0, v1}, Lokio/FileSystem;->O(Lokio/Path;)Lokio/FileMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-boolean v2, v2, Lokio/FileMetadata;->b:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-static {p0, v1}, Lcoil3/util/FileSystemsKt;->a(Lokio/FileSystem;Lokio/Path;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lokio/FileSystem;->v(Lokio/Path;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_2
    if-nez v0, :cond_0

    .line 41
    .line 42
    move-object v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-nez v0, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    throw v0

    .line 48
    :catch_1
    return-void
.end method
