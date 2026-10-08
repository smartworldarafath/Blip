package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IClientReportRecorder {
    void a(DiscardReason discardReason, DataCategory dataCategory);

    void b(DiscardReason discardReason, SentryEnvelope sentryEnvelope);

    void c(DiscardReason discardReason, DataCategory dataCategory, long j);

    SentryEnvelope d(SentryEnvelope sentryEnvelope);

    void e(DiscardReason discardReason, SentryEnvelopeItem sentryEnvelopeItem);
}
