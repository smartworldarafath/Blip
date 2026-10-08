package io.sentry.android.core;

import io.sentry.SentryClient;
import io.sentry.SentryOptions;
import io.sentry.metrics.IMetricsBatchProcessor;
import io.sentry.metrics.IMetricsBatchProcessorFactory;
import io.sentry.metrics.MetricsBatchProcessor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidMetricsBatchProcessorFactory implements IMetricsBatchProcessorFactory {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [io.sentry.metrics.MetricsBatchProcessor, io.sentry.android.core.AppState$AppStateListener, io.sentry.metrics.IMetricsBatchProcessor] */
    @Override // io.sentry.metrics.IMetricsBatchProcessorFactory
    public final IMetricsBatchProcessor a(SentryOptions sentryOptions, SentryClient sentryClient) {
        ?? metricsBatchProcessor = new MetricsBatchProcessor(sentryOptions, sentryClient);
        AppState.n.a(metricsBatchProcessor);
        return metricsBatchProcessor;
    }
}
