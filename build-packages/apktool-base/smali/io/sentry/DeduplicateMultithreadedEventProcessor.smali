.class public final Lio/sentry/DeduplicateMultithreadedEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field public final j:Ljava/util/Map;

.field public final k:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->j:Ljava/util/Map;

    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->k:Lio/sentry/SentryOptions;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 4

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->f()Lio/sentry/protocol/SentryException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v0, Lio/sentry/protocol/SentryException;->j:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, v0, Lio/sentry/protocol/SentryException;->m:Ljava/lang/Long;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :goto_0
    return-object p1

    .line 33
    :cond_3
    iget-object v2, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->j:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Long;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    iget-object p0, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->k:Lio/sentry/SentryOptions;

    .line 50
    .line 51
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 56
    .line 57
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 58
    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "Event %s has been dropped due to multi-threaded deduplication"

    .line 64
    .line 65
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    .line 69
    .line 70
    const-string p1, "sentry:eventDropReason"

    .line 71
    .line 72
    invoke-virtual {p2, p0, p1}, Lio/sentry/Hint;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :cond_4
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-object p1
.end method
