.class public abstract Lokio/Okio;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Lokio/Sink;
    .locals 1

    .line 1
    new-instance v0, Lokio/BlackholeSink;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b(Ljava/net/Socket;)Lokio/AsyncTimeout$sink$1;
    .locals 2

    .line 1
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/OutputStreamSink;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lokio/OutputStreamSink;-><init>(Ljava/io/OutputStream;Lokio/Timeout;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lokio/AsyncTimeout$sink$1;

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/internal/SocketAsyncTimeout;Lokio/Sink;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static final c(Ljava/net/Socket;)Lokio/AsyncTimeout$source$1;
    .locals 2

    .line 1
    new-instance v0, Lokio/internal/SocketAsyncTimeout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/internal/SocketAsyncTimeout;-><init>(Ljava/net/Socket;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/InputStreamSource;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lokio/AsyncTimeout$source$1;

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/internal/SocketAsyncTimeout;Lokio/Source;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static final d(Ljava/io/File;)Lokio/Source;
    .locals 2

    .line 1
    new-instance v0, Lokio/InputStreamSource;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lokio/Timeout;->d:Lokio/Timeout$Companion$NONE$1;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static final e(Ljava/io/InputStream;)Lokio/Source;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/InputStreamSource;

    .line 5
    .line 6
    new-instance v1, Lokio/Timeout;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lokio/InputStreamSource;-><init>(Ljava/io/InputStream;Lokio/Timeout;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
