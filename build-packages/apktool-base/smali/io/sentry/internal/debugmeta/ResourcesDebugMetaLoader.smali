.class public final Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# instance fields
.field public final a:Lio/sentry/ILogger;

.field public final b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    const-class v0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->a:Lio/sentry/ILogger;

    .line 11
    .line 12
    invoke-static {v0}, Lio/sentry/util/ClassLoaderUtils;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->b:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8

    .line 1
    const-string v0, "sentry-debug-meta.properties"

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->a:Lio/sentry/ILogger;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->b:Ljava/lang/ClassLoader;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    :try_start_2
    new-instance v5, Ljava/util/Properties;

    .line 33
    .line 34
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 44
    .line 45
    const-string v6, "Debug Meta Data Properties loaded from %s"

    .line 46
    .line 47
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {v1, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :catch_1
    move-exception v4

    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception v5

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v4

    .line 72
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 76
    :goto_2
    :try_start_6
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 77
    .line 78
    const-string v6, "%s file is malformed."

    .line 79
    .line 80
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v1, v5, v4, v6, v3}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_3
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 89
    .line 90
    const-string v4, "Failed to load %s"

    .line 91
    .line 92
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-interface {v1, v3, p0, v4, v5}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 106
    .line 107
    const-string v2, "No %s file was found."

    .line 108
    .line 109
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v1, p0, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return-object p0

    .line 118
    :cond_3
    return-object v2
.end method
