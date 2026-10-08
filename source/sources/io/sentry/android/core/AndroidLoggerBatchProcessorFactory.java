package io.sentry.android.core;

import io.sentry.SentryClient;
import io.sentry.SentryOptions;
import io.sentry.logger.ILoggerBatchProcessor;
import io.sentry.logger.ILoggerBatchProcessorFactory;
import io.sentry.logger.LoggerBatchProcessor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidLoggerBatchProcessorFactory implements ILoggerBatchProcessorFactory {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [io.sentry.logger.ILoggerBatchProcessor, io.sentry.logger.LoggerBatchProcessor, io.sentry.android.core.AppState$AppStateListener] */
    @Override // io.sentry.logger.ILoggerBatchProcessorFactory
    public final ILoggerBatchProcessor a(SentryOptions sentryOptions, SentryClient sentryClient) {
        ?? loggerBatchProcessor = new LoggerBatchProcessor(sentryOptions, sentryClient);
        AppState.n.a(loggerBatchProcessor);
        return loggerBatchProcessor;
    }
}
