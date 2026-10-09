package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpClientReportRecorder implements IClientReportRecorder {
    @Override // io.sentry.clientreport.IClientReportRecorder
    public final SentryEnvelope d(SentryEnvelope sentryEnvelope) {
        return sentryEnvelope;
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void a(DiscardReason discardReason, DataCategory dataCategory) {
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void b(DiscardReason discardReason, SentryEnvelope sentryEnvelope) {
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void e(DiscardReason discardReason, SentryEnvelopeItem sentryEnvelopeItem) {
    }

    @Override // io.sentry.clientreport.IClientReportRecorder
    public final void c(DiscardReason discardReason, DataCategory dataCategory, long j) {
    }
}
