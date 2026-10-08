.class public final Lokhttp3/internal/connection/Exchange;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Exchange$RequestBodySink;,
        Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/internal/connection/RealCall;

.field public final b:Lokhttp3/EventListener;

.field public final c:Lokhttp3/internal/connection/ExchangeFinder;

.field public final d:Lokhttp3/internal/http/ExchangeCodec;

.field public e:Z

.field public final f:Lokhttp3/internal/connection/RealConnection;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener$Companion$NONE$1;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 11
    .line 12
    iput-object p2, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 13
    .line 14
    iput-object p3, p0, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 15
    .line 16
    iput-object p4, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 17
    .line 18
    invoke-interface {p4}, Lokhttp3/internal/http/ExchangeCodec;->e()Lokhttp3/internal/connection/RealConnection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->f:Lokhttp3/internal/connection/RealConnection;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lokhttp3/internal/connection/Exchange;->e(Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 20
    .line 21
    if-eqz p3, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :cond_4
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 31
    .line 32
    invoke-virtual {v0, p0, p2, p1, p3}, Lokhttp3/internal/connection/RealCall;->g(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public final b(Lokhttp3/Request;)Lokio/Sink;
    .locals 3

    .line 1
    iget-object v0, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lokhttp3/RequestBody;->a()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 16
    .line 17
    invoke-interface {v2, p1, v0, v1}, Lokhttp3/internal/http/ExchangeCodec;->h(Lokhttp3/Request;J)Lokio/Sink;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v2, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    .line 22
    .line 23
    invoke-direct {v2, p0, p1, v0, v1}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public final c(Lokhttp3/Response;)Lokhttp3/internal/http/RealResponseBody;
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Content-Type"

    .line 4
    .line 5
    invoke-static {v1, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->g(Lokhttp3/Response;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->c(Lokhttp3/Response;)Lokio/Source;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lokhttp3/internal/connection/Exchange$ResponseBodySource;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, v1, v2}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    .line 22
    .line 23
    new-instance v3, Lokio/RealBufferedSource;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v1, v2, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(JLokio/RealBufferedSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->e(Ljava/io/IOException;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final d(Z)Lokhttp3/Response$Builder;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->d(Z)Lokhttp3/Response$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p0, p1, Lokhttp3/Response$Builder;->m:Lokhttp3/internal/connection/Exchange;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object p1

    .line 15
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/EventListener;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/Exchange;->e(Ljava/io/IOException;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final e(Ljava/io/IOException;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->e:Z

    .line 3
    .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lokhttp3/internal/connection/ExchangeFinder;->b(Ljava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 10
    .line 11
    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->e()Lokhttp3/internal/connection/RealConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Lokhttp3/internal/connection/Exchange;->a:Lokhttp3/internal/connection/RealCall;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    instance-of v2, p1, Lokhttp3/internal/http2/StreamResetException;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    check-cast v2, Lokhttp3/internal/http2/StreamResetException;

    .line 24
    .line 25
    iget-object v2, v2, Lokhttp3/internal/http2/StreamResetException;->j:Lokhttp3/internal/http2/ErrorCode;

    .line 26
    .line 27
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->o:Lokhttp3/internal/http2/ErrorCode;

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    iget p0, v1, Lokhttp3/internal/connection/RealConnection;->n:I

    .line 32
    .line 33
    add-int/2addr p0, v0

    .line 34
    iput p0, v1, Lokhttp3/internal/connection/RealConnection;->n:I

    .line 35
    .line 36
    if-le p0, v0, :cond_5

    .line 37
    .line 38
    iput-boolean v0, v1, Lokhttp3/internal/connection/RealConnection;->j:Z

    .line 39
    .line 40
    iget p0, v1, Lokhttp3/internal/connection/RealConnection;->l:I

    .line 41
    .line 42
    add-int/2addr p0, v0

    .line 43
    iput p0, v1, Lokhttp3/internal/connection/RealConnection;->l:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    .line 49
    .line 50
    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->j:Lokhttp3/internal/http2/ErrorCode;

    .line 51
    .line 52
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->p:Lokhttp3/internal/http2/ErrorCode;

    .line 53
    .line 54
    if-ne p1, v2, :cond_1

    .line 55
    .line 56
    iget-boolean p0, p0, Lokhttp3/internal/connection/RealCall;->w:Z

    .line 57
    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    :cond_1
    iput-boolean v0, v1, Lokhttp3/internal/connection/RealConnection;->j:Z

    .line 61
    .line 62
    iget p0, v1, Lokhttp3/internal/connection/RealConnection;->l:I

    .line 63
    .line 64
    add-int/2addr p0, v0

    .line 65
    iput p0, v1, Lokhttp3/internal/connection/RealConnection;->l:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/internal/http2/Http2Connection;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    move v2, v0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v2, 0x0

    .line 75
    :goto_0
    if-eqz v2, :cond_4

    .line 76
    .line 77
    instance-of v2, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 78
    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    :cond_4
    iput-boolean v0, v1, Lokhttp3/internal/connection/RealConnection;->j:Z

    .line 82
    .line 83
    iget v2, v1, Lokhttp3/internal/connection/RealConnection;->m:I

    .line 84
    .line 85
    if-nez v2, :cond_5

    .line 86
    .line 87
    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->j:Lokhttp3/OkHttpClient;

    .line 88
    .line 89
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnection;->b:Lokhttp3/Route;

    .line 90
    .line 91
    invoke-static {p0, v2, p1}, Lokhttp3/internal/connection/RealConnection;->d(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V

    .line 92
    .line 93
    .line 94
    iget p0, v1, Lokhttp3/internal/connection/RealConnection;->l:I

    .line 95
    .line 96
    add-int/2addr p0, v0

    .line 97
    iput p0, v1, Lokhttp3/internal/connection/RealConnection;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    :cond_5
    :goto_1
    monitor-exit v1

    .line 100
    return-void

    .line 101
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    throw p0
.end method
