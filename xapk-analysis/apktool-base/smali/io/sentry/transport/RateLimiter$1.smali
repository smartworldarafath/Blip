.class Lio/sentry/transport/RateLimiter$1;
.super Ljava/util/TimerTask;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic j:Lio/sentry/transport/RateLimiter;


# direct methods
.method public constructor <init>(Lio/sentry/transport/RateLimiter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/transport/RateLimiter$1;->j:Lio/sentry/transport/RateLimiter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/transport/RateLimiter$1;->j:Lio/sentry/transport/RateLimiter;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/transport/RateLimiter;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/sentry/transport/RateLimiter$IRateLimitObserver;

    .line 20
    .line 21
    invoke-interface {v1, p0}, Lio/sentry/transport/RateLimiter$IRateLimitObserver;->A(Lio/sentry/transport/RateLimiter;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
