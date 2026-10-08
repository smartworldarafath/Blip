.class final Lio/sentry/config/FilesystemPropertiesLoader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/sentry/SystemOutLogger;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/sentry/SystemOutLogger;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/config/FilesystemPropertiesLoader;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->b:Lio/sentry/SystemOutLogger;

    .line 7
    .line 8
    iput-boolean p3, p0, Lio/sentry/config/FilesystemPropertiesLoader;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Properties;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/config/FilesystemPropertiesLoader;->b:Lio/sentry/SystemOutLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/config/FilesystemPropertiesLoader;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    new-instance p0, Ljava/io/BufferedInputStream;

    .line 28
    .line 29
    new-instance v4, Ljava/io/FileInputStream;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    new-instance v3, Ljava/util/Properties;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v3

    .line 52
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_2
    move-exception p0

    .line 57
    :try_start_4
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    throw v3

    .line 61
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    iget-boolean p0, p0, Lio/sentry/config/FilesystemPropertiesLoader;->c:Z

    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 72
    .line 73
    const-string v3, "Failed to load Sentry configuration since it is not a file or does not exist: %s"

    .line 74
    .line 75
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v0, p0, v3, v4}, Lio/sentry/SystemOutLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_2

    .line 88
    .line 89
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 90
    .line 91
    const-string v3, "Failed to load Sentry configuration since it is not readable: %s"

    .line 92
    .line 93
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v0, p0, v3, v4}, Lio/sentry/SystemOutLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_2
    return-object v2

    .line 101
    :goto_1
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 102
    .line 103
    const-string v4, "Failed to load Sentry configuration from file: %s"

    .line 104
    .line 105
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v3, p0, v4, v1}, Lio/sentry/SystemOutLogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v2
.end method
