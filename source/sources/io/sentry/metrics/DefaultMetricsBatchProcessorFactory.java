package io.sentry.metrics;

import io.sentry.SentryClient;
import io.sentry.SentryOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultMetricsBatchProcessorFactory implements IMetricsBatchProcessorFactory {
    @Override // io.sentry.metrics.IMetricsBatchProcessorFactory
    public final IMetricsBatchProcessor a(SentryOptions sentryOptions, SentryClient sentryClient) {
        return new MetricsBatchProcessor(sentryOptions, sentryClient);
    }
}
