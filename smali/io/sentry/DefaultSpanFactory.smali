.class public final Lio/sentry/DefaultSpanFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ISpanFactory;


# virtual methods
.method public final a(Lio/sentry/TransactionContext;Lio/sentry/Scopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)Lio/sentry/ITransaction;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/SentryTracer;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/Scopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
