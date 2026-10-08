.class final Lio/sentry/transport/HttpConnection;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final e:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Ljava/net/Proxy;

.field public final b:Lio/sentry/RequestDetails;

.field public final c:Lio/sentry/SentryOptions;

.field public final d:Lio/sentry/transport/RateLimiter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/transport/HttpConnection;->e:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/RateLimiter;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/sentry/transport/HttpConnection;->b:Lio/sentry/RequestDetails;

    .line 5
    .line 6
    iput-object p1, p0, Lio/sentry/transport/HttpConnection;->c:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/transport/HttpConnection;->d:Lio/sentry/transport/RateLimiter;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p3, p2, Lio/sentry/SentryOptions$Proxy;->b:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p2, p2, Lio/sentry/SentryOptions$Proxy;->a:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    :try_start_0
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 25
    .line 26
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 27
    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v1, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Ljava/net/Proxy;

    .line 36
    .line 37
    invoke-direct {p2, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p2

    .line 42
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->c:Lio/sentry/SentryOptions;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 49
    .line 50
    const-string v2, "Failed to parse Sentry Proxy port: "

    .line 51
    .line 52
    const-string v3, ". Proxy is ignored"

    .line 53
    .line 54
    invoke-static {v2, p3, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    const/4 v2, 0x0

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {v0, v1, p2, p3, v2}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    const/4 p2, 0x0

    .line 65
    :goto_0
    iput-object p2, p0, Lio/sentry/transport/HttpConnection;->a:Ljava/net/Proxy;

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-object p0, p0, Lio/sentry/SentryOptions$Proxy;->c:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p1, p1, Lio/sentry/SentryOptions$Proxy;->d:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    new-instance p2, Lio/sentry/transport/ProxyAuthenticator;

    .line 92
    .line 93
    invoke-direct {p2, p0, p1}, Lio/sentry/transport/ProxyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 6
    .line 7
    new-instance v1, Ljava/io/InputStreamReader;

    .line 8
    .line 9
    sget-object v2, Lio/sentry/transport/HttpConnection;->e:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string v2, "\n"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    .line 55
    .line 56
    :cond_2
    return-object v1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    goto :goto_4

    .line 59
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catchall_2
    move-exception v0

    .line 64
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_3
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 68
    :goto_4
    if-eqz p0, :cond_3

    .line 69
    .line 70
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :catchall_3
    move-exception p0

    .line 75
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_5
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 79
    :catch_0
    const-string p0, "Failed to obtain error message while analyzing send failure."

    .line 80
    .line 81
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/net/HttpURLConnection;)Lio/sentry/transport/TransportResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->c:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {p0, p1, v2}, Lio/sentry/transport/HttpConnection;->e(Ljava/net/HttpURLConnection;I)V

    .line 9
    .line 10
    .line 11
    const/16 p0, 0xc8

    .line 12
    .line 13
    if-ne v2, p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 20
    .line 21
    const-string v3, "Envelope sent successfully."

    .line 22
    .line 23
    new-array v4, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-interface {p0, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lio/sentry/transport/TransportResult$SuccessTransportResult;->a:Lio/sentry/transport/TransportResult$SuccessTransportResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-static {p1}, Lio/sentry/transport/HttpConnection;->a(Ljava/net/HttpURLConnection;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/16 p0, 0x19d

    .line 39
    .line 40
    if-ne v2, p0, :cond_1

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 47
    .line 48
    const-string v4, "Envelope was discarded by the server because it was too large. Consider reducing the size of events, breadcrumbs, or attachments. You can use the `SentryOptions.onOversizedEvent` callback to customize how oversized events are handled."

    .line 49
    .line 50
    new-array v5, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p0, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 61
    .line 62
    const-string v4, "Request failed, API returned %s"

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {p0, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isDebug()Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    invoke-static {p1}, Lio/sentry/transport/HttpConnection;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 90
    .line 91
    const-string v5, "%s"

    .line 92
    .line 93
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {v3, v4, v5, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    new-instance p0, Lio/sentry/transport/TransportResult$ErrorTransportResult;

    .line 101
    .line 102
    invoke-direct {p0, v2}, Lio/sentry/transport/TransportResult$ErrorTransportResult;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lio/sentry/transport/HttpConnection;->a(Ljava/net/HttpURLConnection;)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 114
    .line 115
    const-string v3, "Error reading and logging the response stream"

    .line 116
    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {v0, v2, p0, v3, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lio/sentry/transport/HttpConnection;->a(Ljava/net/HttpURLConnection;)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Lio/sentry/transport/TransportResult$ErrorTransportResult;

    .line 126
    .line 127
    const/4 p1, -0x1

    .line 128
    invoke-direct {p0, p1}, Lio/sentry/transport/TransportResult$ErrorTransportResult;-><init>(I)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :goto_2
    invoke-static {p1}, Lio/sentry/transport/HttpConnection;->a(Ljava/net/HttpURLConnection;)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final d(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/transport/HttpConnection;->c:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lio/sentry/ISocketTagger;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/sentry/transport/HttpConnection;->b:Lio/sentry/RequestDetails;

    .line 11
    .line 12
    iget-object v2, v1, Lio/sentry/RequestDetails;->a:Ljava/net/URL;

    .line 13
    .line 14
    iget-object v3, p0, Lio/sentry/transport/HttpConnection;->a:Ljava/net/Proxy;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 28
    .line 29
    iget-object v1, v1, Lio/sentry/RequestDetails;->b:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const-string v1, "POST"

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 74
    .line 75
    .line 76
    const-string v1, "Content-Encoding"

    .line 77
    .line 78
    const-string v3, "gzip"

    .line 79
    .line 80
    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "Content-Type"

    .line 84
    .line 85
    const-string v3, "application/x-sentry-envelope"

    .line 86
    .line 87
    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "Accept"

    .line 91
    .line 92
    const-string v3, "application/json"

    .line 93
    .line 94
    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "Connection"

    .line 98
    .line 99
    const-string v3, "close"

    .line 100
    .line 101
    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionTimeoutMillis()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReadTimeoutMillis()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 123
    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    move-object v3, v2

    .line 129
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 130
    .line 131
    invoke-virtual {v3, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 135
    .line 136
    .line 137
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 138
    .line 139
    .line 140
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 142
    .line 143
    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .line 145
    .line 146
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {v4, p1, v3}, Lio/sentry/ISerializer;->b(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    .line 152
    .line 153
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    goto :goto_6

    .line 164
    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lio/sentry/transport/HttpConnection;->c(Ljava/net/HttpURLConnection;)Lio/sentry/transport/TransportResult;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p1}, Lio/sentry/ISocketTagger;->a()V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :catchall_1
    move-exception p1

    .line 177
    goto :goto_4

    .line 178
    :catchall_2
    move-exception p1

    .line 179
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :catchall_3
    move-exception v3

    .line 184
    :try_start_6
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    :goto_4
    if-eqz v1, :cond_4

    .line 189
    .line 190
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catchall_4
    move-exception v1

    .line 195
    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :cond_4
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 199
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 204
    .line 205
    const-string v4, "An exception occurred while submitting the envelope to the Sentry server."

    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    new-array v5, v5, [Ljava/lang/Object;

    .line 209
    .line 210
    invoke-interface {v1, v3, p1, v4, v5}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :catchall_5
    move-exception p1

    .line 215
    invoke-virtual {p0, v2}, Lio/sentry/transport/HttpConnection;->c(Ljava/net/HttpURLConnection;)Lio/sentry/transport/TransportResult;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-interface {p0}, Lio/sentry/ISocketTagger;->a()V

    .line 223
    .line 224
    .line 225
    throw p1
.end method

.method public final e(Ljava/net/HttpURLConnection;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Retry-After"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "X-Sentry-Rate-Limits"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object/from16 v2, p0

    .line 16
    .line 17
    iget-object v2, v2, Lio/sentry/transport/HttpConnection;->d:Lio/sentry/transport/RateLimiter;

    .line 18
    .line 19
    iget-object v3, v2, Lio/sentry/transport/RateLimiter;->k:Lio/sentry/SentryOptions;

    .line 20
    .line 21
    iget-object v4, v2, Lio/sentry/transport/RateLimiter;->j:Lio/sentry/transport/CurrentDateProvider;

    .line 22
    .line 23
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_9

    .line 29
    .line 30
    const-string v1, ","

    .line 31
    .line 32
    const/4 v9, -0x1

    .line 33
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    array-length v10, v1

    .line 38
    const/4 v11, 0x0

    .line 39
    move v12, v11

    .line 40
    :goto_0
    if-ge v12, v10, :cond_b

    .line 41
    .line 42
    aget-object v0, v1, v12

    .line 43
    .line 44
    const-string v13, " "

    .line 45
    .line 46
    const-string v14, ""

    .line 47
    .line 48
    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v13, ":"

    .line 53
    .line 54
    invoke-virtual {v0, v13, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    array-length v13, v0

    .line 59
    if-lez v13, :cond_7

    .line 60
    .line 61
    aget-object v13, v0, v11

    .line 62
    .line 63
    if-eqz v13, :cond_0

    .line 64
    .line 65
    :try_start_0
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 66
    .line 67
    .line 68
    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    mul-double/2addr v13, v5

    .line 70
    double-to-long v13, v13

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    :cond_0
    const-wide/32 v13, 0xea60

    .line 73
    .line 74
    .line 75
    :goto_1
    array-length v15, v0

    .line 76
    move-wide/from16 p0, v5

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    if-le v15, v5, :cond_8

    .line 80
    .line 81
    aget-object v0, v0, v5

    .line 82
    .line 83
    new-instance v5, Ljava/util/Date;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v15

    .line 92
    add-long/2addr v13, v15

    .line 93
    invoke-direct {v5, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 94
    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_6

    .line 103
    .line 104
    const-string v6, ";"

    .line 105
    .line 106
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    array-length v13, v6

    .line 111
    move v14, v11

    .line 112
    :goto_2
    if-ge v14, v13, :cond_8

    .line 113
    .line 114
    aget-object v15, v6, v14

    .line 115
    .line 116
    sget-object v16, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    .line 117
    .line 118
    :try_start_1
    sget-object v0, Lio/sentry/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    if-eqz v15, :cond_3

    .line 121
    .line 122
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_1
    sget-object v0, Lio/sentry/util/StringUtils;->b:Ljava/util/regex/Pattern;

    .line 130
    .line 131
    invoke-virtual {v0, v15, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    array-length v8, v0

    .line 141
    move v9, v11

    .line 142
    :goto_3
    if-ge v9, v8, :cond_2

    .line 143
    .line 144
    aget-object v17, v0, v9

    .line 145
    .line 146
    invoke-static/range {v17 .. v17}, Lio/sentry/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    const/4 v11, 0x0

    .line 156
    goto :goto_3

    .line 157
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto :goto_5

    .line 162
    :cond_3
    :goto_4
    move-object v0, v15

    .line 163
    :goto_5
    if-eqz v0, :cond_4

    .line 164
    .line 165
    invoke-static {v0}, Lio/sentry/DataCategory;->valueOf(Ljava/lang/String;)Lio/sentry/DataCategory;

    .line 166
    .line 167
    .line 168
    move-result-object v16

    .line 169
    goto :goto_6

    .line 170
    :catch_1
    move-exception v0

    .line 171
    goto :goto_7

    .line 172
    :cond_4
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 177
    .line 178
    const-string v8, "Couldn\'t capitalize: %s"

    .line 179
    .line 180
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-interface {v0, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    .line 187
    :goto_6
    move-object/from16 v0, v16

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :goto_7
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    sget-object v8, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 195
    .line 196
    const-string v9, "Unknown category: %s"

    .line 197
    .line 198
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-interface {v7, v8, v0, v9, v11}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :goto_8
    sget-object v7, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    .line 207
    .line 208
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_5

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_5
    invoke-virtual {v2, v0, v5}, Lio/sentry/transport/RateLimiter;->a(Lio/sentry/DataCategory;Ljava/util/Date;)V

    .line 216
    .line 217
    .line 218
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 219
    .line 220
    const/4 v9, -0x1

    .line 221
    const/4 v11, 0x0

    .line 222
    goto :goto_2

    .line 223
    :cond_6
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 224
    .line 225
    invoke-virtual {v2, v0, v5}, Lio/sentry/transport/RateLimiter;->a(Lio/sentry/DataCategory;Ljava/util/Date;)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_7
    move-wide/from16 p0, v5

    .line 230
    .line 231
    :cond_8
    :goto_a
    add-int/lit8 v12, v12, 0x1

    .line 232
    .line 233
    move-wide/from16 v5, p0

    .line 234
    .line 235
    const/4 v9, -0x1

    .line 236
    const/4 v11, 0x0

    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_9
    move-wide/from16 p0, v5

    .line 240
    .line 241
    const/16 v0, 0x1ad

    .line 242
    .line 243
    move/from16 v3, p2

    .line 244
    .line 245
    if-ne v3, v0, :cond_b

    .line 246
    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    :try_start_2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 250
    .line 251
    .line 252
    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    mul-double v0, v0, p0

    .line 254
    .line 255
    double-to-long v7, v0

    .line 256
    goto :goto_b

    .line 257
    :catch_2
    :cond_a
    const-wide/32 v7, 0xea60

    .line 258
    .line 259
    .line 260
    :goto_b
    new-instance v0, Ljava/util/Date;

    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    add-long/2addr v3, v7

    .line 270
    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 271
    .line 272
    .line 273
    sget-object v1, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 274
    .line 275
    invoke-virtual {v2, v1, v0}, Lio/sentry/transport/RateLimiter;->a(Lio/sentry/DataCategory;Ljava/util/Date;)V

    .line 276
    .line 277
    .line 278
    :cond_b
    return-void
.end method
