.class public final synthetic Lio/sentry/o;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/SpanFinishedCallback;
.implements Lio/sentry/util/LazyEvaluator$Evaluator;


# instance fields
.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/o;->j:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lio/sentry/Span;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/o;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lio/sentry/SentryTracer;

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/SentryTracer;->q:Lio/sentry/CompositePerformanceCollector;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/sentry/CompositePerformanceCollector;->b(Lio/sentry/Span;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lio/sentry/SentryTracer;->f:Lio/sentry/SentryTracer$FinishStatus;

    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 15
    .line 16
    iget-object v1, v0, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-boolean p1, v0, Lio/sentry/TransactionOptions;->f:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lio/sentry/Span;

    .line 41
    .line 42
    iget-boolean v1, v0, Lio/sentry/Span;->f:Z

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget-object v0, v0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->p()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-boolean v0, p1, Lio/sentry/SentryTracer$FinishStatus;->a:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object p1, p1, Lio/sentry/SentryTracer$FinishStatus;->b:Lio/sentry/SpanStatus;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/o;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    sget-object v0, Lio/sentry/SpanId;->k:Lio/sentry/SpanId;

    .line 6
    .line 7
    return-object p0
.end method
