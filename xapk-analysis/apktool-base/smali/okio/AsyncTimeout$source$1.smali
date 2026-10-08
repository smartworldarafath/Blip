.class public final Lokio/AsyncTimeout$source$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final synthetic j:Lokio/internal/SocketAsyncTimeout;

.field public final synthetic k:Lokio/Source;


# direct methods
.method public constructor <init>(Lokio/internal/SocketAsyncTimeout;Lokio/Source;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokio/AsyncTimeout$source$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 5
    .line 6
    iput-object p2, p0, Lokio/AsyncTimeout$source$1;->k:Lokio/Source;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final J0(JLokio/Buffer;)J
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->k:Lokio/Source;

    .line 5
    .line 6
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 7
    .line 8
    invoke-virtual {p0}, Lokio/AsyncTimeout;->h()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    check-cast v0, Lokio/InputStreamSource;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lokio/InputStreamSource;->J0(JLokio/Buffer;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    return-wide p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lokio/AsyncTimeout$source$1;->k:Lokio/Source;

    .line 2
    .line 3
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 4
    .line 5
    invoke-virtual {p0}, Lokio/AsyncTimeout;->h()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    check-cast v0, Lokio/InputStreamSource;

    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/InputStreamSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, v0}, Lokio/internal/SocketAsyncTimeout;->k(Ljava/io/IOException;)Ljava/io/IOException;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    invoke-virtual {p0}, Lokio/AsyncTimeout;->i()Z

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final i()Lokio/Timeout;
    .locals 0

    .line 1
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->j:Lokio/internal/SocketAsyncTimeout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AsyncTimeout.source("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lokio/AsyncTimeout$source$1;->k:Lokio/Source;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
