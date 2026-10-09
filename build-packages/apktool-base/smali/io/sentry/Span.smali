.class public final Lio/sentry/Span;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ISpan;


# instance fields
.field public final a:Lio/sentry/SentryDate;

.field public b:Lio/sentry/SentryDate;

.field public final c:Lio/sentry/SpanContext;

.field public final d:Lio/sentry/SentryTracer;

.field public final e:Lio/sentry/IScopes;

.field public f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lio/sentry/SpanOptions;

.field public i:Lio/sentry/SpanFinishedCallback;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lio/sentry/SentryTracer;Lio/sentry/Scopes;Lio/sentry/SpanContext;Lio/sentry/SpanOptions;Lio/sentry/o;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/Span;->f:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lio/sentry/Span;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/sentry/Span;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 29
    .line 30
    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 34
    .line 35
    iget-object v0, p4, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p3, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 38
    .line 39
    const-string p3, "transaction is required"

    .line 40
    .line 41
    invoke-static {p1, p3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lio/sentry/Span;->d:Lio/sentry/SentryTracer;

    .line 45
    .line 46
    const-string p1, "Scopes are required"

    .line 47
    .line 48
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lio/sentry/Span;->e:Lio/sentry/IScopes;

    .line 52
    .line 53
    iput-object p4, p0, Lio/sentry/Span;->h:Lio/sentry/SpanOptions;

    .line 54
    .line 55
    iput-object p5, p0, Lio/sentry/Span;->i:Lio/sentry/SpanFinishedCallback;

    .line 56
    .line 57
    iget-object p1, p4, Lio/sentry/SpanOptions;->a:Lio/sentry/SentryDate;

    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    iput-object p1, p0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-virtual {p2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/Scopes;Lio/sentry/TransactionOptions;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lio/sentry/Span;->f:Z

    .line 81
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/Span;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Span;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 85
    iput-object p1, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 86
    iget-object v0, p4, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 87
    iput-object v0, p1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lio/sentry/Span;->d:Lio/sentry/SentryTracer;

    .line 89
    iput-object p3, p0, Lio/sentry/Span;->e:Lio/sentry/IScopes;

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lio/sentry/Span;->i:Lio/sentry/SpanFinishedCallback;

    .line 91
    iget-object p1, p4, Lio/sentry/SpanOptions;->a:Lio/sentry/SentryDate;

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p3}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 94
    :goto_0
    iput-object p4, p0, Lio/sentry/Span;->h:Lio/sentry/SpanOptions;

    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/SpanStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 4
    .line 5
    return-object p0
.end method

.method public final c(Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 6

    .line 1
    new-instance v5, Lio/sentry/SpanOptions;

    .line 2
    .line 3
    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "activity.load"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lio/sentry/Span;->l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/Span;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public final f(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/Span;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/Span;->e:Lio/sentry/IScopes;

    .line 6
    .line 7
    invoke-interface {p0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const-string v0, "The span is already finished. Measurement %s cannot be set"

    .line 18
    .line 19
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Lio/sentry/protocol/MeasurementValue;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p1, v1}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lio/sentry/Span;->d:Lio/sentry/SentryTracer;

    .line 39
    .line 40
    iget-object v1, v0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 41
    .line 42
    if-eq v1, p0, :cond_1

    .line 43
    .line 44
    iget-object p0, v1, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Lio/sentry/SentryTracer;->f(Ljava/lang/Number;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final g(Lio/sentry/SpanStatus;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/Span;->e:Lio/sentry/IScopes;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lio/sentry/Span;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 2
    .line 3
    iget-object v0, v0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/Span;->g(Lio/sentry/SpanStatus;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 14

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v4, p5

    .line 4
    .line 5
    iget-boolean v1, p0, Lio/sentry/Span;->f:Z

    .line 6
    .line 7
    sget-object v2, Lio/sentry/NoOpSpan;->a:Lio/sentry/NoOpSpan;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 13
    .line 14
    iget-object v8, v1, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 15
    .line 16
    iget-object v1, p0, Lio/sentry/Span;->d:Lio/sentry/SentryTracer;

    .line 17
    .line 18
    iget-object p0, v1, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 19
    .line 20
    iget-object v3, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 21
    .line 22
    new-instance v5, Lio/sentry/SpanContext;

    .line 23
    .line 24
    iget-object v6, v3, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 25
    .line 26
    new-instance v7, Lio/sentry/SpanId;

    .line 27
    .line 28
    invoke-direct {v7}, Lio/sentry/SpanId;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v11, v3, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    const-string v13, "manual"

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    move-object v9, p1

    .line 38
    invoke-direct/range {v5 .. v13}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object/from16 p1, p2

    .line 42
    .line 43
    move-object v3, v5

    .line 44
    iput-object p1, v3, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, v3, Lio/sentry/SpanContext;->u:Lio/sentry/Instrumenter;

    .line 47
    .line 48
    move-object/from16 p1, p3

    .line 49
    .line 50
    iput-object p1, v4, Lio/sentry/SpanOptions;->a:Lio/sentry/SentryDate;

    .line 51
    .line 52
    iget-object p1, v1, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    iget-object v5, v1, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 55
    .line 56
    iget-boolean p0, p0, Lio/sentry/Span;->f:Z

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, v1, Lio/sentry/SentryTracer;->o:Lio/sentry/Instrumenter;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v5}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIgnoredSpanOrigins()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object v0, v4, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, p0}, Lio/sentry/util/SpanUtils;->a(Ljava/lang/String;Ljava/util/List;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    :goto_0
    return-object v2

    .line 87
    :cond_3
    iget-object p0, v3, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {v5}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getMaxSpans()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    iget-object v7, v3, Lio/sentry/SpanContext;->n:Ljava/lang/String;

    .line 102
    .line 103
    if-ge v0, v6, :cond_5

    .line 104
    .line 105
    const-string p0, "parentSpanId is required"

    .line 106
    .line 107
    iget-object v0, v3, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 108
    .line 109
    invoke-static {v0, p0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string p0, "operation is required"

    .line 113
    .line 114
    invoke-static {v7, p0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lio/sentry/SentryTracer;->w()V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lio/sentry/Span;

    .line 121
    .line 122
    iget-object v2, v1, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 123
    .line 124
    new-instance v5, Lio/sentry/o;

    .line 125
    .line 126
    invoke-direct {v5, v1}, Lio/sentry/o;-><init>(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v0 .. v5}, Lio/sentry/Span;-><init>(Lio/sentry/SentryTracer;Lio/sentry/Scopes;Lio/sentry/SpanContext;Lio/sentry/SpanOptions;Lio/sentry/o;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Lio/sentry/SentryTracer;->z(Lio/sentry/Span;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object p0, v1, Lio/sentry/SentryTracer;->q:Lio/sentry/CompositePerformanceCollector;

    .line 139
    .line 140
    if-eqz p0, :cond_4

    .line 141
    .line 142
    invoke-interface {p0, v0}, Lio/sentry/CompositePerformanceCollector;->d(Lio/sentry/Span;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    return-object v0

    .line 146
    :cond_5
    invoke-virtual {v5}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 155
    .line 156
    const-string v1, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 157
    .line 158
    filled-new-array {v7, p0}, [Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-object v2
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/Long;Lio/sentry/MeasurementUnit;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/Span;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/Span;->e:Lio/sentry/IScopes;

    .line 6
    .line 7
    invoke-interface {p0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const-string p3, "The span is already finished. Measurement %s cannot be set"

    .line 18
    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Lio/sentry/protocol/MeasurementValue;

    .line 28
    .line 29
    invoke-interface {p3}, Lio/sentry/MeasurementUnit;->apiName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, p2, v1}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lio/sentry/Span;->d:Lio/sentry/SentryTracer;

    .line 42
    .line 43
    iget-object v1, v0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 44
    .line 45
    if-eq v1, p0, :cond_1

    .line 46
    .line 47
    iget-object p0, v1, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/SentryTracer;->q(Ljava/lang/String;Ljava/lang/Long;Lio/sentry/MeasurementUnit;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final r()Lio/sentry/SpanContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/sentry/Span;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/Span;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 18
    .line 19
    iput-object p1, v0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 20
    .line 21
    iget-object p1, v0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lio/sentry/Span;->e:Lio/sentry/IScopes;

    .line 26
    .line 27
    invoke-interface {p2}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :cond_1
    iput-object p2, p0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 40
    .line 41
    iget-object p2, p0, Lio/sentry/Span;->h:Lio/sentry/SpanOptions;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p2, Lio/sentry/SpanOptions;->c:Z

    .line 47
    .line 48
    if-eqz v0, :cond_b

    .line 49
    .line 50
    iget-object v0, p0, Lio/sentry/Span;->d:Lio/sentry/SentryTracer;

    .line 51
    .line 52
    iget-object v1, v0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 53
    .line 54
    iget-object v0, v0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    iget-object v1, v1, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 57
    .line 58
    iget-object v1, v1, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lio/sentry/SpanId;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lio/sentry/Span;

    .line 87
    .line 88
    iget-object v4, v3, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 89
    .line 90
    iget-object v4, v4, Lio/sentry/SpanContext;->l:Lio/sentry/SpanId;

    .line 91
    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {v4, p1}, Lio/sentry/SpanId;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move-object v0, v1

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 v0, 0x0

    .line 110
    move-object v1, v0

    .line 111
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    const-wide/16 v4, 0x0

    .line 116
    .line 117
    if-eqz v3, :cond_9

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lio/sentry/Span;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget-object v6, v3, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 128
    .line 129
    invoke-virtual {v6, v0}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v6

    .line 133
    cmp-long v6, v6, v4

    .line 134
    .line 135
    if-gez v6, :cond_7

    .line 136
    .line 137
    :cond_6
    iget-object v0, v3, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 138
    .line 139
    :cond_7
    if-eqz v1, :cond_8

    .line 140
    .line 141
    iget-object v6, v3, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 142
    .line 143
    if-eqz v6, :cond_5

    .line 144
    .line 145
    invoke-virtual {v6, v1}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    cmp-long v4, v6, v4

    .line 150
    .line 151
    if-lez v4, :cond_5

    .line 152
    .line 153
    :cond_8
    iget-object v1, v3, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_9
    iget-boolean p1, p2, Lio/sentry/SpanOptions;->c:Z

    .line 157
    .line 158
    if-eqz p1, :cond_b

    .line 159
    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    iget-object p1, p0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 163
    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 167
    .line 168
    .line 169
    move-result-wide p1

    .line 170
    cmp-long p1, p1, v4

    .line 171
    .line 172
    if-lez p1, :cond_b

    .line 173
    .line 174
    :cond_a
    iget-object p1, p0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 175
    .line 176
    if-eqz p1, :cond_b

    .line 177
    .line 178
    iput-object v1, p0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 179
    .line 180
    :cond_b
    iget-object p1, p0, Lio/sentry/Span;->i:Lio/sentry/SpanFinishedCallback;

    .line 181
    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    invoke-interface {p1, p0}, Lio/sentry/SpanFinishedCallback;->b(Lio/sentry/Span;)V

    .line 185
    .line 186
    .line 187
    :cond_c
    iput-boolean v2, p0, Lio/sentry/Span;->f:Z

    .line 188
    .line 189
    :cond_d
    :goto_3
    return-void
.end method

.method public final u()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final v()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-object p0
.end method
