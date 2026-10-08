.class public final Lio/sentry/android/core/AndroidMetricsBatchProcessorFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/metrics/IMetricsBatchProcessorFactory;


# virtual methods
.method public final a(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)Lio/sentry/metrics/IMetricsBatchProcessor;
    .locals 0

    .line 1
    new-instance p0, Lio/sentry/android/core/AndroidMetricsBatchProcessor;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/sentry/metrics/MetricsBatchProcessor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/SentryClient;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lio/sentry/android/core/AppState;->a(Lio/sentry/android/core/AppState$AppStateListener;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
