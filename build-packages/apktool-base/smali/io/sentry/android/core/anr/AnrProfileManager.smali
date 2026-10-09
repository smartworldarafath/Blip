.class public Lio/sentry/android/core/anr/AnrProfileManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final j:Lio/sentry/cache/tape/ObjectQueue;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x78

    .line 9
    .line 10
    :try_start_0
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Builder;

    .line 11
    .line 12
    invoke-direct {v1, p2}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    iput v0, v1, Lio/sentry/cache/tape/QueueFile$Builder;->b:I

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/sentry/cache/tape/QueueFile$Builder;->a()Lio/sentry/cache/tape/QueueFile;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Builder;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    iput v0, v1, Lio/sentry/cache/tape/QueueFile$Builder;->b:I

    .line 34
    .line 35
    invoke-virtual {v1}, Lio/sentry/cache/tape/QueueFile$Builder;->a()Lio/sentry/cache/tape/QueueFile;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception p2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v0, "Could not delete file"

    .line 45
    .line 46
    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_0
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 51
    .line 52
    const-string v1, "Failed to create stacktrace queue"

    .line 53
    .line 54
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    :goto_1
    if-nez p1, :cond_1

    .line 59
    .line 60
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->P()Lio/sentry/cache/tape/ObjectQueue;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lio/sentry/android/core/anr/AnrProfileManager;->j:Lio/sentry/cache/tape/ObjectQueue;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    new-instance p2, Lio/sentry/android/core/anr/AnrProfileManager$1;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Lio/sentry/cache/tape/ObjectQueue;->O(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)Lio/sentry/cache/tape/ObjectQueue;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lio/sentry/android/core/anr/AnrProfileManager;->j:Lio/sentry/cache/tape/ObjectQueue;

    .line 77
    .line 78
    :goto_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/anr/AnrProfileManager;->j:Lio/sentry/cache/tape/ObjectQueue;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
