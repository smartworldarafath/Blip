.class Lio/sentry/SentryTracer$2;
.super Ljava/util/TimerTask;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic j:Lio/sentry/SentryTracer;


# direct methods
.method public constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/SentryTracer$2;->j:Lio/sentry/SentryTracer;

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
    .locals 4

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer$2;->j:Lio/sentry/SentryTracer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->a()Lio/sentry/SpanStatus;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 13
    .line 14
    iget-object v1, v1, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v1, v2

    .line 22
    :goto_1
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, v3}, Lio/sentry/SentryTracer;->e(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lio/sentry/SentryTracer;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
