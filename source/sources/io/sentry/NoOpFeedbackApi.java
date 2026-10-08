package io.sentry;

import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpFeedbackApi implements IFeedbackApi {
    public static final NoOpFeedbackApi a = new Object();

    @Override // io.sentry.IFeedbackApi
    public final SentryId a(Feedback feedback) {
        return SentryId.k;
    }

    @Override // io.sentry.IFeedbackApi
    public final SentryId b(Feedback feedback) {
        return SentryId.k;
    }

    @Override // io.sentry.IFeedbackApi
    public final SentryId c(Feedback feedback) {
        return SentryId.k;
    }
}
