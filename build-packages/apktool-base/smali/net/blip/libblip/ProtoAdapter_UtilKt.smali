.class public abstract Lnet/blip/libblip/ProtoAdapter_UtilKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 5
    .line 6
    sget-object v1, Lokio/Path;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lokio/Path;->toFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Source;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lokio/RealBufferedSource;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :try_start_0
    iget-object v2, v0, Lokio/RealBufferedSource;->k:Lokio/Buffer;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 32
    .line 33
    .line 34
    iget-wide v3, v2, Lokio/Buffer;->k:J

    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->s(J)Lokio/ByteString;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-virtual {v0}, Lokio/RealBufferedSource;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :goto_0
    move-object v5, v1

    .line 46
    move-object v1, p1

    .line 47
    move-object p1, v5

    .line 48
    goto :goto_1

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    :try_start_2
    invoke-virtual {v0}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    if-nez p1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lokio/ByteString;->e()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    new-instance v0, Lcom/squareup/wire/ByteArrayProtoReader32;

    .line 68
    .line 69
    invoke-virtual {v1}, Lokio/ByteString;->r()[B

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, p1, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;-><init>(I[B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_0
    throw p1
.end method
