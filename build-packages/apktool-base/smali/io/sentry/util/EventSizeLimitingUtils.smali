.class public abstract Lio/sentry/util/EventSizeLimitingUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lio/sentry/util/JsonSerializationUtils;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    :try_start_0
    new-instance v1, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;

    .line 12
    .line 13
    invoke-direct {v1}, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p0, v1}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 17
    .line 18
    .line 19
    iget-wide p0, v1, Lio/sentry/util/JsonSerializationUtils$ByteCountingWriter;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 24
    .line 25
    const-string v1, "Could not calculate size of serializable"

    .line 26
    .line 27
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 p0, 0x0

    .line 31
    .line 32
    :goto_0
    const-wide/32 v0, 0x100000

    .line 33
    .line 34
    .line 35
    cmp-long p0, p0, v0

    .line 36
    .line 37
    if-gtz p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_1
    return p0
.end method

.method public static b(Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/sentry/protocol/SentryException;

    .line 22
    .line 23
    iget-object v1, v1, Lio/sentry/protocol/SentryException;->n:Lio/sentry/protocol/SentryStackTrace;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v2, "Truncated exception stack frames of event %s"

    .line 28
    .line 29
    invoke-static {v1, p0, p1, v2}, Lio/sentry/util/EventSizeLimitingUtils;->c(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->e()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lio/sentry/protocol/SentryThread;

    .line 54
    .line 55
    iget-object v1, v1, Lio/sentry/protocol/SentryThread;->r:Lio/sentry/protocol/SentryStackTrace;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v2, "Truncated thread stack frames for event %s"

    .line 60
    .line 61
    invoke-static {v1, p0, p1, v2}, Lio/sentry/util/EventSizeLimitingUtils;->c(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    return-void
.end method

.method public static c(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/SentryEvent;Lio/sentry/SentryOptions;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->j:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x1f4

    .line 10
    .line 11
    if-le v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/16 v3, 0xfa

    .line 20
    .line 21
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v2, v3

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lio/sentry/protocol/SentryStackTrace;->j:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 51
    .line 52
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 53
    .line 54
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
