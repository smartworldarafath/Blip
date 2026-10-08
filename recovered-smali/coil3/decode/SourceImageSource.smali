.class public final Lcoil3/decode/SourceImageSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcoil3/decode/ImageSource;


# instance fields
.field public final j:Lokio/FileSystem;

.field public final k:Lcoil3/decode/ImageSource$Metadata;

.field public final l:Ljava/lang/Object;

.field public m:Z

.field public n:Lokio/BufferedSource;

.field public o:Lokio/Path;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcoil3/decode/SourceImageSource;->j:Lokio/FileSystem;

    .line 5
    .line 6
    iput-object p3, p0, Lcoil3/decode/SourceImageSource;->k:Lcoil3/decode/ImageSource$Metadata;

    .line 7
    .line 8
    new-instance p2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcoil3/decode/SourceImageSource;->l:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lcoil3/decode/SourceImageSource;->n:Lokio/BufferedSource;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final I0()Lokio/Path;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/decode/SourceImageSource;->m:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->o:Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    const-string p0, "closed"

    .line 15
    .line 16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public final U0()Lokio/BufferedSource;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/decode/SourceImageSource;->m:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->n:Lokio/BufferedSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->j:Lokio/FileSystem;

    .line 15
    .line 16
    iget-object v2, p0, Lcoil3/decode/SourceImageSource;->o:Lokio/Path;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lokio/FileSystem;->X(Lokio/Path;)Lokio/Source;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v2, Lokio/RealBufferedSource;

    .line 29
    .line 30
    invoke-direct {v2, v1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcoil3/decode/SourceImageSource;->n:Lokio/BufferedSource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :try_start_2
    const-string p0, "closed"

    .line 40
    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :goto_0
    monitor-exit v0

    .line 48
    throw p0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcoil3/decode/SourceImageSource;->m:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->n:Lokio/BufferedSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    :try_start_2
    throw p0

    .line 17
    :catch_1
    :cond_0
    :goto_0
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->o:Lokio/Path;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->j:Lokio/FileSystem;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lokio/FileSystem;->v(Lokio/Path;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_2
    monitor-exit v0

    .line 35
    throw p0
.end method

.method public final d0()Lokio/Path;
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil3/decode/SourceImageSource;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcoil3/decode/SourceImageSource;->m:Z

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->o:Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->j:Lokio/FileSystem;

    .line 15
    .line 16
    const-string v2, "tmp_"

    .line 17
    .line 18
    :cond_1
    sget-object v3, Lokio/FileSystem;->k:Lokio/Path;

    .line 19
    .line 20
    sget-object v4, Lkotlin/random/Random;->j:Lkotlin/random/Random$Default;

    .line 21
    .line 22
    sget-object v4, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 23
    .line 24
    invoke-virtual {v4}, Lkotlin/random/AbstractPlatformRandom;->c()Ljava/util/Random;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-static {v4, v5}, Lkotlin/ULong;->a(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lokio/Path;->e(Ljava/lang/String;)Lokio/Path;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Lokio/FileSystem;->A(Lokio/Path;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v3, v2}, Lokio/FileSystem;->S(Lokio/Path;Z)Lokio/Sink;

    .line 52
    .line 53
    .line 54
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 55
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 56
    .line 57
    .line 58
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcoil3/decode/SourceImageSource;->j:Lokio/FileSystem;

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v3, v2}, Lokio/FileSystem;->S(Lokio/Path;Z)Lokio/Sink;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lokio/RealBufferedSink;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    :try_start_4
    iget-object v4, p0, Lcoil3/decode/SourceImageSource;->n:Lokio/BufferedSource;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object v5, v2, Lokio/RealBufferedSink;->k:Lokio/Buffer;

    .line 83
    .line 84
    const-wide/16 v6, 0x2000

    .line 85
    .line 86
    invoke-interface {v4, v6, v7, v5}, Lokio/Source;->J0(JLokio/Buffer;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    const-wide/16 v7, -0x1

    .line 91
    .line 92
    cmp-long v5, v5, v7

    .line 93
    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2}, Lokio/RealBufferedSink;->a()Lokio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    .line 102
    .line 103
    move-object v2, v1

    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v2

    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception v4

    .line 108
    :try_start_6
    invoke-virtual {v2}, Lokio/RealBufferedSink;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_2
    move-exception v2

    .line 113
    :try_start_7
    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    move-object v2, v4

    .line 117
    :goto_2
    if-nez v2, :cond_3

    .line 118
    .line 119
    iput-object v1, p0, Lcoil3/decode/SourceImageSource;->n:Lokio/BufferedSource;

    .line 120
    .line 121
    iput-object v3, p0, Lcoil3/decode/SourceImageSource;->o:Lokio/Path;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 122
    .line 123
    monitor-exit v0

    .line 124
    return-object v3

    .line 125
    :catchall_3
    move-exception p0

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    :try_start_8
    throw v2

    .line 128
    :catch_1
    move-exception p0

    .line 129
    throw p0

    .line 130
    :cond_4
    const-string p0, "closed"

    .line 131
    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 138
    :goto_3
    monitor-exit v0

    .line 139
    throw p0
.end method

.method public final e()Lcoil3/decode/ImageSource$Metadata;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->k:Lcoil3/decode/ImageSource$Metadata;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFileSystem()Lokio/FileSystem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/decode/SourceImageSource;->j:Lokio/FileSystem;

    .line 2
    .line 3
    return-object p0
.end method
