.class Lio/sentry/cache/PersistingScopeObserver$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/cache/tape/ObjectQueue$Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/cache/tape/ObjectQueue$Converter<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/sentry/cache/PersistingScopeObserver;


# direct methods
.method public constructor <init>(Lio/sentry/cache/PersistingScopeObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$1;->a:Lio/sentry/cache/PersistingScopeObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    check-cast p1, Lio/sentry/Breadcrumb;

    .line 2
    .line 3
    new-instance v0, Ljava/io/BufferedWriter;

    .line 4
    .line 5
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 6
    .line 7
    sget-object v2, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver$1;->a:Lio/sentry/cache/PersistingScopeObserver;

    .line 16
    .line 17
    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0, p1, v0}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    throw p0
.end method

.method public final b([B)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver$1;->a:Lio/sentry/cache/PersistingScopeObserver;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 6
    .line 7
    new-instance v1, Ljava/io/InputStreamReader;

    .line 8
    .line 9
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-class v1, Lio/sentry/Breadcrumb;

    .line 27
    .line 28
    invoke-interface {p1, v0, v1}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lio/sentry/Breadcrumb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_2
    move-exception v0

    .line 46
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string v2, "Error reading entity from scope cache"

    .line 60
    .line 61
    invoke-interface {p0, v0, p1, v2, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method
