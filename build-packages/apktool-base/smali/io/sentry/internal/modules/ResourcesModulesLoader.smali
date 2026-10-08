.class public final Lio/sentry/internal/modules/ResourcesModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final e:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    const-class v0, Lio/sentry/internal/modules/ResourcesModulesLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lio/sentry/util/ClassLoaderUtils;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->e:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 5

    .line 1
    const-string v0, "sentry-external-modules.txt"

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/internal/modules/ModulesLoader;->a:Lio/sentry/ILogger;

    .line 4
    .line 5
    new-instance v2, Ljava/util/TreeMap;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v3, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->e:Ljava/lang/ClassLoader;

    .line 11
    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    :try_start_1
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 19
    .line 20
    const-string v4, "%s file was not found."

    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v1, p0, v4, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    :try_start_3
    invoke-virtual {p0, v3}, Lio/sentry/internal/modules/ModulesLoader;->c(Ljava/io/InputStream;)Ljava/util/TreeMap;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :goto_0
    if-eqz v3, :cond_1

    .line 50
    .line 51
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 60
    :goto_2
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 61
    .line 62
    const-string v3, "Access to resources failed."

    .line 63
    .line 64
    invoke-interface {v1, v0, v3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :goto_3
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 69
    .line 70
    const-string v3, "Access to resources denied."

    .line 71
    .line 72
    invoke-interface {v1, v0, v3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_4
    return-object v2
.end method
