.class public final synthetic Lio/sentry/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/g;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/g;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lio/sentry/g;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lio/sentry/g;->k:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lio/sentry/SentryExecutorService;

    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 12
    .line 13
    const/16 v2, 0x28

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, Lio/sentry/SentryExecutorService;->c:Lr;

    .line 18
    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v4, 0x16d

    .line 22
    .line 23
    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-void

    .line 38
    :pswitch_0
    check-cast p0, Ljava/io/File;

    .line 39
    .line 40
    sget-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    array-length v0, p0

    .line 50
    :goto_1
    if-ge v1, v0, :cond_3

    .line 51
    .line 52
    aget-object v2, p0, v1

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    sget-wide v5, Lio/sentry/Sentry;->f:J

    .line 59
    .line 60
    const-wide/32 v7, 0x493e0

    .line 61
    .line 62
    .line 63
    sub-long/2addr v5, v7

    .line 64
    cmp-long v3, v3, v5

    .line 65
    .line 66
    if-gez v3, :cond_2

    .line 67
    .line 68
    invoke-static {v2}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_2
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
