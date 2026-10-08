.class public final synthetic Lio/sentry/h;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Scope$IWithSession;
.implements Lio/sentry/SpanFinishedCallback;


# instance fields
.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/h;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/h;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/h;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/Session;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/h;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/SentryClient;

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/h;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/sentry/SentryEvent;

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/h;->l:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lio/sentry/Hint;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_6

    .line 15
    .line 16
    invoke-virtual {v1}, Lio/sentry/SentryEvent;->f()Lio/sentry/protocol/SentryException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v3

    .line 27
    :goto_0
    sget-object v4, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 28
    .line 29
    if-eq v4, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lio/sentry/SentryEvent;->g()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    :cond_1
    const/4 v2, 0x1

    .line 38
    :cond_2
    iget-object v4, v1, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    iget-object v4, v4, Lio/sentry/protocol/Request;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    const-string v5, "user-agent"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    iget-object v1, v1, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 55
    .line 56
    iget-object v1, v1, Lio/sentry/protocol/Request;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object v1, v3

    .line 66
    :goto_1
    const-string v4, "sentry:typeCheckHint"

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    instance-of v4, p0, Lio/sentry/hints/AbnormalExit;

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    check-cast p0, Lio/sentry/hints/AbnormalExit;

    .line 77
    .line 78
    invoke-interface {p0}, Lio/sentry/hints/AbnormalExit;->f()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget-object v0, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p1, v0, v1, v2, v3}, Lio/sentry/Session;->d(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    iget-object p0, p1, Lio/sentry/Session;->p:Lio/sentry/Session$State;

    .line 91
    .line 92
    sget-object v0, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 93
    .line 94
    if-eq p0, v0, :cond_5

    .line 95
    .line 96
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Lio/sentry/Session;->b(Ljava/util/Date;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void

    .line 104
    :cond_6
    iget-object p0, v0, Lio/sentry/SentryClient;->b:Lio/sentry/SentryOptions;

    .line 105
    .line 106
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 111
    .line 112
    const-string v0, "Session is null on scope.withSession"

    .line 113
    .line 114
    new-array v1, v2, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public b(Lio/sentry/Span;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/h;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/SentryTracer;

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/h;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/sentry/SpanFinishedCallback;

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/h;->l:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p1}, Lio/sentry/SpanFinishedCallback;->b(Lio/sentry/Span;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, v0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 19
    .line 20
    iget-object p1, p1, Lio/sentry/TransactionOptions;->i:Lio/sentry/android/core/f;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lio/sentry/android/core/f;->b(Lio/sentry/ITransaction;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, v0, Lio/sentry/SentryTracer;->q:Lio/sentry/CompositePerformanceCollector;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1, v0}, Lio/sentry/CompositePerformanceCollector;->f(Lio/sentry/ITransaction;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method
