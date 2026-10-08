.class public final Lbsarchive/AnyItem$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsarchive/AnyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lbsarchive/AnyItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/4 p0, 0x0

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, v2

    .line 11
    move-object v4, v3

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->h()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/4 v6, -0x1

    .line 17
    if-eq v5, v6, :cond_4

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v5, v6, :cond_3

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    if-eq v5, v6, :cond_2

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v5, v6, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x4

    .line 29
    if-eq v5, v6, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->o(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v4, Lbsarchive/FolderStub;->o:Lbsarchive/FolderStub$Companion$ADAPTER$1;

    .line 36
    .line 37
    invoke-virtual {v4, p1}, Lbsarchive/FolderStub$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v3, Lbsarchive/Link;->n:Lbsarchive/Link$Companion$ADAPTER$1;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Lbsarchive/Link$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v2, Lbsarchive/Folder;->m:Lbsarchive/Folder$Companion$ADAPTER$1;

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lbsarchive/Folder$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget-object p0, Lbsarchive/File;->p:Lbsarchive/File$Companion$ADAPTER$1;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lbsarchive/File$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->f(J)Lokio/ByteString;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    new-instance v5, Lbsarchive/AnyItem;

    .line 68
    .line 69
    move-object v6, p0

    .line 70
    check-cast v6, Lbsarchive/File;

    .line 71
    .line 72
    move-object v7, v2

    .line 73
    check-cast v7, Lbsarchive/Folder;

    .line 74
    .line 75
    move-object v8, v3

    .line 76
    check-cast v8, Lbsarchive/Link;

    .line 77
    .line 78
    move-object v9, v4

    .line 79
    check-cast v9, Lbsarchive/FolderStub;

    .line 80
    .line 81
    invoke-direct/range {v5 .. v10}, Lbsarchive/AnyItem;-><init>(Lbsarchive/File;Lbsarchive/Folder;Lbsarchive/Link;Lbsarchive/FolderStub;Lokio/ByteString;)V

    .line 82
    .line 83
    .line 84
    return-object v5
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lbsarchive/AnyItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lbsarchive/File;->p:Lbsarchive/File$Companion$ADAPTER$1;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p2, Lbsarchive/AnyItem;->m:Lbsarchive/File;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lbsarchive/Folder;->m:Lbsarchive/Folder$Companion$ADAPTER$1;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iget-object v1, p2, Lbsarchive/AnyItem;->n:Lbsarchive/Folder;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lbsarchive/Link;->n:Lbsarchive/Link$Companion$ADAPTER$1;

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    iget-object v1, p2, Lbsarchive/AnyItem;->o:Lbsarchive/Link;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lbsarchive/FolderStub;->o:Lbsarchive/FolderStub$Companion$ADAPTER$1;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    iget-object v1, p2, Lbsarchive/AnyItem;->p:Lbsarchive/FolderStub;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->a(Lokio/ByteString;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lbsarchive/AnyItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->d(Lokio/ByteString;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lbsarchive/FolderStub;->o:Lbsarchive/FolderStub$Companion$ADAPTER$1;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    iget-object v1, p2, Lbsarchive/AnyItem;->p:Lbsarchive/FolderStub;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lbsarchive/Link;->n:Lbsarchive/Link$Companion$ADAPTER$1;

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    iget-object v1, p2, Lbsarchive/AnyItem;->o:Lbsarchive/Link;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lbsarchive/Folder;->m:Lbsarchive/Folder$Companion$ADAPTER$1;

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    iget-object v1, p2, Lbsarchive/AnyItem;->n:Lbsarchive/Folder;

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lbsarchive/File;->p:Lbsarchive/File$Companion$ADAPTER$1;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iget-object p2, p2, Lbsarchive/AnyItem;->m:Lbsarchive/File;

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lbsarchive/AnyItem;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lokio/ByteString;->e()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sget-object v0, Lbsarchive/File;->p:Lbsarchive/File$Companion$ADAPTER$1;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iget-object v2, p1, Lbsarchive/AnyItem;->m:Lbsarchive/File;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v0, p0

    .line 24
    sget-object p0, Lbsarchive/Folder;->m:Lbsarchive/Folder$Companion$ADAPTER$1;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    iget-object v2, p1, Lbsarchive/AnyItem;->n:Lbsarchive/Folder;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr p0, v0

    .line 34
    sget-object v0, Lbsarchive/Link;->n:Lbsarchive/Link$Companion$ADAPTER$1;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    iget-object v2, p1, Lbsarchive/AnyItem;->o:Lbsarchive/Link;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v0, p0

    .line 44
    sget-object p0, Lbsarchive/FolderStub;->o:Lbsarchive/FolderStub$Companion$ADAPTER$1;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    iget-object p1, p1, Lbsarchive/AnyItem;->p:Lbsarchive/FolderStub;

    .line 48
    .line 49
    invoke-virtual {p0, v1, p1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    add-int/2addr p0, v0

    .line 54
    return p0
.end method
