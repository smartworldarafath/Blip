.class public final Lio/sentry/metrics/DefaultMetricsBatchProcessorFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/metrics/IMetricsBatchProcessorFactory;


# virtual methods
.method public final a(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/metrics/IMetricsBatchProcessor;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/metrics/MetricsBatchProcessor;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/sentry/metrics/MetricsBatchProcessor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
