.class public abstract Lio/github/vinceglb/filekit/PlatformFile_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "file"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    new-instance p0, Lio/github/vinceglb/filekit/PlatformFile;

    .line 34
    .line 35
    new-instance v0, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;-><init>(Ljava/io/File;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lio/github/vinceglb/filekit/PlatformFile;-><init>(Lio/github/vinceglb/filekit/AndroidFile;)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    new-instance v0, Lio/github/vinceglb/filekit/PlatformFile;

    .line 45
    .line 46
    new-instance v1, Lio/github/vinceglb/filekit/AndroidFile$UriWrapper;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lio/github/vinceglb/filekit/AndroidFile$UriWrapper;-><init>(Landroid/net/Uri;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lio/github/vinceglb/filekit/PlatformFile;-><init>(Lio/github/vinceglb/filekit/AndroidFile;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lio/github/vinceglb/filekit/PlatformFile;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "content://"

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "file://"

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lio/github/vinceglb/filekit/PlatformFile;

    .line 23
    .line 24
    new-instance v1, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;

    .line 25
    .line 26
    new-instance v2, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lio/github/vinceglb/filekit/PlatformFile;-><init>(Lio/github/vinceglb/filekit/AndroidFile;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->a(Landroid/net/Uri;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final c(Lio/github/vinceglb/filekit/PlatformFile;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lio/github/vinceglb/filekit/PlatformFile;->a:Lio/github/vinceglb/filekit/AndroidFile;

    .line 5
    .line 6
    instance-of v0, p0, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;

    .line 11
    .line 12
    iget-object p0, p0, Lio/github/vinceglb/filekit/AndroidFile$FileWrapper;->a:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget v0, Lkotlinx/io/files/PathsJvmKt;->a:I

    .line 22
    .line 23
    new-instance v0, Lkotlinx/io/files/Path;

    .line 24
    .line 25
    new-instance v1, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Lkotlinx/io/files/Path;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/io/files/Path;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    instance-of v0, p0, Lio/github/vinceglb/filekit/AndroidFile$UriWrapper;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    check-cast p0, Lio/github/vinceglb/filekit/AndroidFile$UriWrapper;

    .line 43
    .line 44
    iget-object p0, p0, Lio/github/vinceglb/filekit/AndroidFile$UriWrapper;->a:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    invoke-static {}, Lk8;->e()V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method
