.class public final synthetic Lio/sentry/cache/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/cache/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/cache/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lio/sentry/cache/a;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/cache/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lio/sentry/cache/PersistingScopeObserver;

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 11
    .line 12
    const-string v1, ".scope-cache"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lio/sentry/cache/CacheUtils;->b(Lio/sentry/SentryOptions;Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v2, "Cache dir is not set, cannot store in scope cache"

    .line 30
    .line 31
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->P()Lio/sentry/cache/tape/ObjectQueue;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    const-string v3, "breadcrumbs.json"

    .line 42
    .line 43
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Builder;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, v1, Lio/sentry/cache/tape/QueueFile$Builder;->b:I

    .line 56
    .line 57
    invoke-virtual {v1}, Lio/sentry/cache/tape/QueueFile$Builder;->a()Lio/sentry/cache/tape/QueueFile;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Lio/sentry/cache/tape/QueueFile$Builder;

    .line 66
    .line 67
    invoke-direct {v1, v2}, Lio/sentry/cache/tape/QueueFile$Builder;-><init>(Ljava/io/File;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, v1, Lio/sentry/cache/tape/QueueFile$Builder;->b:I

    .line 75
    .line 76
    invoke-virtual {v1}, Lio/sentry/cache/tape/QueueFile$Builder;->a()Lio/sentry/cache/tape/QueueFile;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :goto_0
    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$1;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lio/sentry/cache/PersistingScopeObserver$1;-><init>(Lio/sentry/cache/PersistingScopeObserver;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1}, Lio/sentry/cache/tape/ObjectQueue;->O(Lio/sentry/cache/tape/QueueFile;Lio/sentry/cache/tape/ObjectQueue$Converter;)Lio/sentry/cache/tape/ObjectQueue;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception p0

    .line 91
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 96
    .line 97
    const-string v2, "Failed to create breadcrumbs queue"

    .line 98
    .line 99
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lio/sentry/cache/tape/ObjectQueue;->P()Lio/sentry/cache/tape/ObjectQueue;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :goto_1
    return-object p0

    .line 107
    :pswitch_0
    check-cast p0, Lio/sentry/cache/CacheStrategy;

    .line 108
    .line 109
    iget-object p0, p0, Lio/sentry/cache/CacheStrategy;->j:Lio/sentry/SentryOptions;

    .line 110
    .line 111
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
