.class public Lio/sentry/cache/EnvelopeCache;
.super Lio/sentry/cache/CacheStrategy;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/cache/IEnvelopeCache;


# static fields
.field public static final synthetic s:I


# instance fields
.field public final o:Ljava/util/concurrent/CountDownLatch;

.field public final p:Ljava/util/WeakHashMap;

.field public final q:Lio/sentry/util/AutoClosableReentrantLock;

.field public final r:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/cache/CacheStrategy;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/cache/EnvelopeCache;->p:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    new-instance p1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/cache/EnvelopeCache;->q:Lio/sentry/util/AutoClosableReentrantLock;

    .line 17
    .line 18
    new-instance p1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lio/sentry/cache/EnvelopeCache;->r:Lio/sentry/util/AutoClosableReentrantLock;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lio/sentry/cache/EnvelopeCache;->o:Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryEnvelope;)V
    .locals 2

    .line 1
    const-string v0, "Envelope is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/sentry/cache/EnvelopeCache;->e(Lio/sentry/SentryEnvelope;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "Discarding envelope from cache: %s"

    .line 33
    .line 34
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "Envelope was not cached or could not be deleted: %s"

    .line 53
    .line 54
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final d()[Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->l:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lio/sentry/cache/c;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    :goto_0
    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "The directory for caching files is inaccessible.: %s"

    .line 51
    .line 52
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    new-array p0, p0, [Ljava/io/File;

    .line 57
    .line 58
    return-object p0
.end method

.method public final e(Lio/sentry/SentryEnvelope;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->p:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    const-string v1, ".envelope"

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->q:Lio/sentry/util/AutoClosableReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-static {}, Lio/sentry/SentryUUID;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-object p1, v1

    .line 38
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->l:Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    throw p0
.end method

.method public final f(Ljava/io/File;Ljava/io/File;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->r:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 31
    .line 32
    const-string v4, "Previous session file already exists, deleting it."

    .line 33
    .line 34
    new-array v5, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 50
    .line 51
    const-string v4, "Unable to delete previous session file: %s"

    .line 52
    .line 53
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 68
    .line 69
    const-string v4, "Moving current session to previous session."

    .line 70
    .line 71
    new-array v5, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 87
    .line 88
    const-string v1, "Unable to move current session to previous session."

    .line 89
    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    :try_start_4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 102
    .line 103
    const-string v1, "Error moving current session to previous session."

    .line 104
    .line 105
    invoke-interface {p0, p2, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :goto_2
    :try_start_5
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_2
    move-exception p1

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :goto_3
    throw p0
.end method

.method public final g()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->o:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionFlushTimeoutMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 28
    .line 29
    const-string v1, "Timed out waiting for previous session to flush."

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {p0, v0, v1, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return v2
.end method

.method public final i(Ljava/io/File;Lio/sentry/Session;)V
    .locals 7

    .line 1
    iget-object v0, p2, Lio/sentry/Session;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    .line 11
    .line 12
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 13
    .line 14
    sget-object v4, Lio/sentry/cache/CacheStrategy;->n:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v5, "Overwriting session to offline storage: %s"

    .line 29
    .line 30
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->k:Lio/sentry/util/LazyEvaluator;

    .line 38
    .line 39
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lio/sentry/ISerializer;

    .line 44
    .line 45
    invoke-interface {p0, p2, p1}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    :try_start_5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_3
    move-exception p1

    .line 65
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 69
    :goto_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_4
    move-exception p1

    .line 74
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 78
    :goto_3
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 83
    .line 84
    const-string v1, "Error writing Session to offline storage: %s"

    .line 85
    .line 86
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {p1, p2, p0, v1, v0}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 11

    .line 1
    iget-object v0, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/cache/EnvelopeCache;->d()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    array-length v3, v1

    .line 10
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    array-length v3, v1

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 20
    .line 21
    new-instance v7, Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v7, p0, Lio/sentry/cache/CacheStrategy;->k:Lio/sentry/util/LazyEvaluator;

    .line 30
    .line 31
    invoke-virtual {v7}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Lio/sentry/ISerializer;

    .line 36
    .line 37
    invoke-interface {v7, v6}, Lio/sentry/ISerializer;->e(Ljava/io/BufferedInputStream;)Lio/sentry/SentryEnvelope;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :catch_0
    move-exception v6

    .line 49
    goto :goto_2

    .line 50
    :catchall_0
    move-exception v7

    .line 51
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception v6

    .line 56
    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    throw v7
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 60
    :goto_2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    sget-object v8, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v10, "Error while reading cached envelope from file "

    .line 73
    .line 74
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v7, v8, v5, v6}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catch_1
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v8, "Envelope file \'%s\' disappeared while converting all cached files to envelopes."

    .line 103
    .line 104
    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method

.method public q(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Z
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, "Envelope is required."

    .line 8
    .line 9
    invoke-static {v2, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lio/sentry/cache/EnvelopeCache;->d()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    array-length v0, v4

    .line 17
    iget-object v6, v1, Lio/sentry/cache/CacheStrategy;->k:Lio/sentry/util/LazyEvaluator;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    iget-object v8, v1, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 21
    .line 22
    const/4 v9, 0x1

    .line 23
    iget v10, v1, Lio/sentry/cache/CacheStrategy;->m:I

    .line 24
    .line 25
    if-lt v0, v10, :cond_19

    .line 26
    .line 27
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    sget-object v12, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 32
    .line 33
    const-string v13, "Cache folder if full (respecting maxSize). Rotating files"

    .line 34
    .line 35
    new-array v14, v7, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {v11, v12, v13, v14}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sub-int v10, v0, v10

    .line 41
    .line 42
    add-int/2addr v10, v9

    .line 43
    array-length v11, v4

    .line 44
    if-le v11, v9, :cond_0

    .line 45
    .line 46
    new-instance v11, Lio/sentry/cache/b;

    .line 47
    .line 48
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {v4, v10, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v11, v0

    .line 59
    check-cast v11, [Ljava/io/File;

    .line 60
    .line 61
    move v12, v7

    .line 62
    :goto_0
    if-ge v12, v10, :cond_19

    .line 63
    .line 64
    aget-object v13, v4, v12

    .line 65
    .line 66
    invoke-virtual {v1, v13}, Lio/sentry/cache/CacheStrategy;->b(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v14, "File can\'t be deleted: %s"

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    iget-object v15, v0, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 75
    .line 76
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v16

    .line 80
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v16

    .line 84
    if-nez v16, :cond_2

    .line 85
    .line 86
    :cond_1
    :goto_1
    move-object/from16 v17, v4

    .line 87
    .line 88
    move-object/from16 v18, v6

    .line 89
    .line 90
    move-object/from16 v21, v8

    .line 91
    .line 92
    goto/16 :goto_13

    .line 93
    .line 94
    :cond_2
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    sget-object v9, Lio/sentry/clientreport/DiscardReason;->CACHE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 99
    .line 100
    invoke-interface {v5, v9, v0}, Lio/sentry/clientreport/IClientReportRecorder;->b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lio/sentry/SentryEnvelopeItem;

    .line 118
    .line 119
    if-nez v5, :cond_3

    .line 120
    .line 121
    move v9, v7

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    iget-object v9, v5, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 124
    .line 125
    iget-object v9, v9, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 126
    .line 127
    sget-object v15, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 128
    .line 129
    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    :goto_3
    if-nez v9, :cond_4

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {v1, v5}, Lio/sentry/cache/CacheStrategy;->c(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    const/4 v0, 0x0

    .line 142
    :goto_4
    if-eqz v0, :cond_1

    .line 143
    .line 144
    iget-object v5, v0, Lio/sentry/Session;->n:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v9, v0, Lio/sentry/Session;->p:Lio/sentry/Session$State;

    .line 147
    .line 148
    sget-object v15, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 149
    .line 150
    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_6

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    if-eqz v5, :cond_7

    .line 158
    .line 159
    const/4 v9, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_7
    :goto_5
    move v9, v7

    .line 162
    :goto_6
    if-nez v9, :cond_8

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_8
    iget-object v0, v0, Lio/sentry/Session;->o:Ljava/lang/Boolean;

    .line 166
    .line 167
    if-eqz v0, :cond_1

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    array-length v9, v11

    .line 177
    move v15, v7

    .line 178
    :goto_7
    if-ge v15, v9, :cond_1

    .line 179
    .line 180
    aget-object v7, v11, v15

    .line 181
    .line 182
    move-object/from16 v17, v4

    .line 183
    .line 184
    invoke-virtual {v1, v7}, Lio/sentry/cache/CacheStrategy;->b(Ljava/io/File;)Lio/sentry/SentryEnvelope;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    if-eqz v4, :cond_16

    .line 189
    .line 190
    move-object/from16 v18, v6

    .line 191
    .line 192
    iget-object v6, v4, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 193
    .line 194
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_a

    .line 203
    .line 204
    move-object/from16 v23, v5

    .line 205
    .line 206
    :goto_8
    move-object/from16 v21, v8

    .line 207
    .line 208
    move/from16 v22, v9

    .line 209
    .line 210
    goto/16 :goto_12

    .line 211
    .line 212
    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v19

    .line 220
    if-eqz v19, :cond_13

    .line 221
    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v19

    .line 226
    move-object/from16 v20, v0

    .line 227
    .line 228
    move-object/from16 v0, v19

    .line 229
    .line 230
    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 231
    .line 232
    if-nez v0, :cond_b

    .line 233
    .line 234
    move-object/from16 v19, v6

    .line 235
    .line 236
    move-object/from16 v21, v8

    .line 237
    .line 238
    const/4 v6, 0x0

    .line 239
    goto :goto_a

    .line 240
    :cond_b
    move-object/from16 v19, v6

    .line 241
    .line 242
    iget-object v6, v0, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 243
    .line 244
    iget-object v6, v6, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 245
    .line 246
    move-object/from16 v21, v8

    .line 247
    .line 248
    sget-object v8, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 249
    .line 250
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    :goto_a
    if-nez v6, :cond_d

    .line 255
    .line 256
    :cond_c
    move-object/from16 v6, v19

    .line 257
    .line 258
    move-object/from16 v0, v20

    .line 259
    .line 260
    move-object/from16 v8, v21

    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_d
    invoke-virtual {v1, v0}, Lio/sentry/cache/CacheStrategy;->c(Lio/sentry/SentryEnvelopeItem;)Lio/sentry/Session;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_c

    .line 268
    .line 269
    iget-object v6, v0, Lio/sentry/Session;->n:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v8, v0, Lio/sentry/Session;->p:Lio/sentry/Session$State;

    .line 272
    .line 273
    move/from16 v22, v9

    .line 274
    .line 275
    sget-object v9, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 276
    .line 277
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_e

    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_e
    if-eqz v6, :cond_f

    .line 285
    .line 286
    const/4 v8, 0x1

    .line 287
    goto :goto_c

    .line 288
    :cond_f
    :goto_b
    const/4 v8, 0x0

    .line 289
    :goto_c
    if-nez v8, :cond_10

    .line 290
    .line 291
    move-object/from16 v6, v19

    .line 292
    .line 293
    move-object/from16 v0, v20

    .line 294
    .line 295
    move-object/from16 v8, v21

    .line 296
    .line 297
    move/from16 v9, v22

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_10
    iget-object v8, v0, Lio/sentry/Session;->o:Ljava/lang/Boolean;

    .line 301
    .line 302
    if-eqz v8, :cond_11

    .line 303
    .line 304
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-eqz v8, :cond_11

    .line 309
    .line 310
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 315
    .line 316
    const-string v6, "Session %s has 2 times the init flag."

    .line 317
    .line 318
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-interface {v0, v4, v6, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_13

    .line 326
    .line 327
    :cond_11
    if-eqz v5, :cond_12

    .line 328
    .line 329
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_12

    .line 334
    .line 335
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 336
    .line 337
    iput-object v6, v0, Lio/sentry/Session;->o:Ljava/lang/Boolean;

    .line 338
    .line 339
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    check-cast v6, Lio/sentry/ISerializer;

    .line 344
    .line 345
    invoke-static {v6, v0}, Lio/sentry/SentryEnvelopeItem;->d(Lio/sentry/ISerializer;Lio/sentry/Session;)Lio/sentry/SentryEnvelopeItem;

    .line 346
    .line 347
    .line 348
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    .line 351
    .line 352
    move-object/from16 v23, v5

    .line 353
    .line 354
    goto :goto_e

    .line 355
    :catch_0
    move-exception v0

    .line 356
    goto :goto_d

    .line 357
    :catch_1
    move-exception v0

    .line 358
    const/4 v6, 0x0

    .line 359
    :goto_d
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 364
    .line 365
    move-object/from16 v23, v5

    .line 366
    .line 367
    const-string v5, "Failed to create new envelope item for the session %s"

    .line 368
    .line 369
    move-object/from16 v20, v6

    .line 370
    .line 371
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-interface {v8, v9, v0, v5, v6}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v6, v20

    .line 379
    .line 380
    goto :goto_e

    .line 381
    :cond_12
    move-object/from16 v23, v5

    .line 382
    .line 383
    move-object/from16 v6, v19

    .line 384
    .line 385
    move-object/from16 v0, v20

    .line 386
    .line 387
    move-object/from16 v8, v21

    .line 388
    .line 389
    move/from16 v9, v22

    .line 390
    .line 391
    move-object/from16 v5, v23

    .line 392
    .line 393
    goto/16 :goto_9

    .line 394
    .line 395
    :cond_13
    move-object/from16 v23, v5

    .line 396
    .line 397
    move-object/from16 v19, v6

    .line 398
    .line 399
    move-object/from16 v21, v8

    .line 400
    .line 401
    move/from16 v22, v9

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    :goto_e
    if-eqz v6, :cond_17

    .line 405
    .line 406
    new-instance v0, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    if-eqz v8, :cond_14

    .line 420
    .line 421
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    check-cast v8, Lio/sentry/SentryEnvelopeItem;

    .line 426
    .line 427
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    new-instance v5, Lio/sentry/SentryEnvelope;

    .line 435
    .line 436
    iget-object v4, v4, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 437
    .line 438
    invoke-direct {v5, v4, v0}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/util/List;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 442
    .line 443
    .line 444
    move-result-wide v8

    .line 445
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-nez v0, :cond_15

    .line 450
    .line 451
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 456
    .line 457
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    invoke-interface {v0, v4, v14, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_15
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    .line 469
    .line 470
    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 471
    .line 472
    .line 473
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Lio/sentry/ISerializer;

    .line 478
    .line 479
    invoke-interface {v0, v5, v4}, Lio/sentry/ISerializer;->b(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7, v8, v9}, Ljava/io/File;->setLastModified(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    .line 484
    .line 485
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    .line 487
    .line 488
    goto :goto_13

    .line 489
    :catchall_0
    move-exception v0

    .line 490
    goto :goto_11

    .line 491
    :catchall_1
    move-exception v0

    .line 492
    move-object v5, v0

    .line 493
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 494
    .line 495
    .line 496
    goto :goto_10

    .line 497
    :catchall_2
    move-exception v0

    .line 498
    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 499
    .line 500
    .line 501
    :goto_10
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 502
    :goto_11
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 507
    .line 508
    const-string v6, "Failed to serialize the new envelope to the disk."

    .line 509
    .line 510
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    goto :goto_13

    .line 514
    :cond_16
    move-object/from16 v23, v5

    .line 515
    .line 516
    move-object/from16 v18, v6

    .line 517
    .line 518
    goto/16 :goto_8

    .line 519
    .line 520
    :cond_17
    :goto_12
    add-int/lit8 v15, v15, 0x1

    .line 521
    .line 522
    move-object/from16 v4, v17

    .line 523
    .line 524
    move-object/from16 v6, v18

    .line 525
    .line 526
    move-object/from16 v8, v21

    .line 527
    .line 528
    move/from16 v9, v22

    .line 529
    .line 530
    move-object/from16 v5, v23

    .line 531
    .line 532
    const/4 v7, 0x0

    .line 533
    goto/16 :goto_7

    .line 534
    .line 535
    :goto_13
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-nez v0, :cond_18

    .line 540
    .line 541
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 546
    .line 547
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-interface {v0, v4, v14, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    :cond_18
    add-int/lit8 v12, v12, 0x1

    .line 559
    .line 560
    move-object/from16 v4, v17

    .line 561
    .line 562
    move-object/from16 v6, v18

    .line 563
    .line 564
    move-object/from16 v8, v21

    .line 565
    .line 566
    const/4 v7, 0x0

    .line 567
    const/4 v9, 0x1

    .line 568
    goto/16 :goto_0

    .line 569
    .line 570
    :cond_19
    move-object/from16 v18, v6

    .line 571
    .line 572
    move-object/from16 v21, v8

    .line 573
    .line 574
    iget-object v0, v1, Lio/sentry/cache/CacheStrategy;->l:Ljava/io/File;

    .line 575
    .line 576
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    new-instance v5, Ljava/io/File;

    .line 581
    .line 582
    const-string v6, "session.json"

    .line 583
    .line 584
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    new-instance v6, Ljava/io/File;

    .line 592
    .line 593
    const-string v7, "previous_session.json"

    .line 594
    .line 595
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    const-class v4, Lio/sentry/hints/SessionEnd;

    .line 599
    .line 600
    invoke-static {v3, v4}, Lio/sentry/util/HintUtils;->b(Lio/sentry/Hint;Ljava/lang/Class;)Z

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    if-eqz v4, :cond_1a

    .line 605
    .line 606
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    if-nez v4, :cond_1a

    .line 611
    .line 612
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    sget-object v8, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 617
    .line 618
    const-string v9, "Current envelope doesn\'t exist."

    .line 619
    .line 620
    const/4 v10, 0x0

    .line 621
    new-array v11, v10, [Ljava/lang/Object;

    .line 622
    .line 623
    invoke-interface {v4, v8, v9, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    :cond_1a
    const-class v4, Lio/sentry/hints/AbnormalExit;

    .line 627
    .line 628
    const-string v8, "sentry:typeCheckHint"

    .line 629
    .line 630
    invoke-virtual {v3, v8}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    invoke-virtual {v4, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    const-class v9, Lio/sentry/Session;

    .line 639
    .line 640
    sget-object v10, Lio/sentry/cache/CacheStrategy;->n:Ljava/nio/charset/Charset;

    .line 641
    .line 642
    if-nez v4, :cond_1c

    .line 643
    .line 644
    const-class v4, Lio/sentry/hints/NativeCrashExit;

    .line 645
    .line 646
    invoke-virtual {v3, v8}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v11

    .line 650
    invoke-virtual {v4, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v4

    .line 654
    if-eqz v4, :cond_1b

    .line 655
    .line 656
    goto :goto_15

    .line 657
    :cond_1b
    :goto_14
    const/4 v15, 0x1

    .line 658
    goto/16 :goto_1e

    .line 659
    .line 660
    :cond_1c
    :goto_15
    invoke-virtual {v3, v8}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    new-instance v11, Ljava/io/File;

    .line 669
    .line 670
    invoke-direct {v11, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-eqz v0, :cond_25

    .line 678
    .line 679
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 684
    .line 685
    const-string v12, "Previous session is not ended, we\'d need to end it."

    .line 686
    .line 687
    const/4 v13, 0x0

    .line 688
    new-array v14, v13, [Ljava/lang/Object;

    .line 689
    .line 690
    invoke-interface {v0, v7, v12, v14}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    :try_start_7
    new-instance v12, Ljava/io/BufferedReader;

    .line 694
    .line 695
    new-instance v0, Ljava/io/InputStreamReader;

    .line 696
    .line 697
    new-instance v13, Ljava/io/FileInputStream;

    .line 698
    .line 699
    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 700
    .line 701
    .line 702
    invoke-direct {v0, v13, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 703
    .line 704
    .line 705
    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 706
    .line 707
    .line 708
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    check-cast v0, Lio/sentry/ISerializer;

    .line 713
    .line 714
    invoke-interface {v0, v12, v9}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    check-cast v0, Lio/sentry/Session;

    .line 719
    .line 720
    if-eqz v0, :cond_24

    .line 721
    .line 722
    instance-of v13, v4, Lio/sentry/hints/AbnormalExit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 723
    .line 724
    if-eqz v13, :cond_20

    .line 725
    .line 726
    :try_start_9
    check-cast v4, Lio/sentry/hints/AbnormalExit;

    .line 727
    .line 728
    invoke-interface {v4}, Lio/sentry/hints/AbnormalExit;->b()Ljava/lang/Long;

    .line 729
    .line 730
    .line 731
    move-result-object v13

    .line 732
    if-eqz v13, :cond_1e

    .line 733
    .line 734
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 735
    .line 736
    .line 737
    move-result-wide v13

    .line 738
    invoke-static {v13, v14}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 739
    .line 740
    .line 741
    move-result-object v13

    .line 742
    invoke-virtual {v0}, Lio/sentry/Session;->c()Ljava/util/Date;

    .line 743
    .line 744
    .line 745
    move-result-object v14

    .line 746
    if-eqz v14, :cond_1d

    .line 747
    .line 748
    invoke-virtual {v13, v14}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 749
    .line 750
    .line 751
    move-result v14

    .line 752
    if-eqz v14, :cond_1f

    .line 753
    .line 754
    goto :goto_16

    .line 755
    :catchall_3
    move-exception v0

    .line 756
    move-object v4, v0

    .line 757
    const/4 v15, 0x1

    .line 758
    goto/16 :goto_1b

    .line 759
    .line 760
    :cond_1d
    :goto_16
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    const-string v4, "Abnormal exit happened before previous session start, not ending the session."

    .line 765
    .line 766
    const/4 v13, 0x0

    .line 767
    new-array v11, v13, [Ljava/lang/Object;

    .line 768
    .line 769
    invoke-interface {v0, v7, v4, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 770
    .line 771
    .line 772
    :try_start_a
    invoke-virtual {v12}, Ljava/io/Reader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 773
    .line 774
    .line 775
    goto :goto_14

    .line 776
    :catchall_4
    move-exception v0

    .line 777
    const/4 v15, 0x1

    .line 778
    goto/16 :goto_1d

    .line 779
    .line 780
    :cond_1e
    const/4 v13, 0x0

    .line 781
    :cond_1f
    :try_start_b
    invoke-interface {v4}, Lio/sentry/hints/AbnormalExit;->f()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v4

    .line 785
    sget-object v7, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    .line 786
    .line 787
    const/4 v14, 0x0

    .line 788
    const/4 v15, 0x1

    .line 789
    invoke-virtual {v0, v7, v14, v15, v4}, Lio/sentry/Session;->d(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 790
    .line 791
    .line 792
    const/4 v15, 0x1

    .line 793
    goto :goto_1a

    .line 794
    :cond_20
    :try_start_c
    instance-of v13, v4, Lio/sentry/hints/NativeCrashExit;

    .line 795
    .line 796
    if-eqz v13, :cond_23

    .line 797
    .line 798
    check-cast v4, Lio/sentry/hints/NativeCrashExit;

    .line 799
    .line 800
    check-cast v4, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;

    .line 801
    .line 802
    iget-wide v13, v4, Lio/sentry/android/core/TombstoneIntegration$TombstoneHint;->d:J

    .line 803
    .line 804
    invoke-static {v13, v14}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    invoke-virtual {v0}, Lio/sentry/Session;->c()Ljava/util/Date;

    .line 809
    .line 810
    .line 811
    move-result-object v13

    .line 812
    if-eqz v13, :cond_21

    .line 813
    .line 814
    invoke-virtual {v4, v13}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 815
    .line 816
    .line 817
    move-result v13

    .line 818
    if-eqz v13, :cond_22

    .line 819
    .line 820
    :cond_21
    const/4 v15, 0x1

    .line 821
    goto :goto_18

    .line 822
    :cond_22
    sget-object v7, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 823
    .line 824
    const/4 v14, 0x0

    .line 825
    const/4 v15, 0x1

    .line 826
    :try_start_d
    invoke-virtual {v0, v7, v14, v15, v14}, Lio/sentry/Session;->d(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 827
    .line 828
    .line 829
    move-object v13, v4

    .line 830
    goto :goto_1a

    .line 831
    :catchall_5
    move-exception v0

    .line 832
    :goto_17
    move-object v4, v0

    .line 833
    goto :goto_1b

    .line 834
    :catchall_6
    move-exception v0

    .line 835
    const/4 v15, 0x1

    .line 836
    goto :goto_17

    .line 837
    :goto_18
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    const-string v4, "Native crash exit happened before previous session start, not ending the session."

    .line 842
    .line 843
    const/4 v13, 0x0

    .line 844
    new-array v11, v13, [Ljava/lang/Object;

    .line 845
    .line 846
    invoke-interface {v0, v7, v4, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 847
    .line 848
    .line 849
    :goto_19
    :try_start_e
    invoke-virtual {v12}, Ljava/io/Reader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 850
    .line 851
    .line 852
    goto :goto_1e

    .line 853
    :catchall_7
    move-exception v0

    .line 854
    goto :goto_1d

    .line 855
    :cond_23
    const/4 v14, 0x0

    .line 856
    const/4 v15, 0x1

    .line 857
    move-object v13, v14

    .line 858
    :goto_1a
    :try_start_f
    invoke-virtual {v0, v13}, Lio/sentry/Session;->b(Ljava/util/Date;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v1, v11, v0}, Lio/sentry/cache/EnvelopeCache;->i(Ljava/io/File;Lio/sentry/Session;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 862
    .line 863
    .line 864
    goto :goto_19

    .line 865
    :cond_24
    const/4 v15, 0x1

    .line 866
    goto :goto_19

    .line 867
    :goto_1b
    :try_start_10
    invoke-virtual {v12}, Ljava/io/Reader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 868
    .line 869
    .line 870
    goto :goto_1c

    .line 871
    :catchall_8
    move-exception v0

    .line 872
    :try_start_11
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 873
    .line 874
    .line 875
    :goto_1c
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 876
    :goto_1d
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 881
    .line 882
    const-string v11, "Error processing previous session."

    .line 883
    .line 884
    invoke-interface {v4, v7, v11, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    .line 886
    .line 887
    goto :goto_1e

    .line 888
    :cond_25
    const/4 v15, 0x1

    .line 889
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 894
    .line 895
    const-string v7, "No previous session file to end."

    .line 896
    .line 897
    const/4 v13, 0x0

    .line 898
    new-array v11, v13, [Ljava/lang/Object;

    .line 899
    .line 900
    invoke-interface {v0, v4, v7, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    .line 902
    .line 903
    :goto_1e
    const-class v0, Lio/sentry/hints/SessionStart;

    .line 904
    .line 905
    invoke-virtual {v3, v8}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v0

    .line 913
    const-string v4, "last_crash"

    .line 914
    .line 915
    if-eqz v0, :cond_2b

    .line 916
    .line 917
    invoke-virtual {v1, v5, v6}, Lio/sentry/cache/EnvelopeCache;->f(Ljava/io/File;Ljava/io/File;)V

    .line 918
    .line 919
    .line 920
    iget-object v0, v2, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 921
    .line 922
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 923
    .line 924
    .line 925
    move-result-object v6

    .line 926
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 927
    .line 928
    .line 929
    move-result v6

    .line 930
    if-eqz v6, :cond_28

    .line 931
    .line 932
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    check-cast v0, Lio/sentry/SentryEnvelopeItem;

    .line 941
    .line 942
    sget-object v6, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 943
    .line 944
    iget-object v7, v0, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 945
    .line 946
    iget-object v7, v7, Lio/sentry/SentryEnvelopeItemHeader;->n:Lio/sentry/SentryItemType;

    .line 947
    .line 948
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v6

    .line 952
    if-eqz v6, :cond_27

    .line 953
    .line 954
    :try_start_12
    new-instance v6, Ljava/io/BufferedReader;

    .line 955
    .line 956
    new-instance v11, Ljava/io/InputStreamReader;

    .line 957
    .line 958
    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 959
    .line 960
    invoke-virtual {v0}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 965
    .line 966
    .line 967
    invoke-direct {v11, v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 968
    .line 969
    .line 970
    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 971
    .line 972
    .line 973
    :try_start_13
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    check-cast v0, Lio/sentry/ISerializer;

    .line 978
    .line 979
    invoke-interface {v0, v6, v9}, Lio/sentry/ISerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    check-cast v0, Lio/sentry/Session;

    .line 984
    .line 985
    if-nez v0, :cond_26

    .line 986
    .line 987
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 992
    .line 993
    const-string v9, "Item of type %s returned null by the parser."

    .line 994
    .line 995
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    invoke-interface {v0, v5, v9, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    .line 1001
    .line 1002
    goto :goto_1f

    .line 1003
    :catchall_9
    move-exception v0

    .line 1004
    move-object v5, v0

    .line 1005
    goto :goto_20

    .line 1006
    :cond_26
    invoke-virtual {v1, v5, v0}, Lio/sentry/cache/EnvelopeCache;->i(Ljava/io/File;Lio/sentry/Session;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1007
    .line 1008
    .line 1009
    :goto_1f
    :try_start_14
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 1010
    .line 1011
    .line 1012
    goto :goto_23

    .line 1013
    :catchall_a
    move-exception v0

    .line 1014
    goto :goto_22

    .line 1015
    :goto_20
    :try_start_15
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 1016
    .line 1017
    .line 1018
    goto :goto_21

    .line 1019
    :catchall_b
    move-exception v0

    .line 1020
    :try_start_16
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1021
    .line 1022
    .line 1023
    :goto_21
    throw v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 1024
    :goto_22
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v5

    .line 1028
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1029
    .line 1030
    const-string v7, "Item failed to process."

    .line 1031
    .line 1032
    invoke-interface {v5, v6, v7, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1033
    .line 1034
    .line 1035
    goto :goto_23

    .line 1036
    :cond_27
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1041
    .line 1042
    const-string v6, "Current envelope has a different envelope type %s"

    .line 1043
    .line 1044
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v7

    .line 1048
    invoke-interface {v0, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    .line 1050
    .line 1051
    goto :goto_23

    .line 1052
    :cond_28
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v0

    .line 1056
    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1057
    .line 1058
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v5

    .line 1062
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v5

    .line 1066
    const-string v7, "Current envelope %s is empty"

    .line 1067
    .line 1068
    invoke-interface {v0, v6, v7, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    .line 1070
    .line 1071
    :goto_23
    new-instance v0, Ljava/io/File;

    .line 1072
    .line 1073
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v5

    .line 1077
    const-string v6, ".sentry-native/last_crash"

    .line 1078
    .line 1079
    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v0

    .line 1086
    if-nez v0, :cond_29

    .line 1087
    .line 1088
    new-instance v0, Ljava/io/File;

    .line 1089
    .line 1090
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1098
    .line 1099
    .line 1100
    move-result v5

    .line 1101
    if-eqz v5, :cond_29

    .line 1102
    .line 1103
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v5

    .line 1107
    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1108
    .line 1109
    const-string v7, "Crash marker file exists, crashedLastRun will return true."

    .line 1110
    .line 1111
    const/4 v13, 0x0

    .line 1112
    new-array v9, v13, [Ljava/lang/Object;

    .line 1113
    .line 1114
    invoke-interface {v5, v6, v7, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v5

    .line 1121
    if-nez v5, :cond_2a

    .line 1122
    .line 1123
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v5

    .line 1127
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1128
    .line 1129
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    const-string v7, "Failed to delete the crash marker file. %s."

    .line 1138
    .line 1139
    invoke-interface {v5, v6, v7, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_24

    .line 1143
    :cond_29
    const/4 v13, 0x0

    .line 1144
    :cond_2a
    :goto_24
    sget-object v0, Lio/sentry/SentryCrashLastRunState;->c:Lio/sentry/SentryCrashLastRunState;

    .line 1145
    .line 1146
    invoke-virtual {v0}, Lio/sentry/SentryCrashLastRunState;->a()V

    .line 1147
    .line 1148
    .line 1149
    iget-object v0, v1, Lio/sentry/cache/EnvelopeCache;->o:Ljava/util/concurrent/CountDownLatch;

    .line 1150
    .line 1151
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1152
    .line 1153
    .line 1154
    goto :goto_25

    .line 1155
    :cond_2b
    const/4 v13, 0x0

    .line 1156
    :goto_25
    invoke-virtual/range {p0 .. p1}, Lio/sentry/cache/EnvelopeCache;->e(Lio/sentry/SentryEnvelope;)Ljava/io/File;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    if-eqz v0, :cond_2c

    .line 1165
    .line 1166
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 1171
    .line 1172
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    const-string v3, "Not adding Envelope to offline storage because it already exists: %s"

    .line 1181
    .line 1182
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    .line 1184
    .line 1185
    move v9, v15

    .line 1186
    goto/16 :goto_2c

    .line 1187
    .line 1188
    :cond_2c
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v0

    .line 1192
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1193
    .line 1194
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v6

    .line 1198
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v6

    .line 1202
    const-string v7, "Adding Envelope to offline storage: %s"

    .line 1203
    .line 1204
    invoke-interface {v0, v5, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v0

    .line 1211
    if-eqz v0, :cond_2d

    .line 1212
    .line 1213
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v6

    .line 1221
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v6

    .line 1225
    const-string v7, "Overwriting envelope to offline storage: %s"

    .line 1226
    .line 1227
    invoke-interface {v0, v5, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1231
    .line 1232
    .line 1233
    move-result v0

    .line 1234
    if-nez v0, :cond_2d

    .line 1235
    .line 1236
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v0

    .line 1240
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1241
    .line 1242
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v6

    .line 1246
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v6

    .line 1250
    const-string v7, "Failed to delete: %s"

    .line 1251
    .line 1252
    invoke-interface {v0, v5, v7, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    .line 1254
    .line 1255
    :cond_2d
    :try_start_17
    new-instance v5, Ljava/io/FileOutputStream;

    .line 1256
    .line 1257
    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 1258
    .line 1259
    .line 1260
    :try_start_18
    invoke-virtual/range {v18 .. v18}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    check-cast v0, Lio/sentry/ISerializer;

    .line 1265
    .line 1266
    invoke-interface {v0, v2, v5}, Lio/sentry/ISerializer;->b(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 1267
    .line 1268
    .line 1269
    :try_start_19
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1270
    .line 1271
    .line 1272
    move v7, v15

    .line 1273
    goto :goto_28

    .line 1274
    :catchall_c
    move-exception v0

    .line 1275
    goto :goto_27

    .line 1276
    :catchall_d
    move-exception v0

    .line 1277
    move-object v2, v0

    .line 1278
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    .line 1279
    .line 1280
    .line 1281
    goto :goto_26

    .line 1282
    :catchall_e
    move-exception v0

    .line 1283
    :try_start_1b
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1284
    .line 1285
    .line 1286
    :goto_26
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 1287
    :goto_27
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1292
    .line 1293
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v1

    .line 1297
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    const-string v6, "Error writing Envelope %s to offline storage"

    .line 1302
    .line 1303
    invoke-interface {v2, v5, v0, v6, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    .line 1305
    .line 1306
    move v7, v13

    .line 1307
    :goto_28
    const-class v0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    .line 1308
    .line 1309
    invoke-virtual {v3, v8}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v1

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v0

    .line 1317
    if-eqz v0, :cond_2e

    .line 1318
    .line 1319
    new-instance v0, Ljava/io/File;

    .line 1320
    .line 1321
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v1

    .line 1325
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    :try_start_1c
    new-instance v1, Ljava/io/FileOutputStream;

    .line 1329
    .line 1330
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 1331
    .line 1332
    .line 1333
    :try_start_1d
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    invoke-static {v0}, Lio/sentry/DateUtils;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    .line 1349
    .line 1350
    .line 1351
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 1352
    .line 1353
    .line 1354
    goto :goto_2b

    .line 1355
    :catchall_f
    move-exception v0

    .line 1356
    goto :goto_2a

    .line 1357
    :catchall_10
    move-exception v0

    .line 1358
    move-object v2, v0

    .line 1359
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    .line 1360
    .line 1361
    .line 1362
    goto :goto_29

    .line 1363
    :catchall_11
    move-exception v0

    .line 1364
    :try_start_20
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1365
    .line 1366
    .line 1367
    :goto_29
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 1368
    :goto_2a
    invoke-virtual/range {v21 .. v21}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v1

    .line 1372
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1373
    .line 1374
    const-string v3, "Error writing the crash marker file to the disk"

    .line 1375
    .line 1376
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1377
    .line 1378
    .line 1379
    :cond_2e
    :goto_2b
    move v9, v7

    .line 1380
    :goto_2c
    return v9
.end method
